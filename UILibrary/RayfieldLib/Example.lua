-- Local
local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/toquyen8928/FreeScript/main/UILibrary/OrionLib/OrionLib'))()
local Player = game:service'Players'.LocalPlayer;
local Window = Rayfield:CreateWindow({
	Name = "QuyenHub - 2.0.0",
	LoadingTitle = "Quyen Hub - Version 2.0.0",
	LoadingSubtitle = "Dev: toquyen8928",
	ConfigurationSaving = {
		Enabled = true,
		FolderName = QuyenHub,
		FileName = "QuyenHubCf"
	},
        Discord = {
        	Enabled = true,
        	Invite = "AQQFRkHQkW",
        	RememberJoins = false
        },
	KeySystem = true,
	KeySettings = {
		Title = "Quyen Hub",
		Subtitle = "Key System",
		Note = "Join discord.gg/toquyen8928 to get key",
		FileName = "QuyenHubKey",
		SaveKey = true,
		GrabKeyFromSite = true,
		Key = "https://pastebin.com/raw/4Rq3Mftu"
	}
    })
--Tab Create

	local Tab1 = Window:CreateTab("Combat")
	local Tab2= Window:CreateTab("Player")
	local Tab3 = Window:CreateTab("Visuals")
-- Function

	local Slider = Tab2:CreateSlider({
	Name = "Walk Speed",
	Range = {16, 300},
	Increment = 10,
	Suffix = "WalkSpeed",
	CurrentValue = 10,
	Flag = "WalkSpeed",
	Callback = function(Value)
		getgenv().WalkSpeedValue = Value;
		Player.Character.Humanoid.WalkSpeed = getgenv().WalkSpeedValue;
	end,
})

local Slider = Tab2:CreateSlider({
	Name = "Jump Power",
	Range = {50, 150},
	Increment = 10,
	Suffix = "JumpPower",
	CurrentValue = 10,
	Flag = "JumpPower",
	Callback = function(Value)
		getgenv().JumpPowerValue = Value;
		Player.Character.Humanoid.JumpPower = getgenv().JumpPowerValue;
	end,
})

local Toggle = Tab2:CreateToggle({
	Name = "Ifn Jump",
	CurrentValue = false,
	Flag = "Toggle1",
	Callback = function(Value)
			local g = getgenv()
			if g._swim then
	    		g._swim:Disconnect()
	    		g._swim = nil
			end
			local u = game:GetService("UserInputService")
			g._swim = u.InputBegan:Connect(function(input, gameProcessedEvent)
		    	if gameProcessedEvent then
		        	return
		    	end
	    	if input.KeyCode == Enum.KeyCode.Space then
	    		game.Players.LocalPlayer.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
	    	end
	    end)
	end,
})
Toggle:Set(false)

local Button = Tab3:CreateButton({
	Name = "Fps Boost",
	Callback = function()
		_G.Settings = {
    Players = {
        ["Ignore Me"] = true,
        ["Ignore Others"] = true
    },
    Meshes = {
        Destroy = false,
        LowDetail = true
    },
    Images = {
        Invisible = true,
        LowDetail = false,
        Destroy = false,
    },
    Other = {
        ["No Particles"] = true,
        ["No Camera Effects"] = true,
        ["No Explosions"] = true,
        ["No Clothes"] = true,
        ["Low Water Graphics"] = true,
        ["No Shadows"] = true,
        ["Low Rendering"] = true,
        ["Low Quality Parts"] = true
    }
}
loadstring(game:HttpGet("https://raw.githubusercontent.com/toquyen8928/FreeScript/main/TCQ%20Hub/FPS%20Boots"))()
	end,
})

Rayfield:LoadConfiguration()