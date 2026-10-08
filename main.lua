--========================================================--
-- ONE W v2
-- Based on ALFzxzzz HUB v0.3.7
-- One Window GUI + Custom Features
--========================================================--

getgenv().OW = getgenv().OW or {}
local W = getgenv()

--====================================================--
-- VARIABLE DEFAULTS
--====================================================--
OW.SelfHeal_Enabled     = OW.SelfHeal_Enabled or false
OW.SelfHeal_AutoAll     = OW.SelfHeal_AutoAll or false

OW.SwiftVault_Enabled   = OW.SwiftVault_Enabled or false
OW.SwiftVault_V2        = OW.SwiftVault_V2 or false
OW.SwiftVault_Speed     = OW.SwiftVault_Speed or 13

OW.PalletReflex_Enabled = OW.PalletReflex_Enabled or false
OW.PalletReflex_Dist    = OW.PalletReflex_Dist or 20

OW.FakePerks_Flowstate  = OW.FakePerks_Flowstate or false
OW.FakePerks_QuickRec   = OW.FakePerks_QuickRec or false
OW.FakePerks_PerfLand   = OW.FakePerks_PerfLand or false
OW.FakePerks_Adrenaline = OW.FakePerks_Adrenaline or false
OW.FakePerks_Cooldown   = OW.FakePerks_Cooldown or 5

OW.SkillCheck_Enabled   = OW.SkillCheck_Enabled or false
OW.SkillCheck_Mode      = OW.SkillCheck_Mode or "Legit"

OW.GenBypass_Enabled    = OW.GenBypass_Enabled or false
OW.GenBypass_Range      = OW.GenBypass_Range or 8

OW.UnlimitedVault       = OW.UnlimitedVault or false
OW.AntiSlowVault        = OW.AntiSlowVault or false

OW.AutoRun_PC           = OW.AutoRun_PC or false
OW.AutoRun_Mobile       = OW.AutoRun_Mobile or false

OW.ParryV1_Enabled      = OW.ParryV1_Enabled or false
OW.ParryV1_Aggressive   = OW.ParryV1_Aggressive or false
OW.ParryV1_Distance     = OW.ParryV1_Distance or 10
OW.ParryV1_ShowRange    = OW.ParryV1_ShowRange or false
OW.ParryV1_Silent       = OW.ParryV1_Silent or false

OW.ParryV2_Enabled      = OW.ParryV2_Enabled or false
OW.ParryV2_Aggressive   = OW.ParryV2_Aggressive or false
OW.ParryV2_Safety       = OW.ParryV2_Safety or false
OW.ParryV2_Distance     = OW.ParryV2_Distance or 6
OW.ParryV2_Face         = OW.ParryV2_Face or 0.7
OW.ParryV2_ShowCircle   = OW.ParryV2_ShowCircle or true
OW.ParryV2_Ignored      = OW.ParryV2_Ignored or {}

OW.MapPredict_Enabled   = OW.MapPredict_Enabled or false

OW.SelfUnhook_Enabled   = OW.SelfUnhook_Enabled or false
OW.SelfUnhook_Duration  = OW.SelfUnhook_Duration or 30
OW.SelfUnhook_Distance  = OW.SelfUnhook_Distance or 20

OW.TOF_Enabled          = OW.TOF_Enabled or false
OW.TOF_Key              = OW.TOF_Key or "Q"
OW.TOF_TargetMode       = OW.TOF_TargetMode or "Killer"
OW.TOF_Laser            = OW.TOF_Laser ~= false
OW.TOF_WallCheck        = OW.TOF_WallCheck ~= false
OW.TOF_BlockKnocked     = OW.TOF_BlockKnocked ~= false

OW.Flash_Enabled        = OW.Flash_Enabled or false
OW.Flash_TargetPart     = OW.Flash_TargetPart or "Head"
OW.Flash_Range          = OW.Flash_Range or 120
OW.Flash_Smooth         = OW.Flash_Smooth or 0.35

OW.GunAim_Enabled       = OW.GunAim_Enabled or false
OW.GunAim_TargetMode    = OW.GunAim_TargetMode or "Killer"
OW.GunAim_FOV           = OW.GunAim_FOV or 250
OW.GunAim_Smooth        = OW.GunAim_Smooth or 0.5
OW.GunAim_Predict       = OW.GunAim_Predict or 0.12

OW.Moonwalk_Enabled     = OW.Moonwalk_Enabled or false
OW.Moonwalk_SideSpeed   = OW.Moonwalk_SideSpeed or 0.9
OW.Moonwalk_BackSpeed   = OW.Moonwalk_BackSpeed or 1.2
OW.Moonwalk_Interval    = OW.Moonwalk_Interval or 0.07

OW.ESP_Survivor         = OW.ESP_Survivor or false
OW.ESP_Killer           = OW.ESP_Killer or false
OW.ESP_Generator        = OW.ESP_Generator or false
OW.ESP_Pallet           = OW.ESP_Pallet or false
OW.ESP_Window           = OW.ESP_Window or false
OW.ESP_SCP              = OW.ESP_SCP or false
OW.ESP_Distance         = OW.ESP_Distance or 500

OW.ESPStatus_Enabled    = OW.ESPStatus_Enabled or false
OW.ESPStatus_Name       = OW.ESPStatus_Name ~= false
OW.ESPStatus_Distance   = OW.ESPStatus_Distance ~= false
OW.ESPStatus_Avatar     = OW.ESPStatus_Avatar ~= false
OW.ESPStatus_Action     = OW.ESPStatus_Action ~= false
OW.ESPStatus_Health     = OW.ESPStatus_Health or false
OW.ESPStatus_Radius     = OW.ESPStatus_Radius or 500

OW.KillerPerks_Enabled  = OW.KillerPerks_Enabled or false
OW.InfLunge_Enabled     = OW.InfLunge_Enabled or false
OW.CounterParry_Enabled = OW.CounterParry_Enabled or false

OW.AimHidden_Enabled    = OW.AimHidden_Enabled or false
OW.AimHidden_Key        = OW.AimHidden_Key or "E"

OW.AimAttack_Enabled    = OW.AimAttack_Enabled or false
OW.AimAttack_FOV        = OW.AimAttack_FOV or 250
OW.AimAttack_Smooth     = OW.AimAttack_Smooth or 1
OW.AimAttack_Predict    = OW.AimAttack_Predict or 0.12
OW.AimAttack_Part       = OW.AimAttack_Part or "HumanoidRootPart"
OW.AimAttack_VisCheck   = OW.AimAttack_VisCheck ~= false

OW.AntiBlind_Enabled    = OW.AntiBlind_Enabled or false
OW.DestroyPallet        = OW.DestroyPallet or false

OW.Masked_Power         = OW.Masked_Power or "Cobra"

OW.VeilV1_Enabled       = OW.VeilV1_Enabled or false
OW.VeilV1_ShowFOV       = OW.VeilV1_ShowFOV ~= false
OW.VeilV1_ShowTracker   = OW.VeilV1_ShowTracker or false
OW.VeilV1_AutoPredict   = OW.VeilV1_AutoPredict ~= false
OW.VeilV1_FOV           = OW.VeilV1_FOV or 150
OW.VeilV1_MaxDist       = OW.VeilV1_MaxDist or 280
OW.VeilV1_SpearSpeed    = OW.VeilV1_SpearSpeed or 165
OW.VeilV1_Gravity       = OW.VeilV1_Gravity or 103
OW.VeilV1_Lead          = OW.VeilV1_Lead or 1.4

OW.VeilV2_Enabled       = OW.VeilV2_Enabled or false
OW.VeilV2_AutoPredict   = OW.VeilV2_AutoPredict or false
OW.VeilV2_Lead          = OW.VeilV2_Lead or 1.4
OW.VeilV2_Speed         = OW.VeilV2_Speed or 165
OW.VeilV2_Gravity       = OW.VeilV2_Gravity or 103
OW.VeilV2_Tracker       = OW.VeilV2_Tracker or false
OW.VeilV2_ShowFOV       = OW.VeilV2_ShowFOV or true
OW.VeilV2_FOV           = OW.VeilV2_FOV or 150

OW.Bypass_HiddenLeap    = OW.Bypass_HiddenLeap or false
OW.Bypass_MyersGrab     = OW.Bypass_MyersGrab or false
OW.Bypass_LakeMist      = OW.Bypass_LakeMist or false
OW.Bypass_Pursuit       = OW.Bypass_Pursuit or false
OW.Bypass_AbyssCD       = OW.Bypass_AbyssCD or false
OW.Bypass_JeffFrenzy    = OW.Bypass_JeffFrenzy or false

OW.UnlockCarry_Enabled  = OW.UnlockCarry_Enabled or false

OW.SpearAimbot_Enabled  = OW.SpearAimbot_Enabled or false
OW.SpearAimbot_Gravity  = OW.SpearAimbot_Gravity or 50
OW.SpearAimbot_Speed    = OW.SpearAimbot_Speed or 100

OW.AutoStalk            = OW.AutoStalk or false
OW.AutoStalk_Range      = OW.AutoStalk_Range or 150
OW.AutoKillAll          = OW.AutoKillAll or false
OW.DropAllPallet        = OW.DropAllPallet or false
OW.BlockAllVault        = OW.BlockAllVault or false
OW.AutoHook             = OW.AutoHook or false

OW.Flask_Enabled        = OW.Flask_Enabled or false
OW.Flask_ShowBeam       = OW.Flask_ShowBeam ~= false
OW.Flask_ShowLanding    = OW.Flask_ShowLanding ~= false
OW.Flask_Predict        = OW.Flask_Predict ~= false
OW.Flask_Speed          = OW.Flask_Speed or 90
OW.Flask_Gravity        = OW.Flask_Gravity or 196
OW.Flask_Lead           = OW.Flask_Lead or 1.0
OW.Flask_Range          = OW.Flask_Range or 200

OW.DashLock_Enabled     = OW.DashLock_Enabled or false
OW.DashLock_Duration    = OW.DashLock_Duration or 1.5
OW.DashLock_Smooth      = OW.DashLock_Smooth or 0.3
OW.DashLock_Freeze      = OW.DashLock_Freeze or false

OW.Stun_Enabled         = OW.Stun_Enabled or false
OW.Stun_Sound           = OW.Stun_Sound or "Default"
OW.Stun_SoundAlert      = OW.Stun_SoundAlert ~= false
OW.Stun_Range           = OW.Stun_Range or 500
OW.Stun_Volume          = OW.Stun_Volume or 1.5

OW.Invis_Enabled        = OW.Invis_Enabled or false
OW.Invis_Hotkey         = OW.Invis_Hotkey or "G"

OW.CamDBD_Smooth        = OW.CamDBD_Smooth or false
OW.CamDBD_SmoothSpeed   = OW.CamDBD_SmoothSpeed or 4
OW.CamDBD_POVLock       = OW.CamDBD_POVLock or false
OW.CamDBD_POVValue      = OW.CamDBD_POVValue or 85
OW.CamDBD_POVSmooth     = OW.CamDBD_POVSmooth or 9

OW.PU_SpeedEnabled      = OW.PU_SpeedEnabled or false
OW.PU_SpeedValue        = OW.PU_SpeedValue or 16
OW.PU_SkipEnd           = OW.PU_SkipEnd or false
OW.PU_ShiftLock         = OW.PU_ShiftLock or false
OW.PU_HideSurvIcon      = OW.PU_HideSurvIcon or false
OW.PU_PingFPS           = OW.PU_PingFPS or false
OW.PU_HideName          = OW.PU_HideName or false
OW.PU_UnlimitedZoom     = OW.PU_UnlimitedZoom or false
OW.PU_Noclip            = OW.PU_Noclip or false

OW.SpeedBoost_Enabled   = OW.SpeedBoost_Enabled or false
OW.SpeedBoost_Value     = OW.SpeedBoost_Value or 30

OW.Emote_Enabled        = OW.Emote_Enabled or false
OW.Emote_Selected       = OW.Emote_Selected or "Friday Night"

OW.FakeAvatar_Enabled   = OW.FakeAvatar_Enabled or false
OW.FakeAvatar_ID        = OW.FakeAvatar_ID or 0

OW.Korless_Enabled      = OW.Korless_Enabled or false

OW.Header_Enabled       = OW.Header_Enabled or false
OW.Header_Text          = OW.Header_Text or "One W v2"
OW.Header_Color         = OW.Header_Color or Color3.fromRGB(255,255,255)

OW.Escape_Enabled       = OW.Escape_Enabled or false

OW.NotifyEnabled        = OW.NotifyEnabled ~= false

_G.OW_ACCENT     = Color3.fromRGB(255, 255, 255)
_G.OW_ACCENT_BG  = Color3.fromRGB(0, 0, 0)
_G.OW_NEUTRAL    = Color3.fromRGB(90, 90, 90)
_G.OW_STROKE_OFF = Color3.fromRGB(25, 25, 25)
_G.OW_BG_OFF     = Color3.fromRGB(0, 0, 0)

--====================================================--
-- MAIN FUNCTION
--====================================================--
local function __OneW_Init_Main__()

    local Players           = game:GetService("Players")
    local RunService        = game:GetService("RunService")
    local UserInputService  = game:GetService("UserInputService")
    local ReplicatedStorage = game:GetService("ReplicatedStorage")
    local Workspace         = game:GetService("Workspace")
    local CoreGui           = game:GetService("CoreGui")
    local CollectionService = game:GetService("CollectionService")
    local TweenService      = game:GetService("TweenService")
    local GuiService        = game:GetService("GuiService")
    local HttpService       = game:GetService("HttpService")
    local Lighting          = game:GetService("Lighting")

    local LocalPlayer = Players.LocalPlayer
    local isMobile = UserInputService.TouchEnabled and not UserInputService.KeyboardEnabled
    local VirtualInputManager = nil
    pcall(function() VirtualInputManager = game:GetService("VirtualInputManager") end)

    --====================================================--
    -- UILIB LOAD
    --====================================================--
    local UILib
    local ok, err = pcall(function()
        UILib = loadstring(game:HttpGet("https://glutofree.vercel.app/library"))()
    end)
    if not ok or not UILib then warn("[OneW] UI gagal load:", err); return end

    do
        local function FixText(inst)
            if not inst then return end
            if inst:IsA("TextLabel") or inst:IsA("TextButton") or inst:IsA("TextBox") then
                local txt = inst.Text
                if txt and (string.find(txt, "Gluto Windows", 1, true) or string.find(txt, "Gluto Window", 1, true)) then
                    pcall(function()
                        inst.Text = txt:gsub("Gluto Windows", "Close Windows"):gsub("Gluto Window", "Close Windows")
                    end)
                end
            end
        end
        local function ScanAndHook(container)
            if not container then return end
            for _, d in ipairs(container:GetDescendants()) do FixText(d) end
            container.DescendantAdded:Connect(FixText)
        end
        ScanAndHook(CoreGui)
        if gethui then
            local hok, hui = pcall(gethui)
            if hok and hui then ScanAndHook(hui) end
        end
        ScanAndHook(LocalPlayer:FindFirstChild("PlayerGui"))
    end

    --====================================================--
    -- NOTIFY
    --====================================================--
    local NotifyColor = Color3.fromRGB(255, 255, 255)
    W.NotifyEnabled = W.NotifyEnabled ~= false

    local function ShowNotify(title, message, duration)
        if not W.NotifyEnabled then return end
        if not UILib or not UILib.MakeNotify then return end
        pcall(function()
            UILib:MakeNotify({
                Title = title or "One W v2", Description = "Info",
                Content = message or "", Color = NotifyColor,
                Time = 0.4, Delay = duration or 2, Icon = "92826170205694"
            })
        end)
    end
    local function OW_Notify(title, content, duration) ShowNotify(title, content, duration) end
    local function ForceNotify(title, message, duration)
        if not UILib or not UILib.MakeNotify then return end
        pcall(function()
            UILib:MakeNotify({
                Title = title or "One W v2", Description = "Info",
                Content = message or "", Color = NotifyColor,
                Time = 0.4, Delay = duration or 2, Icon = "92826170205694"
            })
        end)
    end

    --====================================================--
    -- TEAM HELPER
    --====================================================--
    local function TeamIs(plr, role)
        if not plr or not plr.Team or not plr.Team.Name then return false end
        local tn = string.lower(plr.Team.Name)
        if role == "Killer" then return string.find(tn, "killer", 1, true) ~= nil end
        if role == "Survivor" then return string.find(tn, "survivor", 1, true) ~= nil end
        return false
    end
    W.TeamIs = TeamIs

    local function GetRole()
        if TeamIs(LocalPlayer, "Killer") then return "Killer" end
        if TeamIs(LocalPlayer, "Survivor") then return "Survivor" end
        return nil
    end
    W.GetRole = GetRole

    --====================================================--
    -- GENERATOR HELPERS
    --====================================================--
    W.GB_GetAllGenerators = function()
        local gens = {}
        local mf = Workspace:FindFirstChild("Map")
        if mf then
            for _, obj in ipairs(mf:GetDescendants()) do
                if obj:IsA("Model") and obj.Name == "Generator" then
                    local real = obj:GetAttribute("RepairProgress") ~= nil
                              or obj:GetAttribute("kickcount") ~= nil
                              or obj:GetAttribute("ProgressRepair") ~= nil
                    if real then table.insert(gens, obj) end
                end
            end
        end
        return gens
    end
    W.GB_GetPoints = function(m)
        local pts = {}
        if m then
            for _, o in ipairs(m:GetChildren()) do
                if o:IsA("BasePart") and string.find(o.Name, "GeneratorPoint") then
                    table.insert(pts, o)
                end
            end
        end
        return pts
    end--====================================================--
-- SELF HEAL
--====================================================--
function W.doSelfHealTrue()
    local c = LocalPlayer.Character
    if not c then return end
    local hr = ReplicatedStorage.Remotes.Healing.HealEvent
    local hp = c:FindFirstChild("HumanoidRootPart")
    if not hp then return end
    pcall(function() hr:FireServer(hp, true) end)
end
function W.doSelfHealFalse()
    local c = LocalPlayer.Character
    if not c then return end
    local hr = ReplicatedStorage.Remotes.Healing.HealEvent
    local hp = c:FindFirstChild("HumanoidRootPart")
    if not hp then return end
    pcall(function() hr:FireServer(hp, false) end)
end
function W.doOthersHealTrue(tp)
    if not tp or not tp.Character then return end
    local hrp = tp.Character:FindFirstChild("HumanoidRootPart")
    if not hrp then return end
    local hr = ReplicatedStorage.Remotes.Healing.HealEvent
    pcall(function() hr:FireServer(hrp, true) end)
end
function W.doOthersHealFalse(tp)
    if not tp or not tp.Character then return end
    local hrp = tp.Character:FindFirstChild("HumanoidRootPart")
    if not hrp then return end
    local hr = ReplicatedStorage.Remotes.Healing.HealEvent
    pcall(function() hr:FireServer(hrp, false) end)
end

W.SelfHeal_BlockedAnimId = "95836365038528"
W.SelfHeal_AnimMonitor = W.SelfHeal_AnimMonitor or { Conn = nil, CharHook = nil }
function W.SelfHeal_StartAnimBlock()
    if W.SelfHeal_AnimMonitor.Conn then return end
    W.SelfHeal_AnimMonitor.Conn = RunService.Heartbeat:Connect(function()
        if not OW.SelfHeal_Enabled then return end
        local char = LocalPlayer.Character
        if not char then return end
        local hum = char:FindFirstChildOfClass("Humanoid")
        if not hum then return end
        local anim = hum:FindFirstChildOfClass("Animator")
        if not anim then return end
        local ok2, tracks = pcall(function() return anim:GetPlayingAnimationTracks() end)
        if not ok2 then return end
        for _, track in ipairs(tracks) do
            local aid = track.Animation and track.Animation.AnimationId or ""
            local numId = aid:match("%d+")
            if numId == W.SelfHeal_BlockedAnimId then
                pcall(function() track:Stop(0) end)
            end
        end
    end)
    local function hookChar(char)
        if not char then return end
        local hum = char:FindFirstChildOfClass("Humanoid")
        if not hum then return end
        local anim = hum:FindFirstChildOfClass("Animator") or hum:WaitForChild("Animator", 3)
        if not anim then return end
        anim.AnimationPlayed:Connect(function(track)
            if not OW.SelfHeal_Enabled then return end
            local aid = track.Animation and track.Animation.AnimationId or ""
            local numId = aid:match("%d+")
            if numId == W.SelfHeal_BlockedAnimId then
                pcall(function() track:Stop(0) end)
            end
        end)
    end
    hookChar(LocalPlayer.Character)
    W.SelfHeal_AnimMonitor.CharHook = LocalPlayer.CharacterAdded:Connect(function(c)
        task.wait(0.3); hookChar(c)
    end)
end
function W.SelfHeal_StopAnimBlock()
    if W.SelfHeal_AnimMonitor.Conn then
        pcall(function() W.SelfHeal_AnimMonitor.Conn:Disconnect() end)
        W.SelfHeal_AnimMonitor.Conn = nil
    end
    if W.SelfHeal_AnimMonitor.CharHook then
        pcall(function() W.SelfHeal_AnimMonitor.CharHook:Disconnect() end)
        W.SelfHeal_AnimMonitor.CharHook = nil
    end
end
function W.setSelfHeal(v)
    OW.SelfHeal_Enabled = v
    if v then
        W.SelfHeal_StartAnimBlock()
    else
        W.SelfHeal_StopAnimBlock()
    end
    if v then
        local ha = false
        if W.SelfHealConnection then W.SelfHealConnection:Disconnect() end
        W.SelfHealConnection = RunService.Heartbeat:Connect(function()
            if not OW.SelfHeal_Enabled then return end
            local c = LocalPlayer.Character
            local h = c and c:FindFirstChildOfClass("Humanoid")
            if not h then return end
            if h.Health >= h.MaxHealth * 0.9 then
                if ha then ha = false; W.doSelfHealFalse() end
                return
            end
            if ha then
                local ci = c:FindFirstChild("CheckInterractable")
                if ci and not ci:GetAttribute("isHealing") then ha = false end
            end
            if not ha then ha = true; W.doSelfHealTrue() end
        end)
    else
        if W.SelfHealConnection then W.SelfHealConnection:Disconnect(); W.SelfHealConnection = nil end
        pcall(W.doSelfHealFalse)
    end
end
function W.setAutoHealAll(v)
    OW.SelfHeal_AutoAll = v
    if v then
        local ah = {}
        if W.AutoHealAllConnection then W.AutoHealAllConnection:Disconnect() end
        W.AutoHealAllConnection = RunService.Heartbeat:Connect(function()
            if not OW.SelfHeal_AutoAll then return end
            for _, p in ipairs(Players:GetPlayers()) do
                if p ~= LocalPlayer and p.Character then
                    local hrp = p.Character:FindFirstChild("HumanoidRootPart")
                    local hu = p.Character:FindFirstChildOfClass("Humanoid")
                    if hu and hu.Health > 0 and hu.Health < hu.MaxHealth * 0.9 and hrp then
                        if ah[p] then
                            local c = LocalPlayer.Character
                            local ci = c and c:FindFirstChild("CheckInterractable")
                            if ci and not ci:GetAttribute("isHealing") then ah[p] = nil end
                        end
                        if not ah[p] then ah[p] = true; W.doOthersHealTrue(p) end
                    else
                        if ah[p] then ah[p] = nil; W.doOthersHealFalse(p) end
                    end
                else
                    if ah[p] then ah[p] = nil; pcall(function() W.doOthersHealFalse(p) end) end
                end
            end
        end)
    else
        if W.AutoHealAllConnection then W.AutoHealAllConnection:Disconnect(); W.AutoHealAllConnection = nil end
    end
end
LocalPlayer.CharacterAdded:Connect(function()
    task.wait(0.5)
    if OW.SelfHeal_Enabled then W.setSelfHeal(true) end
    if OW.SelfHeal_AutoAll then W.setAutoHealAll(true) end
end)

--====================================================--
-- SWIFT VAULT
--====================================================--
do
    local _vaultedWindows = {}
    local _lastVaultScan  = 0
    local function SwiftVault_BuildWindowGroups()
        local groups = {}
        local map = Workspace:FindFirstChild("Map")
        if not map then return groups end
        local seen = {}
        local function addPart(part)
            if not part or seen[part] then return end
            seen[part] = true
            local rootWindow = part.Parent
            if part.Name == "VaultPoint" and part.Parent and part.Parent.Name == "VaultTrigger" then
                rootWindow = part.Parent.Parent
            elseif part.Name == "VaultTrigger" then
                rootWindow = part.Parent
            end
            if rootWindow then
                groups[rootWindow] = groups[rootWindow] or {}
                local exists = false
                for _, p in ipairs(groups[rootWindow]) do
                    if p == part then exists = true; break end
                end
                if not exists then table.insert(groups[rootWindow], part) end
            end
        end
        for _, obj in ipairs(map:GetDescendants()) do
            if obj:IsA("BasePart") and (obj.Name == "VaultTrigger" or obj.Name == "VaultPoint") then
                addPart(obj)
            end
        end
        return groups
    end
    local function SwiftVault_GetVTPosition(vt)
        if not vt then return nil end
        if vt:IsA("BasePart") then return vt.Position end
        if vt:IsA("Model") then
            if vt.PrimaryPart then return vt.PrimaryPart.Position end
            local bp = vt:FindFirstChildWhichIsA("BasePart", true)
            if bp then return bp.Position end
        end
        return nil
    end
    RunService.Heartbeat:Connect(function()
        if OW.SwiftVault_V2 then
            pcall(function()
                local char = LocalPlayer.Character
                if char then char:SetAttribute("vaultspeed", (OW.SwiftVault_Speed or 13) / 10) end
            end)
        end
    end)
    RunService.Heartbeat:Connect(function()
        if not OW.SwiftVault_Enabled then return end
        if GetRole() ~= "Survivor" then return end
        if tick() - _lastVaultScan < 0.15 then return end
        _lastVaultScan = tick()
        pcall(function()
            local char   = LocalPlayer.Character
            local myRoot = char and char:FindFirstChild("HumanoidRootPart")
            local hum    = char and char:FindFirstChildOfClass("Humanoid")
            if not myRoot or not hum or hum.Health <= 0 then return end
            local vel = myRoot.AssemblyLinearVelocity
            if vel.Magnitude < 1 then return end
            local remotes   = ReplicatedStorage:FindFirstChild("Remotes")
            local winFolder = remotes and remotes:FindFirstChild("Window")
            local vaultEv   = winFolder and winFolder:FindFirstChild("VaultCommit")
            if not vaultEv then return end
            local windowGroups = SwiftVault_BuildWindowGroups()
            for rootWindow, parts in pairs(windowGroups) do
                local allVTs = {}
                for _, child in ipairs(rootWindow:GetChildren()) do
                    if child.Name == "VaultTrigger" then table.insert(allVTs, child) end
                end
                if #allVTs == 0 then continue end
                local nearestVT, nearestVTDist = nil, math.huge
                for _, vt in ipairs(allVTs) do
                    local pos = SwiftVault_GetVTPosition(vt)
                    if pos then
                        local d = (myRoot.Position - pos).Magnitude
                        if d < nearestVTDist then nearestVTDist = d; nearestVT = vt end
                    end
                end
                if not nearestVT or nearestVTDist > 6.0 then continue end
                local lastUsed = _vaultedWindows[rootWindow] or 0
                if tick() - lastUsed < 3.0 then continue end
                local finalTarget = nearestVT
                local remotes2 = ReplicatedStorage:FindFirstChild("Remotes")
                local winFold  = remotes2 and remotes2:FindFirstChild("Window")
                if winFold and finalTarget then
                    local vaultEvent     = winFold:FindFirstChild("VaultEvent")
                    local vaultBindable  = winFold:FindFirstChild("Vaultbindable")
                    local fastvault      = winFold:FindFirstChild("fastvault")
                    local vaultComplete1 = winFold:FindFirstChild("VaultCompleteEventpart1")
                    local vaultComplete  = winFold:FindFirstChild("VaultCompleteEvent")
                    if vaultEvent    then pcall(function() vaultEvent:FireServer(finalTarget, true) end) end
                    if vaultBindable then pcall(function() vaultBindable:Fire(finalTarget, true) end) end
                    if fastvault     then pcall(function() fastvault:FireServer(LocalPlayer) end) end
                    if vaultComplete1 then pcall(function() vaultComplete1:FireServer() end) end
                    if vaultComplete  then pcall(function() vaultComplete:FireServer(finalTarget, false) end) end
                end
                _vaultedWindows[rootWindow] = tick()
                break
            end
        end)
    end)
    LocalPlayer.CharacterAdded:Connect(function()
        task.wait(0.5); _vaultedWindows = {}
    end)
end

--====================================================--
-- PALLET REFLEX
--====================================================--
do
    local _lastPalletDrop = 0
    local _usedPallets    = {}
    local function Pallet_GetKillerRoot()
        for _, plr in ipairs(Players:GetPlayers()) do
            if plr ~= LocalPlayer and TeamIs(plr, "Killer") and plr.Character then
                local hrp = plr.Character:FindFirstChild("HumanoidRootPart")
                if hrp then return hrp end
            end
        end
        return nil
    end
    local function Pallet_GetAllPallets()
        local list = {}
        local map = Workspace:FindFirstChild("Map")
        if not map then return list end
        for _, obj in ipairs(map:GetDescendants()) do
            if obj.Name == "Palletwrong" and (obj:IsA("Model") or obj:IsA("Folder")) then
                table.insert(list, obj)
            end
        end
        return list
    end
    local function Pallet_IsDropped(palletModel)
        if not palletModel or not palletModel.Parent then return true end
        if _usedPallets[palletModel] then return true end
        local ok, destroyed = pcall(function() return palletModel:GetAttribute("Destroyed") end)
        if ok and destroyed == true then return true end
        local ok2, broken = pcall(function() return palletModel:GetAttribute("Broken") end)
        if ok2 and broken == true then return true end
        if not palletModel:FindFirstChildWhichIsA("BasePart", true) then return true end
        return false
    end
    local function Pallet_GetPointSlide(model)
        local slide = model:FindFirstChild("PalletPointSlide")
        if slide then return slide end
        for _, child in ipairs(model:GetDescendants()) do
            if child.Name == "PalletPointSlide" then return child end
        end
        return model:FindFirstChild("PalletPoint")
    end
    local _lastPalletScan = 0
    RunService.Heartbeat:Connect(function()
        if not OW.PalletReflex_Enabled then return end
        if GetRole() ~= "Survivor" then return end
        local now = tick()
        if now - _lastPalletScan < 0.2 then return end
        _lastPalletScan = now
        if now - _lastPalletDrop < 2.5 then return end
        pcall(function()
            local char   = LocalPlayer.Character
            local myRoot = char and char:FindFirstChild("HumanoidRootPart")
            local hum    = char and char:FindFirstChildOfClass("Humanoid")
            if not myRoot or not hum or hum.Health <= 0 then return end
            local killerRoot = Pallet_GetKillerRoot()
            if not killerRoot then return end
            if (myRoot.Position - killerRoot.Position).Magnitude > (OW.PalletReflex_Dist or 20) then return end
            local remotes    = ReplicatedStorage:FindFirstChild("Remotes")
            local palletFold = remotes and remotes:FindFirstChild("Pallet")
            local dropEvent  = palletFold and palletFold:FindFirstChild("PalletDropEvent")
            if not dropEvent then return end
            local bestPallet, bestDist = nil, 8
            for _, pal in ipairs(Pallet_GetAllPallets()) do
                if not Pallet_IsDropped(pal) then
                    local refPart = pal:FindFirstChild("PalletPoint")
                        or pal:FindFirstChild("PalletPointSlide")
                        or pal:FindFirstChildWhichIsA("BasePart", true)
                    if refPart then
                        local d = (myRoot.Position - refPart.Position).Magnitude
                        if d < bestDist then bestDist = d; bestPallet = pal end
                    end
                end
            end
            if bestPallet then
                local fireTarget = Pallet_GetPointSlide(bestPallet)
                if fireTarget then
                    pcall(function() dropEvent:FireServer(fireTarget) end)
                    _usedPallets[bestPallet] = true
                    _lastPalletDrop = tick()
                end
            end
        end)
    end)
    LocalPlayer.CharacterAdded:Connect(function()
        task.wait(0.5); _usedPallets = {}
    end)
end

--====================================================--
-- FAKE PERKS
--====================================================--
W.FP = W.FP or {
    ActiveBuffs = {}, Conns = {}, LastBuffEnd = 0, CooldownTime = 5, HB = nil,
    FlowstateOn = false, QuickRecOn = false, PerfLandOn = false, AdrenalineOn = false,
}
local FP = W.FP
local function FP_Char() return LocalPlayer.Character end
local function FP_Hum() local c = FP_Char(); return c and c:FindFirstChildOfClass("Humanoid") end
local function FP_GetTotal()
    local t = 0
    for _,b in pairs(FP.ActiveBuffs) do if tick() < b.endTime then t = t + b.amt end end
    return t
end
local function FP_Apply()
    local c = FP_Char()
    local tb = FP_GetTotal()
    local h = FP_Hum()
    if c then if tb > 0 then c:SetAttribute("speedboost", 1+(tb/14)) else c:SetAttribute("speedboost", 1) end end
    if h and tb > 0 then h.WalkSpeed = 16 + tb end
end
local function FP_EnsureHB()
    if FP.HB then return end
    FP.HB = RunService.Heartbeat:Connect(function()
        local exp = {}
        for n,b in pairs(FP.ActiveBuffs) do if tick() >= b.endTime then table.insert(exp,n) end end
        for _,n in ipairs(exp) do FP.ActiveBuffs[n]=nil end
        if #exp > 0 and FP_GetTotal()<=0 then FP.LastBuffEnd = tick() end
        FP_Apply()
        if FP_GetTotal()<=0 and next(FP.ActiveBuffs)==nil then
            if FP.HB then FP.HB:Disconnect(); FP.HB=nil end
            local c = FP_Char()
            if c then c:SetAttribute("speedboost",1) end
        end
    end)
end
local function FP_TryBuff(name, amt, dur)
    if FP.ActiveBuffs[name] then return end
    if tick()-FP.LastBuffEnd < FP.CooldownTime and next(FP.ActiveBuffs)==nil then return end
    FP.ActiveBuffs[name] = {amt=amt, endTime=tick()+dur, duration=dur, startTime=tick()}
    FP_Apply(); FP_EnsureHB()
    OW_Notify("Fake Perks", "["..name.."] Aktif! +"..amt.." Speed ("..dur.."s)", 3)
end
local function FP_Clean(name)
    if FP.Conns[name] then for _,c in ipairs(FP.Conns[name]) do pcall(function() c:Disconnect() end) end FP.Conns[name] = nil end
end
local function FP_Reg(name, conn) if not FP.Conns[name] then FP.Conns[name] = {} end table.insert(FP.Conns[name], conn) end
function W.FP_SetupFlowstate(val)
    FP.FlowstateOn = val
    local c = FP_Char()
    if c then c:SetAttribute("Flowstate", val) end
    if val then
        local r = ReplicatedStorage:FindFirstChild("Remotes")
        local w = r and r:FindFirstChild("Window")
        local p = r and r:FindFirstChild("Pallet")
        local function onV()
            if not FP.FlowstateOn then return end
            task.delay(0.5, function() if FP.FlowstateOn then FP_TryBuff("Flowstate",5,3) end end)
        end
        if w then local vb = w:FindFirstChild("Vaultbindable"); if vb and vb:IsA("BindableEvent") then FP_Reg("Flowstate", vb.Event:Connect(onV)) end end
        if p then local sb = p:FindFirstChild("Slidebindable"); if sb and sb:IsA("BindableEvent") then FP_Reg("Flowstate", sb.Event:Connect(onV)) end end
        local function hookChar(cc)
            if not cc then return end
            local cn = cc:GetAttributeChangedSignal("__VaultFireCount"):Connect(function() if FP.FlowstateOn then onV() end end)
            FP_Reg("Flowstate", cn)
        end
        hookChar(LocalPlayer.Character)
        FP_Reg("Flowstate", LocalPlayer.CharacterAdded:Connect(function(cc) if FP.FlowstateOn then cc:SetAttribute("Flowstate",true); hookChar(cc) end end))
    else
        FP_Clean("Flowstate")
        FP.ActiveBuffs["Flowstate"] = nil
        local c2 = FP_Char()
        if c2 then c2:SetAttribute("Flowstate", false) end
    end
end
function W.FP_SetupQuickRecovery(val)
    FP.QuickRecOn = val
    if val then
        local function onH() if not FP.QuickRecOn then return end FP_TryBuff("QuickRecovery", 6, 3) end
        local r = ReplicatedStorage:FindFirstChild("Remotes")
        local hf = r and r:FindFirstChild("Healing")
        if hf then local hd = hf:FindFirstChild("Healdone"); if hd and hd:IsA("BindableEvent") then FP_Reg("QuickRecovery", hd.Event:Connect(onH)) end end
        local function hookH(cc)
            if not cc then return end
            local h = cc:FindFirstChildOfClass("Humanoid")
            if h then
                local lh = h.Health
                local cn = h.HealthChanged:Connect(function(nh)
                    if not FP.QuickRecOn then return end
                    if nh > lh and (nh>=h.MaxHealth or (nh-lh)>=15) then onH() end
                    lh = nh
                end)
                FP_Reg("QuickRecovery", cn)
            end
        end
        hookH(LocalPlayer.Character)
        FP_Reg("QuickRecovery", LocalPlayer.CharacterAdded:Connect(hookH))
    else
        FP_Clean("QuickRecovery")
        FP.ActiveBuffs["QuickRecovery"] = nil
    end
end
function W.FP_SetupPerfectLanding(val)
    FP.PerfLandOn = val
    if val then
        local function hookF(cc)
            if not cc then return end
            local h = cc:FindFirstChildOfClass("Humanoid")
            if not h then return end
            local wf, fs = false, 0
            local cn = h.StateChanged:Connect(function(_,n)
                if not FP.PerfLandOn then return end
                if n == Enum.HumanoidStateType.Freefall then wf=true; fs=tick() end
                if wf and (n == Enum.HumanoidStateType.Landed or n == Enum.HumanoidStateType.Running) then
                    local ft = tick() - fs
                    wf = false
                    if ft >= 0.25 then FP_TryBuff("PerfectLanding", 8, 3) end
                end
            end)
            FP_Reg("PerfectLanding", cn)
        end
        hookF(LocalPlayer.Character)
        FP_Reg("PerfectLanding", LocalPlayer.CharacterAdded:Connect(hookF))
    else
        FP_Clean("PerfectLanding")
        FP.ActiveBuffs["PerfectLanding"] = nil
    end
end
function W.FP_SetupAdrenalineRush(val)
    FP.AdrenalineOn = val
    if val then
        local function hookD(cc)
            if not cc then return end
            local h = cc:FindFirstChildOfClass("Humanoid")
            if not h then return end
            local lh = h.Health
            local cn = h.HealthChanged:Connect(function(nh)
                if not FP.AdrenalineOn then return end
                if nh < lh and nh <= 50 and nh > 0 then FP_TryBuff("AdrenalineRush", 4, 5) end
                lh = nh
            end)
            FP_Reg("AdrenalineRush", cn)
        end
        hookD(LocalPlayer.Character)
        FP_Reg("AdrenalineRush", LocalPlayer.CharacterAdded:Connect(hookD))
    else
        FP_Clean("AdrenalineRush")
        FP.ActiveBuffs["AdrenalineRush"] = nil
    end
end

--====================================================--
-- AUTO SKILL CHECK
--====================================================--
W.SkillCheck = W.SkillCheck or { Enabled=false, Mode="Legit", Busy=false, Connection=nil }
local SC = W.SkillCheck
local SC_TouchID = 8822
local SC_ActionPath = "Survivor-mob.Controls.action.check"
local function SC_PressSpace()
    if not VirtualInputManager then return end
    pcall(function()
        VirtualInputManager:SendKeyEvent(true, Enum.KeyCode.Space, false, game)
        task.wait()
        VirtualInputManager:SendKeyEvent(false, Enum.KeyCode.Space, false, game)
    end)
end
local function SC_GetActionTarget()
    local pGui = LocalPlayer:FindFirstChildOfClass("PlayerGui")
    if not pGui then return nil end
    local current = pGui
    for seg in string.gmatch(SC_ActionPath, "[^%.]+") do
        current = current and current:FindFirstChild(seg)
    end
    return current
end
local function SC_TriggerMobileButton()
    local b = SC_GetActionTarget()
    if b and b:IsA("GuiObject") then
        local p, s = b.AbsolutePosition, b.AbsoluteSize
        local i = GuiService:GetGuiInset()
        local cx, cy = p.X + (s.X/2) + i.X, p.Y + (s.Y/2) + i.Y
        pcall(function()
            VirtualInputManager:SendTouchEvent(SC_TouchID, 0, cx, cy)
            task.wait(0.01)
            VirtualInputManager:SendTouchEvent(SC_TouchID, 2, cx, cy)
        end)
    end
end
function W.SkillCheck_Start()
    if SC.Connection then SC.Connection:Disconnect(); SC.Connection = nil end
    SC.Connection = RunService.RenderStepped:Connect(function()
        if not SC.Enabled or SC.Busy then return end
        local pGui = LocalPlayer:FindFirstChildOfClass("PlayerGui")
        if not pGui then return end
        local prompt = pGui:FindFirstChild("SkillCheckPromptGui")
        if not prompt then return end
        local check = prompt:FindFirstChild("Check")
        if not check or not check.Visible then return end
        local line = check:FindFirstChild("Line")
        local goal = check:FindFirstChild("Goal")
        if not line or not goal then return end
        if SC.Mode == "Instant" then
            line.Rotation = goal.Rotation + 109
            SC.Busy = true
            task.spawn(function()
                if UserInputService.TouchEnabled then SC_TriggerMobileButton() else SC_PressSpace() end
                task.wait(0.2); SC.Busy = false
            end)
        else
            local lr = line.Rotation % 360
            local gr = goal.Rotation % 360
            local sR = (gr + 102) % 360
            local eR = (gr + 116) % 360
            local success = (sR > eR and (lr >= sR or lr <= eR)) or (lr >= sR and lr <= eR)
            if success then
                SC.Busy = true
                task.spawn(function()
                    if UserInputService.TouchEnabled then SC_TriggerMobileButton() else SC_PressSpace() end
                    task.wait(0.05); SC.Busy = false
                end)
            end
        end
    end)
end
function W.SkillCheck_Stop()
    if SC.Connection then SC.Connection:Disconnect(); SC.Connection = nil end
    SC.Busy = false
end
function W.SkillCheck_SetEnabled(v)
    SC.Enabled = v and true or false
    if SC.Enabled then W.SkillCheck_Start() else W.SkillCheck_Stop() end
end

--====================================================--
-- BYPASS GENERATOR
--====================================================--
W.GenBypass = W.GenBypass or {
    Enabled=false, Button=nil, UI=nil, Cache={}, CacheTimer=0,
    Processed={}, HotkeyCode=Enum.KeyCode.B, TriggerRange=8
}
local GenBypass = W.GenBypass
function W.GB_GetAllGeneratorsCached()
    local now = tick()
    if now - GenBypass.CacheTimer < 5 then return GenBypass.Cache end
    GenBypass.Cache = {}; GenBypass.CacheTimer = now
    local mf = Workspace:FindFirstChild("Map")
    if not mf then return GenBypass.Cache end
    pcall(function()
        for _, v in pairs(mf:GetDescendants()) do
            if not v:IsA("Model") then continue end
            if v.Name ~= "Generator" then continue end
            local real = v:GetAttribute("RepairProgress") ~= nil
                      or v:GetAttribute("kickcount") ~= nil
                      or v:GetAttribute("ProgressRepair") ~= nil
            if real then table.insert(GenBypass.Cache, v) end
        end
    end)
    return GenBypass.Cache
end
function W.GB_WaitRepairing(pt, t)
    local s = tick()
    while tick() - s < (t or 1) do
        if pt:GetAttribute("IsRepairing") == true then return true end
        task.wait(0.05)
    end
    return false
end
function W.GB_DoRepair(tp)
    local gm = tp.Parent
    if GenBypass.Processed[gm] then return end
    GenBypass.Processed[gm] = true
    local c = LocalPlayer.Character
    local hrp = c and c:FindFirstChild("HumanoidRootPart")
    if not hrp then GenBypass.Processed[gm] = nil; return end
    local re = ReplicatedStorage:FindFirstChild("Remotes")
        and ReplicatedStorage.Remotes:FindFirstChild("Generator")
        and ReplicatedStorage.Remotes.Generator:FindFirstChild("RepairEvent")
    local og = hrp.CFrame
    pcall(function()
        for _, p in pairs(W.GB_GetPoints(gm)) do
            if p ~= tp and p.Parent then
                hrp.Anchored = true
                hrp.CFrame = p.CFrame
                task.wait(0.15)
                pcall(function() if re then re:FireServer(p, true) end end)
                if not W.GB_WaitRepairing(p, 0.8) then
                    pcall(function() if re then re:FireServer(p, false) end end)
                    task.wait(0.1)
                    hrp.CFrame = p.CFrame
                    task.wait(0.15)
                    pcall(function() if re then re:FireServer(p, true) end end)
                    W.GB_WaitRepairing(p, 0.5)
                end
                hrp.Anchored = false
                task.wait(0.05)
            end
        end
    end)
    pcall(function()
        if hrp and hrp.Parent then hrp.Anchored = false; hrp.CFrame = og end
    end)
    task.wait(0.1)
    pcall(function() if re then re:FireServer(tp, false) end end)
end
function W.GB_GetNearestPoint()
    local c = LocalPlayer.Character
    local hrp = c and c:FindFirstChild("HumanoidRootPart")
    if not hrp then return nil end
    local best, bd = nil, math.huge
    for _, g in pairs(W.GB_GetAllGeneratorsCached()) do
        for _, p in pairs(W.GB_GetPoints(g)) do
            local d = (hrp.Position - p.Position).Magnitude
            if d < bd then bd = d; best = p end
        end
    end
    return best, bd
end
function W.GB_IsPromptVisible()
    local ok2, fr = pcall(function() return LocalPlayer.PlayerGui.pcprompts.Frame.GeneratorRepair end)
    return ok2 and fr and fr.Visible
end
function W.GB_CreateButton()
    local pg = LocalPlayer:FindFirstChild("PlayerGui")
    if not pg then return end
    local old = pg:FindFirstChild("BypassGenUI"); if old then old:Destroy() end
    if GenBypass._StopAnim then pcall(GenBypass._StopAnim); GenBypass._StopAnim = nil end
    GenBypass.UI = Instance.new("ScreenGui")
    GenBypass.UI.Name = "BypassGenUI"
    GenBypass.UI.ResetOnSpawn = false
    GenBypass.UI.IgnoreGuiInset = true
    GenBypass.UI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    GenBypass.UI.DisplayOrder = 100
    GenBypass.UI.Parent = pg
    local wrap = Instance.new("Frame")
    wrap.Name = "Wrap"; wrap.AnchorPoint = Vector2.new(1, 0)
    wrap.Position = UDim2.new(1, -20, 0.48, 0)
    wrap.Size = UDim2.fromOffset(110, 110)
    wrap.BackgroundTransparency = 1; wrap.Active = true
    wrap.ZIndex = 2; wrap.Parent = GenBypass.UI
    local glow = Instance.new("Frame")
    glow.Name = "Glow"; glow.AnchorPoint = Vector2.new(0.5, 0.5)
    glow.Position = UDim2.new(0.5, 0, 0.5, 0)
    glow.Size = UDim2.fromOffset(88, 88)
    glow.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    glow.BackgroundTransparency = 0.85; glow.BorderSizePixel = 0
    glow.ZIndex = 1; glow.Parent = wrap
    Instance.new("UICorner", glow).CornerRadius = UDim.new(1, 0)
    local mainCircle = Instance.new("Frame")
    mainCircle.Name = "MainCircle"; mainCircle.AnchorPoint = Vector2.new(0.5, 0.5)
    mainCircle.Position = UDim2.new(0.5, 0, 0.5, 0)
    mainCircle.Size = UDim2.fromOffset(64, 64)
    mainCircle.BackgroundColor3 = Color3.fromRGB(12, 12, 15)
    mainCircle.BackgroundTransparency = 0.05; mainCircle.BorderSizePixel = 0
    mainCircle.ZIndex = 4; mainCircle.Parent = wrap
    Instance.new("UICorner", mainCircle).CornerRadius = UDim.new(1, 0)
    local mainGrad = Instance.new("UIGradient")
    mainGrad.Rotation = 135
    mainGrad.Color = ColorSequence.new({
        ColorSequenceKeypoint.new(0, Color3.fromRGB(30, 30, 36)),
        ColorSequenceKeypoint.new(1, Color3.fromRGB(8, 8, 10)),
    })
    mainGrad.Parent = mainCircle
    local mainStroke = Instance.new("UIStroke", mainCircle)
    mainStroke.Name = "MainStroke"; mainStroke.Color = Color3.fromRGB(255, 255, 255)
    mainStroke.Thickness = 1.6; mainStroke.Transparency = 0.15
    mainStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
    local genText = Instance.new("TextLabel")
    genText.Name = "GenText"; genText.AnchorPoint = Vector2.new(0.5, 0.5)
    genText.Position = UDim2.new(0.5, 0, 0.5, 0)
    genText.Size = UDim2.fromOffset(60, 30)
    genText.BackgroundTransparency = 1; genText.Font = Enum.Font.GothamBlack
    genText.Text = "GEN"; genText.TextColor3 = Color3.fromRGB(255, 255, 255)
    genText.TextSize = 20; genText.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
    genText.TextStrokeTransparency = 0.5
    genText.ZIndex = 7; genText.Parent = wrap
    local actionBtn = Instance.new("TextButton")
    actionBtn.Name = "ActionBtn"; actionBtn.Size = UDim2.fromScale(1, 1)
    actionBtn.BackgroundTransparency = 1; actionBtn.Text = ""
    actionBtn.AutoButtonColor = false; actionBtn.ZIndex = 10; actionBtn.Parent = wrap
    mainCircle.Size = UDim2.fromOffset(0, 0)
    glow.Size = UDim2.fromOffset(0, 0)
    genText.TextTransparency = 1; genText.TextStrokeTransparency = 1
    GenBypass._Wrap = wrap; GenBypass._Glow = glow
    GenBypass._MainCircle = mainCircle; GenBypass._MainStroke = mainStroke
    GenBypass._GenText = genText; GenBypass._ActionBtn = actionBtn
    local function ShowCard()
        wrap.Visible = true
        TweenService:Create(glow, TweenInfo.new(0.5, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {
            Size = UDim2.fromOffset(88, 88), BackgroundTransparency = 0.85,
        }):Play()
        TweenService:Create(mainCircle, TweenInfo.new(0.55, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {
            Size = UDim2.fromOffset(64, 64), BackgroundTransparency = 0.05,
        }):Play()
        TweenService:Create(genText, TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
            TextTransparency = 0, TextStrokeTransparency = 0.5,
        }):Play()
    end
    local function HideCard()
        TweenService:Create(glow, TweenInfo.new(0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.In), {
            Size = UDim2.fromOffset(0, 0), BackgroundTransparency = 1,
        }):Play()
        TweenService:Create(mainCircle, TweenInfo.new(0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.In), {
            Size = UDim2.fromOffset(0, 0), BackgroundTransparency = 1,
        }):Play()
        TweenService:Create(genText, TweenInfo.new(0.2), {
            TextTransparency = 1, TextStrokeTransparency = 1,
        }):Play()
        task.delay(0.3, function()
            if GenBypass._StopAnim then pcall(GenBypass._StopAnim); GenBypass._StopAnim = nil end
            if GenBypass.UI then pcall(function() GenBypass.UI:Destroy() end); GenBypass.UI = nil end
        end)
    end
    GenBypass._ShowCard = ShowCard; GenBypass._HideCard = HideCard
    local animActive = true
    GenBypass._StopAnim = function() animActive = false end
    task.spawn(function()
        local t = 0
        while animActive and wrap.Parent do
            t = t + 0.035
            if GenBypass.Enabled then
                local pulse = (math.sin(t * 3) + 1) * 0.5
                mainStroke.Transparency = 0.35 - pulse * 0.2
                mainStroke.Thickness = 1.6 + pulse * 0.4
                glow.BackgroundTransparency = 0.85 - pulse * 0.12
                glow.Size = UDim2.fromOffset(88 + pulse * 5, 88 + pulse * 5)
                genText.Rotation = math.sin(t * 1.2) * 1.5
            end
            task.wait(0.03)
        end
    end)
    local drag = false
    local dStart, sPos
    local dragDist = 0
    wrap.InputBegan:Connect(function(inp)
        if inp.UserInputType == Enum.UserInputType.MouseButton1 or inp.UserInputType == Enum.UserInputType.Touch then
            drag = true; dStart = inp.Position; sPos = wrap.Position; dragDist = 0
        end
    end)
    UserInputService.InputChanged:Connect(function(inp)
        if not drag then return end
        if inp.UserInputType == Enum.UserInputType.MouseMovement or inp.UserInputType == Enum.UserInputType.Touch then
            local d = inp.Position - dStart
            dragDist = math.abs(d.X) + math.abs(d.Y)
            wrap.Position = UDim2.new(sPos.X.Scale, sPos.X.Offset + d.X, sPos.Y.Scale, sPos.Y.Offset + d.Y)
        end
    end)
    UserInputService.InputEnded:Connect(function(inp)
        if inp.UserInputType == Enum.UserInputType.MouseButton1 or inp.UserInputType == Enum.UserInputType.Touch then
            drag = false
        end
    end)
    actionBtn.MouseButton1Up:Connect(function()
        if not GenBypass.Enabled then return end
        if dragDist > 6 then return end
        local bp, bd = W.GB_GetNearestPoint()
        if bp and bd <= GenBypass.TriggerRange then
            task.spawn(function() W.GB_DoRepair(bp) end)
        end
    end)
    task.spawn(function()
        task.wait(0.1)
        if GenBypass.Enabled then ShowCard() end
    end)
end
W.GB_CreateButton()
LocalPlayer.CharacterAdded:Connect(function()
    task.wait(0.5); W.GB_CreateButton()
end)
UserInputService.InputBegan:Connect(function(input, gp)
    if gp or isMobile then return end
    if input.KeyCode == GenBypass.HotkeyCode and GenBypass.Enabled then
        if not W.GB_IsPromptVisible() then return end
        local bp, bd = W.GB_GetNearestPoint()
        if not bp or bd > GenBypass.TriggerRange then return end
        if GenBypass.Processed[bp.Parent] then return end
        W.GB_DoRepair(bp)
    end
end)
task.spawn(function()
    while true do
        task.wait(2)
        local c = LocalPlayer.Character
        local hrp = c and c:FindFirstChild("HumanoidRootPart")
        if hrp then
            for gm in pairs(GenBypass.Processed) do
                if not gm or not gm.Parent then GenBypass.Processed[gm] = nil; continue end
                local near = false
                for _, p in pairs(W.GB_GetPoints(gm)) do
                    if p.Parent and (hrp.Position - p.Position).Magnitude <= 10 then near = true; break end
                end
                if not near then GenBypass.Processed[gm] = nil end
            end
        end
    end
end)

--====================================================--
-- UNLIMITED VAULT
--====================================================--
local UV_Enabled = false
local UV_Conn = nil
function W.UnlimitedVault_SetEnabled(v)
    OW.UnlimitedVault = v
    if v then
        if UV_Enabled then return end
        UV_Enabled = true
        for _, inst in ipairs(CollectionService:GetTagged("Blocked")) do
            CollectionService:RemoveTag(inst, "Blocked")
        end
        if UV_Conn then UV_Conn:Disconnect() end
        UV_Conn = CollectionService:GetInstanceAddedSignal("Blocked"):Connect(function(instance)
            CollectionService:RemoveTag(instance, "Blocked")
        end)
    else
        UV_Enabled = false
        if UV_Conn then UV_Conn:Disconnect(); UV_Conn = nil end
    end
end

--====================================================--
-- ANTI SLOW VAULT
--====================================================--
local ASV_Enabled = false
local ASV_Conn = nil
function W.AntiSlowVault_SetEnabled(v)
    OW.AntiSlowVault = v
    if v then
        if ASV_Enabled then return end
        ASV_Enabled = true
        for _, inst in ipairs(CollectionService:GetTagged("SlowVault")) do
            CollectionService:RemoveTag(inst, "SlowVault")
        end
        if ASV_Conn then ASV_Conn:Disconnect() end
        ASV_Conn = CollectionService:GetInstanceAddedSignal("SlowVault"):Connect(function(instance)
            CollectionService:RemoveTag(instance, "SlowVault")
        end)
    else
        ASV_Enabled = false
        if ASV_Conn then ASV_Conn:Disconnect(); ASV_Conn = nil end
    end
end

--====================================================--
-- AUTO RUN
--====================================================--
do
    local AutoRunPCThread = nil
    local AutoRunMobileThread = nil
    local function StartAutoRunPC()
        if AutoRunPCThread then task.cancel(AutoRunPCThread) end
        AutoRunPCThread = task.spawn(function()
            while OW.AutoRun_PC do
                pcall(function()
                    if VirtualInputManager then
                        VirtualInputManager:SendKeyEvent(true, Enum.KeyCode.LeftShift, false, LocalPlayer:GetMouse())
                    end
                end)
                task.wait(0.1)
            end
            pcall(function()
                if VirtualInputManager then VirtualInputManager:SendKeyEvent(false, Enum.KeyCode.LeftShift, false, LocalPlayer:GetMouse()) end
            end)
            AutoRunPCThread = nil
        end)
    end
    local function StopAutoRunPC()
        OW.AutoRun_PC = false
        if AutoRunPCThread then task.cancel(AutoRunPCThread); AutoRunPCThread = nil end
        pcall(function()
            if VirtualInputManager then VirtualInputManager:SendKeyEvent(false, Enum.KeyCode.LeftShift, false, LocalPlayer:GetMouse()) end
        end)
    end
    local function GetMobileSprintButton()
        local pg = LocalPlayer:FindFirstChild("PlayerGui"); if not pg then return nil end
        local mob = pg:FindFirstChild("Survivor-mob"); if not mob then return nil end
        local controls = mob:FindFirstChild("Controls"); if not controls then return nil end
        local sprint = controls:FindFirstChild("sprint"); if not sprint then return nil end
        if sprint:IsA("GuiButton") then return sprint end
        local icon = sprint:FindFirstChild("icon")
        if icon and icon:IsA("GuiButton") then return icon end
        if icon and icon.Parent and icon.Parent:IsA("GuiButton") then return icon.Parent end
        if sprint.Parent and sprint.Parent:IsA("GuiButton") then return sprint.Parent end
        return sprint
    end
    local function PressSprint()
        local btn = GetMobileSprintButton()
        if not btn then return false end
        pcall(function()
            if type(firesignal) == "function" then
                firesignal(btn.MouseButton1Click)
                firesignal(btn.MouseButton1Down)
                task.wait(0.04)
                firesignal(btn.MouseButton1Up)
            elseif VirtualInputManager and GuiService then
                local pos = btn.AbsolutePosition; local size = btn.AbsoluteSize
                local inset = GuiService:GetGuiInset()
                local x = pos.X + size.X / 2 + inset.X
                local y = pos.Y + size.Y / 2 + inset.Y
                local id = 9901
                VirtualInputManager:SendTouchEvent(id, 0, x, y)
                task.wait(0.04)
                VirtualInputManager:SendTouchEvent(id, 2, x, y)
            end
        end)
        return true
    end
    local function IsMoving()
        local char = LocalPlayer.Character; if not char then return false end
        local hum = char:FindFirstChildOfClass("Humanoid"); if not hum then return false end
        if hum.MoveDirection.Magnitude > 0.12 then return true end
        local hrp = char:FindFirstChild("HumanoidRootPart")
        if hrp then
            local v = hrp.AssemblyLinearVelocity
            if Vector3.new(v.X, 0, v.Z).Magnitude > 1.5 then return true end
        end
        return false
    end
    local function IsCrouching()
        local char = LocalPlayer.Character; if not char then return false end
        return char:GetAttribute("Crouching") == true or char:GetAttribute("Crouchingserver") == true
    end
    local function IsActuallySprinting()
        local char = LocalPlayer.Character; if not char then return false end
        return char:GetAttribute("Sprinting") == true or char:GetAttribute("IsRunning") == true
    end
    local function StartAutoRunMobile()
        if AutoRunMobileThread then return end
        AutoRunMobileThread = task.spawn(function()
            while OW.AutoRun_Mobile do
                local moving = IsMoving()
                local crouching = IsCrouching()
                local sprinting = IsActuallySprinting()
                if crouching then if sprinting then PressSprint() end
                else
                    if moving and not sprinting then PressSprint()
                    elseif not moving and sprinting then PressSprint() end
                end
                task.wait(0.12)
            end
            if IsActuallySprinting() then PressSprint() end
            AutoRunMobileThread = nil
        end)
    end
    function W.AutoRunPC_SetEnabled(v)
        OW.AutoRun_PC = v
        if v then StartAutoRunPC() else StopAutoRunPC() end
    end
    function W.AutoRunMobile_SetEnabled(v)
        OW.AutoRun_Mobile = v
        if v then StartAutoRunMobile() else OW.AutoRun_Mobile = false end
    end
    LocalPlayer.CharacterAdded:Connect(function()
        task.wait(1)
        if OW.AutoRun_PC then StartAutoRunPC() end
        if OW.AutoRun_Mobile then AutoRunMobileThread = nil; StartAutoRunMobile() end
    end)
end--====================================================--
-- AUTO PARRY V1 (Original ALFzxzzz)
--====================================================--
local ParryState = {
    LastParry = 0, ActiveAttackers = {},
    CircleFolder = nil, CircleDashes = {}, CircleRotCFs = {}, CircleOffsets = {},
    CircleRadius = 0, CircleBuiltForDagger = false,
    CircleLastX = math.huge, CircleLastY = math.huge, CircleLastZ = math.huge,
    CircleSpawnTime = 0, CircleSpawnDuration = 0.55,
}
local ParryCooldown = {
    OnCooldown = false, CooldownEnd = 0,
    WaitingForResult = false, WaitingStart = 0, WaitTimeout = 2.0,
    FallbackCooldown = 60, MaxCooldown = 90, LastFiredAt = 0,
    IsSilenced = false, JustFired = false, ManualDetect = false, ManualIgnoreWindow = 0.35
}
local parryResultRemote, parryFireRemote
pcall(function()
    local remotes = ReplicatedStorage:FindFirstChild("Remotes")
    local items = remotes and remotes:FindFirstChild("Items")
    local dagger = items and items:FindFirstChild("Parrying Dagger")
    if dagger then
        parryResultRemote = dagger:FindFirstChild("parryResult")
        parryFireRemote = dagger:FindFirstChild("parry")
    end
end)
local KillerAttackAnims = {
    ["78432063483146"]="attack",["121216847022485"]="attack",["74968262036854"]="attack",
    ["132817836308238"]="attack",["82666958311998"]="attack",["111920872708571"]="attack",
    ["106871536134254"]="attack",["109402730355822"]="attack",["130593238885843"]="attack",
    ["138720291317243"]="attack",["139369275981139"]="attack",["133963973694098"]="attack",
    ["78935059863801"]="attack",
    ["118907603246885"]="lungehold",["135002183282873"]="lungehold",["113255068724446"]="lungehold",
    ["129784271201071"]="lungehold",["105374834496520"]="lungehold",["117070354890871"]="lungehold",
    ["115244153053858"]="lungehold",["110355011987939"]="lungehold",["117042998468241"]="lungehold",
    ["122812055447896"]="lungehold"
}
local function ParryStartCooldown(d)
    d = math.clamp(tonumber(d) or 0, 0, ParryCooldown.MaxCooldown)
    if d <= 0 then d = ParryCooldown.FallbackCooldown end
    ParryCooldown.OnCooldown = true
    ParryCooldown.CooldownEnd = os.clock() + d
    ParryCooldown.WaitingForResult = false
    ParryCooldown.JustFired = false
    ParryCooldown.ManualDetect = false
end
local function ParryClearCooldown()
    ParryCooldown.OnCooldown = false
    ParryCooldown.CooldownEnd = 0
    ParryCooldown.WaitingForResult = false
    ParryCooldown.JustFired = false
    ParryCooldown.ManualDetect = false
end
local function ParryIsOnCooldown()
    if not ParryCooldown.OnCooldown then return false end
    if os.clock() >= ParryCooldown.CooldownEnd then ParryClearCooldown(); return false end
    return true
end
if parryResultRemote then
    parryResultRemote.OnClientEvent:Connect(function(success, cd)
        if not ParryCooldown.WaitingForResult and not ParryCooldown.JustFired then return end
        local c = tonumber(cd) or 0
        if success and c > 0 then ParryStartCooldown(math.min(c, ParryCooldown.MaxCooldown))
        else ParryStartCooldown(ParryCooldown.FallbackCooldown) end
    end)
end
local function ParryHookSilenced(char)
    if not char then return end
    ParryCooldown.IsSilenced = CollectionService:HasTag(char, "Silenced")
end
CollectionService:GetInstanceAddedSignal("Silenced"):Connect(function(i)
    if i == LocalPlayer.Character then ParryCooldown.IsSilenced = true end
end)
CollectionService:GetInstanceRemovedSignal("Silenced"):Connect(function(i)
    if i == LocalPlayer.Character then ParryCooldown.IsSilenced = false end
end)
LocalPlayer.CharacterAdded:Connect(function(c) task.wait(0.5); ParryHookSilenced(c) end)
if LocalPlayer.Character then ParryHookSilenced(LocalPlayer.Character) end

local ParryCharCache = { Char=nil, Root=nil, Hum=nil, UpperTorso=nil, CheckInt=nil }
local function ParryGetCharCache()
    local char = LocalPlayer.Character
    if char ~= ParryCharCache.Char then
        ParryCharCache.Char = char
        ParryCharCache.Root = nil; ParryCharCache.Hum = nil
        ParryCharCache.UpperTorso = nil; ParryCharCache.CheckInt = nil
    end
    if not char then return ParryCharCache end
    if not ParryCharCache.Root then ParryCharCache.Root = char:FindFirstChild("HumanoidRootPart") end
    if not ParryCharCache.Hum then ParryCharCache.Hum = char:FindFirstChildOfClass("Humanoid") end
    if not ParryCharCache.UpperTorso then
        ParryCharCache.UpperTorso = char:FindFirstChild("UpperTorso") or char:FindFirstChild("Torso")
    end
    if not ParryCharCache.CheckInt then ParryCharCache.CheckInt = char:FindFirstChild("CheckInterractable") end
    return ParryCharCache
end
local DaggerCache = { Value = false, LastCheck = 0, Interval = 0.15 }
local function ParryIsDaggerModel(inst)
    if not inst then return false end
    return inst:IsA("Model") or inst:IsA("Tool") or inst:IsA("Accessory")
end
local function ParryIsEquippedDagger()
    local now = os.clock()
    if now - DaggerCache.LastCheck < DaggerCache.Interval then return DaggerCache.Value end
    DaggerCache.LastCheck = now
    local hasDagger = false
    local char = LocalPlayer.Character
    if char then
        local d = char:FindFirstChild("Parrying Dagger")
        if ParryIsDaggerModel(d) then hasDagger = true end
    end
    if not hasDagger then
        local wsChar = Workspace:FindFirstChild(LocalPlayer.Name)
        if wsChar then
            local d = wsChar:FindFirstChild("Parrying Dagger")
            if ParryIsDaggerModel(d) then hasDagger = true end
        end
    end
    DaggerCache.Value = hasDagger
    return hasDagger
end
LocalPlayer.CharacterAdded:Connect(function() DaggerCache.Value = false; DaggerCache.LastCheck = 0 end)

local ParryCheckAttrs = {"isVaulting","isSliding","isDroppingPallet","isRepairing","isHealing","isUnhooking","isExiting"}
local function ParryIsBusy()
    local cc = ParryGetCharCache()
    if not cc.Char then return true end
    if LocalPlayer:GetAttribute("IsDead") then return true end
    if cc.Char:GetAttribute("IsCarried") then return true end
    if cc.Char:GetAttribute("IsHooked") then return true end
    if cc.Root and CollectionService:HasTag(cc.Root, "doing action") then return true end
    if cc.CheckInt then
        for i = 1, #ParryCheckAttrs do
            if cc.CheckInt:GetAttribute(ParryCheckAttrs[i]) then return true end
        end
    end
    return false
end
local function ParryIsLowHealth()
    local hum = ParryGetCharCache().Hum
    if not hum then return false end
    return hum.Health < hum.MaxHealth * 0.5
end
local function ParryCanFire()
    if not ParryIsEquippedDagger() then return false end
    if ParryCooldown.IsSilenced then return false end
    if ParryIsOnCooldown() then return false end
    if ParryCooldown.WaitingForResult then return false end
    if ParryIsBusy() then return false end
    if ParryIsLowHealth() then return false end
    return true
end
local function ParryExecuteMobile()
    local didFire = false
    local pGui = LocalPlayer:FindFirstChildOfClass("PlayerGui")
    if pGui and type(firesignal) == "function" then
        local mobRoot = pGui:FindFirstChild("Survivor-mob")
        local controls = mobRoot and mobRoot:FindFirstChild("Controls")
        if controls then
            for _, n in ipairs({"Gui-mob","action","Gui-mobile","Gui_mob","Parry","parry"}) do
                local btn = controls:FindFirstChild(n)
                if btn and btn:IsA("GuiButton") then
                    pcall(function()
                        firesignal(btn.MouseButton1Down)
                        task.delay(0.05, function()
                            if btn and btn.Parent then
                                firesignal(btn.MouseButton1Up)
                                firesignal(btn.MouseButton1Click)
                            end
                        end)
                    end)
                    didFire = true; break
                end
            end
        end
    end
    if not didFire then
        local remote = ReplicatedStorage:FindFirstChild("Remotes")
        local items = remote and remote:FindFirstChild("Items")
        local dagger = items and items:FindFirstChild("Parrying Dagger")
        local parry = dagger and dagger:FindFirstChild("parry")
        if parry then pcall(function() parry:FireServer() end) end
    end
end
local function ParryExecutePC()
    if not VirtualInputManager then return end
    pcall(function()
        VirtualInputManager:SendMouseMoveEvent(0, 0, game)
        task.wait(0.005)
        VirtualInputManager:SendMouseButtonEvent(0, 0, 2, true, game, 0)
        task.wait(0.05)
        VirtualInputManager:SendMouseButtonEvent(0, 0, 2, false, game, 0)
    end)
end
local function ParryExecuteSilent()
    if parryFireRemote then return pcall(function() parryFireRemote:FireServer() end) end
    return false
end
local function ParryExecute()
    if not ParryCanFire() then return end
    ParryState.LastParry = os.clock()
    ParryCooldown.LastFiredAt = os.clock()
    ParryCooldown.WaitingForResult = true
    ParryCooldown.WaitingStart = os.clock()
    ParryCooldown.JustFired = true
    ParryCooldown.ManualDetect = false
    if OW.ParryV1_Silent then ParryExecuteSilent(); return end
    if isMobile then ParryExecuteMobile() else ParryExecutePC() end
end
local function ParryMarkManual()
    if not ParryIsEquippedDagger() then return end
    if ParryCooldown.IsSilenced then return end
    if os.clock() - ParryCooldown.LastFiredAt < ParryCooldown.ManualIgnoreWindow then return end
    if ParryCooldown.OnCooldown or ParryCooldown.WaitingForResult then return end
    ParryCooldown.WaitingForResult = true
    ParryCooldown.WaitingStart = os.clock()
    ParryCooldown.JustFired = true
    ParryCooldown.ManualDetect = true
    ParryCooldown.LastFiredAt = os.clock()
end
UserInputService.InputBegan:Connect(function(input, gp)
    if input.UserInputType ~= Enum.UserInputType.MouseButton2 then return end
    if gp then return end
    ParryMarkManual()
end)
local parryHookedButtons = setmetatable({}, {__mode = "k"})
local function ParryTryHookMobileButton(inst)
    if not inst or not inst:IsA("GuiButton") then return end
    if parryHookedButtons[inst] then return end
    local nm = inst.Name
    if nm ~= "Gui-mob" and nm ~= "action" and nm ~= "Gui-mobile"
        and nm ~= "Gui_mob" and nm ~= "Parry" and nm ~= "parry" then return end
    parryHookedButtons[inst] = true
    inst.MouseButton1Down:Connect(ParryMarkManual)
end
local function ParryScanForMobileButtons(root)
    if not root then return end
    for _, d in ipairs(root:GetDescendants()) do ParryTryHookMobileButton(d) end
end
local function ParryAttachPlayerGui(pGui)
    if not pGui then return end
    ParryScanForMobileButtons(pGui)
    pGui.DescendantAdded:Connect(ParryTryHookMobileButton)
end
local existingPGui = LocalPlayer:FindFirstChildOfClass("PlayerGui")
if existingPGui then ParryAttachPlayerGui(existingPGui) end
LocalPlayer.ChildAdded:Connect(function(c)
    if c:IsA("PlayerGui") then ParryAttachPlayerGui(c) end
end)

local function ParryGetHitboxPart(char)
    if not char then return nil end
    return char:FindFirstChild("UpperTorso") or char:FindFirstChild("Torso") or char:FindFirstChild("HumanoidRootPart")
end
local function ParryCheckAndParry(killerChar)
    if ParryIsOnCooldown() or ParryCooldown.WaitingForResult
        or ParryCooldown.IsSilenced or not ParryIsEquippedDagger() then return end
    local cc = ParryGetCharCache()
    local myRoot = cc.UpperTorso or cc.Root
    local killerPart = ParryGetHitboxPart(killerChar)
    if not myRoot or not killerPart then return end
    local dist = (myRoot.Position - killerPart.Position).Magnitude
    if OW.ParryV1_Aggressive then
        local ping = math.clamp(LocalPlayer:GetNetworkPing(), 0, 0.3)
        local killerRoot = killerChar:FindFirstChild("HumanoidRootPart") or killerPart
        local killerVel = killerRoot.AssemblyLinearVelocity
        local flatVel = Vector3.new(killerVel.X, 0, killerVel.Z)
        local predictedPos = killerPart.Position + flatVel * ping
        local predDist = (myRoot.Position - predictedPos).Magnitude
        if predDist <= ((OW.ParryV1_Distance or 10) + 2.5) then
            if flatVel.Magnitude > 6 then
                local dir = myRoot.Position - killerPart.Position
                if dir.Magnitude > 0 and flatVel.Unit:Dot(dir.Unit) > 0.4 then ParryExecute(); return end
            end
        end
    end
    if dist <= (OW.ParryV1_Distance or 10) then ParryExecute() end
end
local function ParryDestroyCircle()
    if ParryState.CircleFolder then
        pcall(function() if ParryState.CircleFolder.Parent then ParryState.CircleFolder:Destroy() end end)
    end
    ParryState.CircleFolder = nil
    ParryState.CircleDashes = {}
    ParryState.CircleRotCFs = {}
    ParryState.CircleOffsets = {}
    ParryState.CircleRadius = 0
    ParryState.CircleBuiltForDagger = false
    ParryState.CircleLastX = math.huge
    ParryState.CircleLastY = math.huge
    ParryState.CircleLastZ = math.huge
    ParryState.CircleSpawnTime = 0
end
getgenv()._OneW_DestroyParryCircle = ParryDestroyCircle
local function ParryBuildCircle(radius)
    ParryDestroyCircle()
    local folder = Instance.new("Folder")
    folder.Name = "OneWParryCircleDashes"
    local dashCount = math.clamp(math.floor(radius * 6), 24, 120)
    local slotLength = (2 * math.pi * radius) / dashCount
    local dashLength = slotLength * 0.55
    local dashThickness = 0.03
    local dashes, rotCFs, offsets = table.create(dashCount), table.create(dashCount), table.create(dashCount)
    for i = 1, dashCount do
        local part = Instance.new("Part")
        part.Name = "Dash" .. i
        part.Anchored = true; part.CanCollide = false
        part.CanTouch = false; part.CanQuery = false; part.CastShadow = false
        part.Material = Enum.Material.Neon
        part.Color = Color3.fromRGB(255, 255, 255)
        part.Transparency = 1
        part.Size = Vector3.new(dashThickness, dashThickness, dashLength)
        part.Parent = folder
        local angle = ((i - 1) / dashCount) * math.pi * 2
        local cosA, sinA = math.cos(angle), math.sin(angle)
        rotCFs[i] = CFrame.lookAt(Vector3.zero, Vector3.new(-sinA, 0, cosA))
        offsets[i] = Vector3.new(cosA * radius, 0, sinA * radius)
        dashes[i] = part
    end
    folder.Parent = Workspace
    ParryState.CircleFolder = folder
    ParryState.CircleDashes = dashes
    ParryState.CircleRotCFs = rotCFs
    ParryState.CircleOffsets = offsets
    ParryState.CircleRadius = radius
    ParryState.CircleBuiltForDagger = true
    ParryState.CircleSpawnTime = tick()
end
local function ParryUpdateCircle(myRoot)
    if not ParryState.CircleFolder or not ParryState.CircleFolder.Parent then return end
    local dashes = ParryState.CircleDashes
    local dashCount = #dashes
    if dashCount == 0 then return end
    local center = myRoot.Position - Vector3.new(0, (myRoot.Size.Y * 0.5) + 1.0, 0)
    local elapsed = tick() - (ParryState.CircleSpawnTime or 0)
    local spawnT = math.clamp(elapsed / (ParryState.CircleSpawnDuration or 0.55), 0, 1)
    local eased = 1 - (1 - spawnT)^3
    local scaleMult = eased
    if spawnT < 0.7 and spawnT > 0 then
        local bt = spawnT / 0.7
        scaleMult = eased + math.sin(bt * math.pi) * 0.1
    end
    local spinRot = (1 - eased) * math.pi * 2
    local spawnAlpha = 1 - eased
    local busy = ParryIsBusy()
    local onCD = ParryCooldown.OnCooldown
    local tc
    if busy then tc = Color3.fromRGB(255, 20, 20)
    elseif onCD then tc = Color3.fromRGB(255, 140, 0)
    else tc = Color3.fromRGB(255, 255, 255) end
    local targetT = 0
    if onCD then
        local period = 0.55
        local phase = (os.clock() % period) / period
        local pulse = (math.cos(phase * math.pi * 2) + 1) * 0.5
        targetT = (1 - pulse) * 0.85
    end
    local finalT = math.max(targetT, spawnAlpha)
    local dx = math.abs(center.X - ParryState.CircleLastX)
    local dy = math.abs(center.Y - ParryState.CircleLastY)
    local dz = math.abs(center.Z - ParryState.CircleLastZ)
    if dx < 0.01 and dy < 0.01 and dz < 0.01 and spawnT >= 1 then return end
    ParryState.CircleLastX = center.X
    ParryState.CircleLastY = center.Y
    ParryState.CircleLastZ = center.Z
    local rotCFs = ParryState.CircleRotCFs
    local offsets = ParryState.CircleOffsets
    local rotCF = CFrame.Angles(0, spinRot, 0)
    for i = 1, dashCount do
        local dash = dashes[i]
        if dash and dash.Parent then
            local scaledOff = offsets[i] * scaleMult
            local rotatedOff = rotCF:VectorToWorldSpace(scaledOff)
            local worldPos = Vector3.new(center.X + rotatedOff.X, center.Y, center.Z + rotatedOff.Z)
            dash.CFrame = (rotCF * rotCFs[i]) + worldPos
            dash.Color = tc
            dash.Transparency = finalT
        end
    end
end
local function ParryGetAnimType(track)
    if not track or not track.Animation then return nil end
    local animId = track.Animation.AnimationId or ""
    local numId = animId:match("%d+") or ""
    local name = string.lower(track.Animation.Name or "")
    local v = KillerAttackAnims[animId]
    if v then return v end
    if numId ~= "" then v = KillerAttackAnims[numId]; if v then return v end end
    if string.find(name, "lunge", 1, true) or string.find(name, "charge", 1, true) then return "lungehold" end
    if string.find(name, "attack", 1, true) or string.find(name, "slash", 1, true)
        or string.find(name, "swing", 1, true) or string.find(name, "stab", 1, true)
        or string.find(name, "melee", 1, true) then return "attack" end
    return nil
end
local function ParryHookAnimatorOnChar(plr, char)
    if not char then return end
    local hum = char:FindFirstChildOfClass("Humanoid")
    if not hum then return end
    local anim = hum:FindFirstChildOfClass("Animator") or hum:WaitForChild("Animator", 3)
    if not anim then return end
    anim.AnimationPlayed:Connect(function(track)
        if not OW.ParryV1_Enabled then return end
        if not ParryIsEquippedDagger() then return end
        local at = ParryGetAnimType(track)
        if at then
            ParryState.ActiveAttackers[plr] = { char = char, track = track, type = at, registeredAt = os.clock() }
        end
    end)
end
local function ParryHookKillerPlayer(plr)
    if plr == LocalPlayer then return end
    if plr.Character then ParryHookAnimatorOnChar(plr, plr.Character) end
    plr.CharacterAdded:Connect(function(char) task.wait(0.5); ParryHookAnimatorOnChar(plr, char) end)
end
for _, p in ipairs(Players:GetPlayers()) do ParryHookKillerPlayer(p) end
Players.PlayerAdded:Connect(ParryHookKillerPlayer)
local parryLastPoll = 0
local function ParryPollAttacks()
    if not OW.ParryV1_Enabled or not ParryIsEquippedDagger() then return end
    local now = os.clock()
    if now - parryLastPoll < 0.15 then return end
    parryLastPoll = now
    for _, plr in ipairs(Players:GetPlayers()) do
        if plr ~= LocalPlayer then
            local char = plr.Character
            if char then
                local hum = char:FindFirstChildOfClass("Humanoid")
                if hum then
                    for _, track in ipairs(hum:GetPlayingAnimationTracks()) do
                        local at = ParryGetAnimType(track)
                        if at then
                            local ex = ParryState.ActiveAttackers[plr]
                            if not ex or ex.track ~= track then
                                ParryState.ActiveAttackers[plr] = { char = char, track = track, type = at, registeredAt = now }
                            end
                        end
                    end
                end
            end
        end
    end
end
local parryLastCleanup = 0
local function ParryCleanupAttackers()
    local now = os.clock()
    if now - parryLastCleanup < 1.0 then return end
    parryLastCleanup = now
    for plr, data in pairs(ParryState.ActiveAttackers) do
        if not plr or not plr.Parent or not data.track or not data.track.IsPlaying then
            ParryState.ActiveAttackers[plr] = nil
        end
    end
end
local function ParryUpdateLogic()
    if not OW.ParryV1_Enabled then return end
    if not ParryIsEquippedDagger() then ParryState.ActiveAttackers = {}; return end
    if ParryCooldown.WaitingForResult then
        if os.clock() - ParryCooldown.WaitingStart > ParryCooldown.WaitTimeout then
            if ParryCooldown.ManualDetect then
                ParryCooldown.WaitingForResult = false
                ParryCooldown.JustFired = false
                ParryCooldown.ManualDetect = false
            else
                ParryStartCooldown(ParryCooldown.FallbackCooldown)
            end
        end
    end
    if ParryIsOnCooldown() or ParryCooldown.WaitingForResult then return end
    ParryPollAttacks()
    ParryCleanupAttackers()
    for plr, data in pairs(ParryState.ActiveAttackers) do
        if plr and plr.Parent and data.track and data.track.IsPlaying then
            local shouldCheck = false
            if data.type == "attack" then
                if data.track.TimePosition < 0.35 then shouldCheck = true end
            elseif data.type == "lungehold" then
                shouldCheck = true
            end
            if shouldCheck then
                ParryCheckAndParry(data.char)
                if ParryCooldown.WaitingForResult then break end
            end
        else
            ParryState.ActiveAttackers[plr] = nil
        end
    end
end
local function ParryUpdateCircleLogic()
    local char = LocalPlayer.Character
    local myRoot = char and char:FindFirstChild("HumanoidRootPart")
    if OW.ParryV1_ShowRange and OW.ParryV1_Enabled and ParryIsEquippedDagger() and myRoot then
        if not ParryState.CircleFolder or ParryState.CircleRadius ~= (OW.ParryV1_Distance or 10) or not ParryState.CircleFolder.Parent then
            ParryBuildCircle(OW.ParryV1_Distance or 10)
        end
        ParryUpdateCircle(myRoot)
    else
        if ParryState.CircleFolder then ParryDestroyCircle() end
    end
end

--====================================================--
-- AUTO PARRY V2 (Wisnu)
--====================================================--
do
    local W_VALID_PARRY_IDS = {
        ["122812055447896"] = "Veil lunge",
        ["133963973694098"] = "Mayers Basic",
        ["117042998468241"] = "Mayers lunge",
        ["135002183282873"] = "cure lunge",
        ["121216847022485"] = "cure Basic",
        ["132817836308238"] = "Jeff Basic",
        ["129784271201071"] = "Jeff lunge",
        ["82666958311998"]  = "Jeff Frenzy",
        ["78432063483146"]  = "Abyssal Basic",
        ["118907603246885"] = "Abyssal lunge",
        ["139369275981139"] = "Jason Basic",
        ["110355011987939"] = "Jason lunge",
        ["111920872708571"] = "Masked Basic",
        ["105374834496520"] = "Masked lunge",
        ["138720291317243"] = "Masked Tony",
        ["106871536134254"] = "Masked Alex",
        ["130593238885843"] = "Masked Cobra",
        ["115244153053858"] = "Masked Cobra lunge",
        ["74968262036854"]  = "Hidden Basic",
        ["113255068724446"] = "Hidden lunge",
        ["98163597193511"]  = "Hidden S1",
        ["80411309607666"]  = "Abyssal S1"
    }

    local W_State = { Cooldown = false, CooldownThread = nil, lastParry = 0, Adornment = nil }
    local W_Attached = {}

    local function W_IsKiller(p) return p and p.Team and p.Team.Name == "Killer" end
    local function W_IsDowned(char) return char and (char:GetAttribute("Knocked") == true or char:GetAttribute("IsHooked") == true) end
    local function W_IsSafeToParry(char)
        if not OW.ParryV2_Safety then return true end
        if not char then return false end
        local interactObj = char:FindFirstChild("CheckInterractable")
        if interactObj then
            if interactObj:GetAttribute("isVaulting") == true then return false end
            if interactObj:GetAttribute("isRepairing") == true then return false end
            if interactObj:GetAttribute("isUnhooking") == true then return false end
            if interactObj:GetAttribute("isHealing") == true then return false end
            if interactObj:GetAttribute("isSliding") == true then return false end
        end
        return true
    end

    local function W_PressRightClick()
        if not VirtualInputManager then return end
        pcall(function()
            VirtualInputManager:SendMouseButtonEvent(0, 0, 1, true, game, 0)
            task.wait()
            VirtualInputManager:SendMouseButtonEvent(0, 0, 1, false, game, 0)
        end)
    end

    local function W_TapMobileParryButton()
        local playerGui = LocalPlayer:FindFirstChild("PlayerGui")
        if not playerGui then return end
        local survivorMob = playerGui:FindFirstChild("Survivor-mob")
        local parryBtn = survivorMob and survivorMob:FindFirstChild("Controls") and survivorMob.Controls:FindFirstChild("Gui-mob")
        if parryBtn and parryBtn.Visible then
            if firesignal then
                pcall(function()
                    firesignal(parryBtn.MouseButton1Down)
                    task.wait(0.01)
                    firesignal(parryBtn.MouseButton1Up)
                end)
            end
        else
            W_PressRightClick()
        end
    end

    local function W_ExecuteParry()
        if W_State.Cooldown then return end
        W_State.lastParry = tick()
        pcall(function()
            local parryRemote = ReplicatedStorage:FindFirstChild("Remotes")
                :FindFirstChild("Items")
                :FindFirstChild("Parrying Dagger")
                :FindFirstChild("parry")
            if parryRemote then
                for i = 1, 10 do parryRemote:FireServer() end
            end
            task.spawn(W_TapMobileParryButton)
        end)
    end

    task.spawn(function()
        local remotes = ReplicatedStorage:WaitForChild("Remotes", 5)
        local dagger = remotes and remotes:WaitForChild("Items", 5):WaitForChild("Parrying Dagger", 5)
        local parryResultRemote = dagger and dagger:WaitForChild("parryResult", 5)
        if parryResultRemote then
            parryResultRemote.OnClientEvent:Connect(function(arg1, arg2)
                local cdDur = tonumber(arg2) or ((arg1 == true) and 90 or 60)
                W_State.Cooldown = true
                if W_State.CooldownThread then task.cancel(W_State.CooldownThread) end
                W_State.CooldownThread = task.delay(cdDur, function()
                    W_State.Cooldown = false
                end)
            end)
        end
    end)

    local function W_AttachParrySensor(kChar)
        if not kChar or W_Attached[kChar] then return end
        W_Attached[kChar] = true
        local humanoid = kChar:FindFirstChild("Humanoid")
        if not humanoid then humanoid = kChar:WaitForChild("Humanoid", 5); if not humanoid then return end end
        local animator = humanoid:FindFirstChildOfClass("Animator")
        if not animator then animator = humanoid:WaitForChild("Animator", 5); if not animator then return end end

        humanoid.ChildAdded:Connect(function(child)
            if child:IsA("Animator") then W_Attached[kChar] = nil; W_AttachParrySensor(kChar) end
        end)
        kChar.AncestryChanged:Connect(function(_, parent)
            if not parent then W_Attached[kChar] = nil end
        end)

        animator.AnimationPlayed:Connect(function(track)
            local animId = track.Animation and track.Animation.AnimationId or ""
            local id = animId:match("%d+")
            local attackName = W_VALID_PARRY_IDS[id]
            if not attackName then return end
            if not OW.ParryV2_Enabled then return end
            if W_State.Cooldown then return end
            if OW.ParryV2_Ignored and OW.ParryV2_Ignored[attackName] then return end

            local myChar = LocalPlayer.Character
            if W_IsDowned(myChar) or not W_IsSafeToParry(myChar) then return end
            local myHRP = myChar and myChar:FindFirstChild("HumanoidRootPart")
            local kHRP = kChar:FindFirstChild("HumanoidRootPart")
            if not myHRP or not kHRP then return end

            local startDistance = (myHRP.Position - kHRP.Position).Magnitude

            if OW.ParryV2_Aggressive then
                local aggressiveRadius = 12
                local detectionRadius = OW.ParryV2_Distance + 5
                if startDistance > detectionRadius then return end
                if startDistance <= aggressiveRadius then
                    W_ExecuteParry()
                else
                    local tracker
                    local startTime = os.clock()
                    tracker = RunService.Heartbeat:Connect(function()
                        if os.clock() - startTime >= 1.5 or W_State.Cooldown or not myHRP or not kHRP or W_IsDowned(myChar) then
                            if tracker then tracker:Disconnect() end
                            return
                        end
                        if (myHRP.Position - kHRP.Position).Magnitude <= aggressiveRadius then
                            W_ExecuteParry()
                            if tracker then tracker:Disconnect() end
                        end
                    end)
                end
            else
                if startDistance > OW.ParryV2_Distance then return end
                local myPosFlat = Vector3.new(myHRP.Position.X, 0, myHRP.Position.Z)
                local kPosFlat = Vector3.new(kHRP.Position.X, 0, kHRP.Position.Z)
                local flatDelta = myPosFlat - kPosFlat
                if flatDelta.Magnitude > 0 then
                    local flatDirection = flatDelta.Unit
                    local kLookFlat = Vector3.new(kHRP.CFrame.LookVector.X, 0, kHRP.CFrame.LookVector.Z).Unit
                    if kLookFlat:Dot(flatDirection) < OW.ParryV2_Face then return end
                end
                W_ExecuteParry()
            end
        end)
    end

    local function W_TryAttach(p)
        if p ~= LocalPlayer and W_IsKiller(p) and p.Character then W_AttachParrySensor(p.Character) end
    end

    local function W_SetupPlayer(p)
        if p == LocalPlayer then return end
        p.CharacterAdded:Connect(function() W_TryAttach(p) end)
        p:GetPropertyChangedSignal("Team"):Connect(function() W_TryAttach(p) end)
        if p.Character then W_TryAttach(p) end
    end

    for _, p in pairs(Players:GetPlayers()) do W_SetupPlayer(p) end
    Players.PlayerAdded:Connect(W_SetupPlayer)
    task.spawn(function()
        while true do
            task.wait(5)
            for _, p in pairs(Players:GetPlayers()) do W_TryAttach(p) end
        end
    end)

    RunService.Heartbeat:Connect(function()
        local char = LocalPlayer.Character
        local hrp = char and char:FindFirstChild("HumanoidRootPart")
        if OW.ParryV2_ShowCircle and OW.ParryV2_Enabled and hrp then
            if not W_State.Adornment or W_State.Adornment.Parent ~= hrp then
                if W_State.Adornment then W_State.Adornment:Destroy() end
                W_State.Adornment = Instance.new("CylinderHandleAdornment")
                W_State.Adornment.Name = "OneWParryV2CircleESP"
                W_State.Adornment.Height = 0.05
                W_State.Adornment.Transparency = 0.3
                W_State.Adornment.Adornee = hrp
                W_State.Adornment.Parent = hrp
                W_State.Adornment.ZIndex = 0
                W_State.Adornment.AlwaysOnTop = false
            end
            local cR = OW.ParryV2_Distance
            W_State.Adornment.Radius = cR
            W_State.Adornment.InnerRadius = math.max(0.1, cR - 0.15)
            W_State.Adornment.CFrame = CFrame.new(0, -3, 0) * CFrame.Angles(math.rad(90), 0, 0)
            if W_State.Cooldown then
                W_State.Adornment.Color3 = Color3.fromRGB(128, 128, 128)
            else
                W_State.Adornment.Color3 = Color3.fromRGB(255, 255, 255)
            end
        elseif W_State.Adornment then
            W_State.Adornment:Destroy()
            W_State.Adornment = nil
        end
    end)
end

--====================================================--
-- NEXT MAP PREDICTION
--====================================================--
do
    local MapPredictState = { Gui = nil, Thread = nil, Enabled = false, LastMap = "Unknown" }

    local function DetectMapName(map)
        if not map then return nil end
        if map:FindFirstChild("random shakes") or map:FindFirstChild("SCP-173 Room") or map:FindFirstChild("SCP-205 Room") then
            return "Site 68"
        elseif map:FindFirstChild("HooksMeat") then
            return "BLOODBATH! Club"
        elseif map:FindFirstChild("Gate") and map.Gate:FindFirstChild("vfx") then
            return "Firelink Shrine"
        elseif map:FindFirstChild("Bldg_Addon_RooftopUnit_A") or map:FindFirstChild("Rooftop") then
            return "Mercy Hospital Rooftop"
        elseif map:FindFirstChild("White Armored Car") then
            return "Mount Massive Asylum"
        elseif map:FindFirstChild("Dumbster") then
            return "The Bay Harbor"
        elseif map:FindFirstChild("water pump") then
            return "Valdelobos Village"
        elseif map:FindFirstChild("LargeBoulder01") then
            return "Woodview Cabin"
        end
        return nil
    end

    local function BuildMapGui()
        if MapPredictState.Gui then pcall(function() MapPredictState.Gui:Destroy() end) end
        local pg = LocalPlayer:FindFirstChild("PlayerGui")
        if gethui then
            local ok, hui = pcall(gethui)
            if ok and hui then pg = hui end
        end
        if not pg then return end

        local gui = Instance.new("ScreenGui")
        gui.Name = "OneWMapPredict"
        gui.ResetOnSpawn = false
        gui.IgnoreGuiInset = true
        gui.DisplayOrder = 50
        gui.Parent = pg

        local frame = Instance.new("Frame")
        frame.Name = "MainFrame"
        frame.Size = UDim2.new(0, 210, 0, 54)
        frame.Position = UDim2.new(0.5, -105, 0, 110)
        frame.BackgroundColor3 = Color3.fromRGB(12, 12, 18)
        frame.BackgroundTransparency = 0.15
        frame.BorderSizePixel = 0
        frame.Active = true
        frame.Parent = gui
        Instance.new("UICorner", frame).CornerRadius = UDim.new(0, 10)
        local stroke = Instance.new("UIStroke", frame)
        stroke.Color = Color3.fromRGB(255, 255, 255)
        stroke.Thickness = 1.5
        stroke.Transparency = 0.2
        stroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

        local title = Instance.new("TextLabel")
        title.Size = UDim2.new(1, 0, 0, 15)
        title.Position = UDim2.new(0, 0, 0, 5)
        title.BackgroundTransparency = 1
        title.Text = "NEXT MAP PREDICTION"
        title.TextColor3 = Color3.fromRGB(150, 180, 255)
        title.Font = Enum.Font.GothamBold
        title.TextSize = 10
        title.Parent = frame

        local mapName = Instance.new("TextLabel")
        mapName.Name = "MapName"
        mapName.Size = UDim2.new(1, -12, 0, 18)
        mapName.Position = UDim2.new(0, 6, 0, 21)
        mapName.BackgroundTransparency = 1
        mapName.Text = "Scanning..."
        mapName.TextColor3 = Color3.fromRGB(255, 255, 255)
        mapName.Font = Enum.Font.GothamBold
        mapName.TextSize = 13
        mapName.TextXAlignment = Enum.TextXAlignment.Center
        mapName.Parent = frame

        local status = Instance.new("TextLabel")
        status.Name = "StatusLabel"
        status.Size = UDim2.new(1, -12, 0, 12)
        status.Position = UDim2.new(0, 6, 0, 38)
        status.BackgroundTransparency = 1
        status.Text = "Status: Waiting"
        status.TextColor3 = Color3.fromRGB(150, 150, 150)
        status.Font = Enum.Font.GothamMedium
        status.TextSize = 9
        status.TextXAlignment = Enum.TextXAlignment.Center
        status.Parent = frame

        local dragging, dragStart, startPos = false, nil, nil
        frame.InputBegan:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
                dragging = true; dragStart = input.Position; startPos = frame.Position
            end
        end)
        UserInputService.InputChanged:Connect(function(input)
            if not dragging then return end
            if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
                local d = input.Position - dragStart
                frame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + d.X, startPos.Y.Scale, startPos.Y.Offset + d.Y)
            end
        end)
        UserInputService.InputEnded:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
                dragging = false
            end
        end)

        MapPredictState.Gui = gui
    end

    function W.NextMapPredict_Start()
        if MapPredictState.Enabled then return end
        MapPredictState.Enabled = true
        BuildMapGui()
        MapPredictState.Thread = task.spawn(function()
            local lastDetected, lastExisted = nil, false
            while MapPredictState.Enabled do
                local map = Workspace:FindFirstChild("Map")
                local mapExists = map ~= nil
                local detected = mapExists and DetectMapName(map) or nil
                local gui = MapPredictState.Gui
                local frame = gui and gui:FindFirstChild("MainFrame")
                local nameLabel = frame and frame:FindFirstChild("MapName")
                local statusLabel = frame and frame:FindFirstChild("StatusLabel")
                if nameLabel and statusLabel then
                    if lastExisted and not mapExists then
                        nameLabel.Text = lastDetected or "Unknown"
                        statusLabel.Text = "Status: Loading next map..."
                        statusLabel.TextColor3 = Color3.fromRGB(255, 200, 50)
                    elseif mapExists then
                        lastDetected = detected or "Unknown"
                        nameLabel.Text = detected or "Unknown"
                        statusLabel.Text = "Status: In-Game"
                        statusLabel.TextColor3 = Color3.fromRGB(120, 255, 120)
                    else
                        nameLabel.Text = "Waiting..."
                        statusLabel.Text = "Status: Lobby"
                        statusLabel.TextColor3 = Color3.fromRGB(150, 150, 160)
                    end
                end
                lastExisted = mapExists
                task.wait(0.5)
            end
        end)
    end
    function W.NextMapPredict_Stop()
        MapPredictState.Enabled = false
        if MapPredictState.Thread then pcall(function() task.cancel(MapPredictState.Thread) end); MapPredictState.Thread = nil end
        if MapPredictState.Gui then pcall(function() MapPredictState.Gui:Destroy() end); MapPredictState.Gui = nil end
    end
end

--====================================================--
-- BYPASS SELF UNHOOK
--====================================================--
W.SelfUnhook = W.SelfUnhook or {
    Enabled=false, Following=false, FollowDuration=30, FollowDistance=20,
    MonitorConn=nil, TriggerCount=0, _lastTrigger=0, _cooldown=3,
    _hookPos=nil, _hookCFrame=nil, _activeThread=nil, _wasHooked=false
}
local SU = W.SelfUnhook
function W.SU_IsHooked()
    local char = LocalPlayer.Character
    if not char then return false end
    return char:GetAttribute("IsHooked") == true or char:GetAttribute("isHooked") == true
        or char:GetAttribute("Hooked") == true or char:GetAttribute("HookedState") == true
end
function W.SU_GetRandomGeneratorPoint()
    local gens = W.GB_GetAllGenerators()
    if not gens or #gens == 0 then return nil end
    local valid = {}
    for _, g in ipairs(gens) do
        if g and g.Parent then
            for _, p in ipairs(W.GB_GetPoints(g)) do
                if p and p.Parent then table.insert(valid, p) end
            end
        end
    end
    if #valid == 0 then return nil end
    return valid[math.random(1, #valid)]
end
function W.SU_GetKillerHRP()
    for _, p in ipairs(Players:GetPlayers()) do
        if p ~= LocalPlayer and TeamIs(p, "Killer") and p.Character then
            local hrp = p.Character:FindFirstChild("HumanoidRootPart")
            if hrp then return hrp end
        end
    end
    return nil
end
function W.SU_Abort()
    SU.Following = false
    if SU._activeThread and coroutine.status(SU._activeThread) ~= "dead" then
        pcall(function() task.cancel(SU._activeThread) end)
    end
    SU._activeThread = nil
end
function W.SU_Trigger()
    if SU.Following then return end
    local now = tick()
    if now - SU._lastTrigger < SU._cooldown then return end
    if not W.SU_IsHooked() then return end
    SU._lastTrigger = now; SU.Following = true
    SU.TriggerCount = SU.TriggerCount + 1
    local char = LocalPlayer.Character
    if char then
        local hrp = char:FindFirstChild("HumanoidRootPart")
        if hrp then SU._hookPos = hrp.Position; SU._hookCFrame = hrp.CFrame end
    end
    SU._activeThread = task.spawn(function()
        local c = LocalPlayer.Character
        if not c then SU.Following = false; SU._activeThread = nil; return end
        local hrp = c:FindFirstChild("HumanoidRootPart")
        if not hrp then SU.Following = false; SU._activeThread = nil; return end
        local re = ReplicatedStorage:FindFirstChild("Remotes")
            and ReplicatedStorage.Remotes:FindFirstChild("Generator")
            and ReplicatedStorage.Remotes.Generator:FindFirstChild("RepairEvent")
        if not W.SU_IsHooked() then SU.Following = false; SU._activeThread = nil; return end
        local tp = W.SU_GetRandomGeneratorPoint()
        if tp then
            pcall(function() hrp.Velocity = Vector3.zero; hrp.CFrame = tp.CFrame + Vector3.new(0, 3, 0) end)
            task.wait(0.15)
            if re then
                pcall(function() re:FireServer(tp, true) end); task.wait(0.35)
                pcall(function() re:FireServer(tp, false) end); task.wait(0.15)
                pcall(function() re:FireServer(tp, true) end); task.wait(0.35)
                pcall(function() re:FireServer(tp, false) end)
            end
        end
        local fUntil = tick() + (SU.FollowDuration or 30)
        local bOff = SU.FollowDistance or 20
        while tick() < fUntil and SU.Enabled do
            if not W.SU_IsHooked() then
                SU.Following = false; SU._activeThread = nil
                OW_Notify("Bypass Self Unhook", "Udah lepas hook - STOP", 2)
                return
            end
            local cc = LocalPlayer.Character
            if not cc then break end
            local r = cc:FindFirstChild("HumanoidRootPart")
            if not r then break end
            local khrp = W.SU_GetKillerHRP()
            if khrp then
                pcall(function()
                    r.Velocity = Vector3.zero
                    local tPos = Vector3.new(khrp.Position.X, khrp.Position.Y - bOff, khrp.Position.Z)
                    r.CFrame = CFrame.new(tPos, tPos + Vector3.new(0, 0, -1))
                end)
            end
            task.wait(0.03)
        end
        if W.SU_IsHooked() then
            local c2 = LocalPlayer.Character
            if c2 then
                local r2 = c2:FindFirstChild("HumanoidRootPart")
                if r2 then
                    if SU._hookCFrame then pcall(function() r2.Velocity = Vector3.zero; r2.CFrame = SU._hookCFrame end)
                    elseif SU._hookPos then pcall(function() r2.Velocity = Vector3.zero; r2.CFrame = CFrame.new(SU._hookPos + Vector3.new(0, 3, 0)) end) end
                end
            end
        end
        SU.Following = false; SU._activeThread = nil
    end)
end
function W.SU_Start()
    if SU.MonitorConn then return end
    SU._wasHooked = false
    SU.MonitorConn = RunService.Heartbeat:Connect(function()
        if not SU.Enabled then return end
        local char = LocalPlayer.Character
        if not char then return end
        local isH = W.SU_IsHooked()
        if not isH then SU._wasHooked = false; return end
        if not SU._wasHooked and not SU.Following then SU._wasHooked = true; W.SU_Trigger() end
    end)
end
function W.SU_Stop()
    if SU.MonitorConn then SU.MonitorConn:Disconnect(); SU.MonitorConn = nil end
    W.SU_Abort(); SU._wasHooked = false
end
function W.SU_SetEnabled(v)
    OW.SelfUnhook_Enabled = v
    SU.Enabled = v
    if v then W.SU_Start() else W.SU_Stop() end
end

--====================================================--
-- SILENT AIM TOF
--====================================================--
local ToFState = {
    Connection = nil, LaserBeam = nil, TargetGui = nil,
    InputBegan = nil, InputEnded = nil, TouchInput = nil,
    IsAiming = false, SavedUIPos = UDim2.new(0.5, -100, 0, 110),
    SCPCache = {}, SCPCacheTimer = 0
}
local ToFKeyCodes = { None=nil, Q=Enum.KeyCode.Q, E=Enum.KeyCode.E, R=Enum.KeyCode.R, T=Enum.KeyCode.T, F=Enum.KeyCode.F, G=Enum.KeyCode.G, H=Enum.KeyCode.H, J=Enum.KeyCode.J, K=Enum.KeyCode.K, L=Enum.KeyCode.L, X=Enum.KeyCode.X, Z=Enum.KeyCode.Z }
local function ToF_IsDowned(c)
    if not c then return true end
    local hrp = c:FindFirstChild("HumanoidRootPart"); if not hrp then return true end
    local h = c:FindFirstChildOfClass("Humanoid"); if h and h.Health<=0 then return true end
    if c:GetAttribute("Knocked")==true then return true end
    if c:GetAttribute("IsHooked")==true then return true end
    if c:GetAttribute("IsCarried")==true then return true end
    return false
end
local function ToF_IsBlocked()
    if OW.TOF_BlockKnocked == false then return false end
    local c = LocalPlayer.Character
    if not c then return true end
    return ToF_IsDowned(c)
end
local function ToF_GetEvent()
    local r = ReplicatedStorage:FindFirstChild("Remotes")
    local i = r and r:FindFirstChild("Items")
    local t = i and i:FindFirstChild("Twist of Fate")
    local f = t and t:FindFirstChild("Fire")
    if f and f:IsA("RemoteEvent") then return f end
    return nil
end
local function ToF_GetGun()
    local c = LocalPlayer.Character
    if not c then return nil end
    local b = c:FindFirstChild("Twist of Fate", true)
    if not b then return nil end
    local ra = b:FindFirstChild("Right Arm")
    if ra then local g = ra:FindFirstChild("gun"); if g then return g end
        local e = ra:FindFirstChild("EmperorGun"); if e then return e end end
    return b
end
local function ToF_IsVisible(op, tp, tc)
    local d = tp - op; local dist = d.Magnitude
    if dist < 0.1 then return true end
    local rp = RaycastParams.new(); rp.FilterType = Enum.RaycastFilterType.Exclude
    local ex = {}
    local lc = LocalPlayer.Character
    if lc then table.insert(ex, lc) end
    if tc and tc ~= lc then table.insert(ex, tc) end
    if ToFState.LaserBeam then table.insert(ex, ToFState.LaserBeam) end
    rp.FilterDescendantsInstances = ex
    return workspace:Raycast(op, d.Unit * dist, rp) == nil
end
local function ToF_GetSCPs()
    if tick() - ToFState.SCPCacheTimer < 0.5 then return ToFState.SCPCache end
    local nt = {}
    local mf = workspace:FindFirstChild("Map")
    if mf then
        for _, c in pairs(mf:GetDescendants()) do
            if c:IsA("Model") then
                local a = c:GetAttributes()
                if c:GetAttribute("CorpseCreated0492") or next(a) ~= nil then
                    local r = c:FindFirstChild("HumanoidRootPart"); if r then table.insert(nt, r) end
                end
            end
        end
    end
    ToFState.SCPCache = nt; ToFState.SCPCacheTimer = tick()
    return nt
end
local function ToF_GetTarget()
    local g = ToF_GetGun(); local c = LocalPlayer.Character
    if not (g and c) then return nil,nil,nil,nil end
    local hrp = c:FindFirstChild("HumanoidRootPart")
    if not hrp then return nil,nil,nil,nil end
    local mp = hrp.Position
    local op
    if c:GetAttribute("IsCarried") then op = hrp.Position + (hrp.CFrame.LookVector * 2)
    else
        pcall(function() op = g:IsA("BasePart") and g.Position or (g:FindFirstChildOfClass("BasePart") and g:FindFirstChildOfClass("BasePart").Position) end)
        op = op or Vector3.new(mp.X, mp.Y + 1.5, mp.Z)
    end
    local function predict(t, tc)
        local tp = t.Position
        if OW.TOF_WallCheck and not ToF_IsVisible(op, tp, tc) then return nil,nil,nil,nil end
        local tv = Vector3.new(0,0,0)
        local rp = tc and (tc:FindFirstChild("HumanoidRootPart") or t)
        if rp then tv = rp.Velocity end
        local dr = tp - op; local d = dr.Magnitude
        if d < 0.1 then return nil,nil,nil,nil end
        if d < 5 then return dr.Unit, g, op, tp end
        local tt = d/400
        local pp = tp + (tv*tt)
        for _=1,2 do local nd = (pp-op).Magnitude; tt = nd/400; pp = tp + (tv*tt) end
        local fd = pp - op
        if fd.Magnitude < 0.1 then return nil,nil,nil,nil end
        return fd.Unit, g, op, pp
    end
    local mode = OW.TOF_TargetMode or "Killer"
    if mode=="Killer" then
        local bt, bc, bs = nil, nil, math.huge
        for _,p in ipairs(Players:GetPlayers()) do
            if p ~= LocalPlayer and TeamIs(p, "Killer") and p.Character then
                local t = p.Character:FindFirstChild("Torso") or p.Character:FindFirstChild("UpperTorso") or p.Character:FindFirstChild("HumanoidRootPart")
                if t then local d = (mp-t.Position).Magnitude; if d < bs then bs=d; bt=t; bc=p.Character end end
            end
        end
        if not bt then return nil,nil,nil,nil end
        return predict(bt, bc)
    elseif mode=="Survivors" then
        local bt, bc, bd = nil, nil, -math.huge
        local cam = workspace.CurrentCamera
        local cl = cam.CFrame.LookVector
        for _,p in ipairs(Players:GetPlayers()) do
            if p ~= LocalPlayer and TeamIs(p, "Survivor") and p.Character then
                local t = p.Character:FindFirstChild("Torso") or p.Character:FindFirstChild("UpperTorso") or p.Character:FindFirstChild("HumanoidRootPart")
                if t then local dt = t.Position - cam.CFrame.Position
                    if dt.Magnitude>0.1 then local dot = cl:Dot(dt.Unit); if dot>0.5 and dot>bd then bd=dot; bt=t; bc=p.Character end end end
            end
        end
        if not bt then return nil,nil,nil,nil end
        return predict(bt, bc)
    elseif mode=="Zombie" then
        local bp, bd = nil, -math.huge
        local cam = workspace.CurrentCamera
        local cl = cam.CFrame.LookVector
        for _,r in ipairs(ToF_GetSCPs()) do
            if r and r.Parent then local dt = r.Position - cam.CFrame.Position
                if dt.Magnitude>0.1 then local dot = cl:Dot(dt.Unit); if dot>0.5 and dot>bd then bd=dot; bp=r end end end
        end
        if not bp then return nil,nil,nil,nil end
        return predict(bp, bp.Parent)
    end
    return nil,nil,nil,nil
end
local function ToF_UpdateLaser(op, tp)
    if not ToFState.LaserBeam then
        local l = Instance.new("Part"); l.Name="ToFLaser"; l.Anchored=true; l.CanCollide=false; l.CanTouch=false; l.CastShadow=false
        l.Material=Enum.Material.Neon; l.Color=Color3.fromRGB(255,255,255); l.Parent=workspace
        ToFState.LaserBeam = l
    end
    local d = (tp-op).Magnitude
    ToFState.LaserBeam.Size = Vector3.new(0.05,0.05,d)
    ToFState.LaserBeam.CFrame = CFrame.new((op+tp)/2, tp)
    ToFState.LaserBeam.Transparency = 0
end
local function ToF_ClearLaser()
    if ToFState.LaserBeam then pcall(function() ToFState.LaserBeam:Destroy() end); ToFState.LaserBeam=nil end
end
local function ToF_GetMobileBtn()
    local pg = LocalPlayer:FindFirstChild("PlayerGui")
    local sm = pg and pg:FindFirstChild("Survivor-mob")
    local ct = sm and sm:FindFirstChild("Controls")
    local gm = ct and ct:FindFirstChild("Gui-mob")
    if not gm then return nil end
    for _,n in ipairs({"attack","Attack","shoot","Shoot","fire","Fire"}) do local b = gm:FindFirstChild(n,true); if b and b:IsA("GuiObject") then return b end end
    for _,o in ipairs(gm:GetDescendants()) do if o:IsA("GuiButton") and o.Visible then return o end end
    return gm:IsA("GuiObject") and gm or nil
end
local function ToF_IsTouchShoot(input)
    local sb = ToF_GetMobileBtn()
    if not (sb and sb.Visible) then return false end
    local p = input.Position; local ap = sb.AbsolutePosition; local az = sb.AbsoluteSize
    return p.X>=ap.X and p.X<=ap.X+az.X and p.Y>=ap.Y and p.Y<=ap.Y+az.Y
end
local function ToF_Shoot()
    if not OW.TOF_Enabled then return end
    if ToF_IsBlocked() then return end
    local td, g, op, tp = ToF_GetTarget()
    if not (td and g and tp and op) then return end
    local e = ToF_GetEvent()
    if not e then return end
    local fd = tp - op
    if fd.Magnitude < 0.1 then return end
    pcall(function() e:FireServer(g, fd.Unit) end)
end
local ToF_ModeButtons = {}
local ToF_ModeConfig = { Killer={Color=Color3.fromRGB(255,90,90),Label="KILLER",Hint="K"}, Survivors={Color=Color3.fromRGB(120,200,255),Label="SURVIVOR",Hint="J"}, Zombie={Color=Color3.fromRGB(120,255,150),Label="ZOMBIE",Hint="L"} }
local function ToF_SetTargetMode(mode, notify)
    if mode ~= "Killer" and mode ~= "Survivors" and mode ~= "Zombie" then return end
    OW.TOF_TargetMode = mode
    if notify then OW_Notify("ToF Target", mode, 1) end
end
local function ToF_StartConn()
    if ToFState.Connection then return end
    ToFState.Connection = RunService.Heartbeat:Connect(function()
        if ToF_IsBlocked() then ToFState.IsAiming = false; if ToFState.TouchInput then ToFState.TouchInput = nil end; if ToFState.LaserBeam then ToFState.LaserBeam.Transparency = 1 end; return end
        if not OW.TOF_Enabled or not ToFState.IsAiming then if ToFState.LaserBeam then ToFState.LaserBeam.Transparency = 1 end; return end
        local _, _, op, tp = ToF_GetTarget()
        if op and tp then
            pcall(function()
                local c = LocalPlayer.Character
                local hrp = c and c:FindFirstChild("HumanoidRootPart")
                if hrp and not c:GetAttribute("IsCarried") then hrp.CFrame = CFrame.new(hrp.Position, Vector3.new(tp.X, hrp.Position.Y, tp.Z)) end
            end)
            if OW.TOF_Laser then ToF_UpdateLaser(op, tp)
            elseif ToFState.LaserBeam then ToFState.LaserBeam.Transparency = 1 end
        elseif ToFState.LaserBeam then ToFState.LaserBeam.Transparency = 1 end
    end)
end
local function ToF_StopConn()
    if ToFState.Connection then pcall(function() ToFState.Connection:Disconnect() end); ToFState.Connection = nil end
    ToFState.IsAiming = false; ToF_ClearLaser()
end
local SetToFEnabled
local function ToF_EnsureInputs()
    if not ToFState.InputBegan then
        ToFState.InputBegan = UserInputService.InputBegan:Connect(function(inp, gp)
            if gp then return end
            local k = ToFKeyCodes[OW.TOF_Key or "None"]
            if k and inp.UserInputType == Enum.UserInputType.Keyboard and inp.KeyCode == k then SetToFEnabled(not OW.TOF_Enabled); return end
            if not OW.TOF_Enabled then return end
            if inp.UserInputType == Enum.UserInputType.MouseButton1 or (inp.UserInputType == Enum.UserInputType.Touch and ToF_IsTouchShoot(inp)) then
                if ToF_IsBlocked() then ToFState.IsAiming = false; return end
                ToFState.IsAiming = true
                if inp.UserInputType == Enum.UserInputType.Touch then ToFState.TouchInput = inp end
                return
            end
            if inp.UserInputType == Enum.UserInputType.Keyboard then
                if inp.KeyCode == Enum.KeyCode.K then ToF_SetTargetMode("Killer", true)
                elseif inp.KeyCode == Enum.KeyCode.J then ToF_SetTargetMode("Survivors", true)
                elseif inp.KeyCode == Enum.KeyCode.L then ToF_SetTargetMode("Zombie", true) end
            end
        end)
    end
    if not ToFState.InputEnded then
        ToFState.InputEnded = UserInputService.InputEnded:Connect(function(inp)
            if inp.UserInputType == Enum.UserInputType.MouseButton1 or (inp.UserInputType == Enum.UserInputType.Touch and inp == ToFState.TouchInput) then
                local wa = ToFState.IsAiming
                ToFState.IsAiming = false
                if inp == ToFState.TouchInput then ToFState.TouchInput = nil end
                if ToFState.LaserBeam then ToFState.LaserBeam.Transparency = 1 end
                if wa then if ToF_IsBlocked() then return end; ToF_Shoot() end
            end
        end)
    end
end
SetToFEnabled = function(en)
    OW.TOF_Enabled = en and true or false
    ToF_EnsureInputs()
    if OW.TOF_Enabled then ToF_StartConn()
    else ToF_StopConn() end
end
W.SetToFEnabled = SetToFEnabled
W.ToF_ClearLaser = ToF_ClearLaser
W.ToF_SetTargetMode = ToF_SetTargetMode
ToF_EnsureInputs()

--====================================================--
-- SILENT FLASHLIGHT
--====================================================--
do
    local FlashState = { Active = false, LaserBeam = nil, FlashlightPart = nil, Connection = nil, Hooked = false }
    local function Flash_GetActivateRemote()
        local r = ReplicatedStorage:FindFirstChild("Remotes")
        local i = r and r:FindFirstChild("Items")
        local f = i and i:FindFirstChild("Flashlight")
        local a = f and f:FindFirstChild("Activate")
        if a and a:IsA("RemoteEvent") then return a end
        return nil
    end
    local function Flash_GetTargetPart(char)
        if not char then return nil end
        local p = char:FindFirstChild(OW.Flash_TargetPart or "Head")
        if p and p:IsA("BasePart") then return p end
        return char:FindFirstChild("Head") or char:FindFirstChild("UpperTorso")
            or char:FindFirstChild("Torso") or char:FindFirstChild("HumanoidRootPart")
    end
    local function Flash_IsAliveChar(char)
        local hum = char and char:FindFirstChildOfClass("Humanoid")
        if not hum or hum.Health <= 0 then return false end
        return char:GetAttribute("State") ~= "Dead"
    end
    local function Flash_GetTarget()
        local myChar = LocalPlayer.Character
        local myRoot = myChar and myChar:FindFirstChild("HumanoidRootPart")
        if not myRoot then return nil end
        local maxR = tonumber(OW.Flash_Range) or 120
        local best, bd = nil, math.huge
        for _, p in ipairs(Players:GetPlayers()) do
            if p ~= LocalPlayer and p.Character and Flash_IsAliveChar(p.Character) and TeamIs(p, "Killer") then
                local part = Flash_GetTargetPart(p.Character)
                if part then
                    local d = (myRoot.Position - part.Position).Magnitude
                    if d <= maxR and d < bd then bd = d; best = part end
                end
            end
        end
        return best
    end
    local function Flash_ClearLaser()
        if FlashState.LaserBeam then
            pcall(function() FlashState.LaserBeam:Destroy() end)
            FlashState.LaserBeam = nil
        end
    end
    local function Flash_GetOrigin(cam)
        local src = FlashState.FlashlightPart
        if typeof and typeof(src) == "Instance" then
            if src:IsA("BasePart") then return src.Position end
            local p = src:FindFirstChildWhichIsA("BasePart", true)
            if p then return p.Position end
        end
        local c = LocalPlayer.Character
        local hand = c and (c:FindFirstChild("RightHand") or c:FindFirstChild("Right Arm") or c:FindFirstChild("HumanoidRootPart"))
        if hand and hand:IsA("BasePart") then return hand.Position end
        return cam and cam.CFrame.Position or nil
    end
    local function Flash_UpdateLaser(op, tp)
        if not FlashState.LaserBeam then
            local l = Instance.new("Part")
            l.Name = "OneWFlashlightLaser"
            l.Anchored = true
            l.CanCollide = false
            l.CanTouch = false
            l.CanQuery = false
            l.CastShadow = false
            l.Material = Enum.Material.Neon
            l.Color = Color3.fromRGB(255, 255, 255)
            l.Transparency = 0
            l.Parent = Workspace
            FlashState.LaserBeam = l
        end
        local d = (tp - op).Magnitude
        if d < 0.1 then return end
        local l = FlashState.LaserBeam
        l.Size = Vector3.new(0.16, 0.16, d)
        l.CFrame = CFrame.new((op + tp) / 2, tp)
        l.Transparency = 0.35
    end
    local function Flash_Step()
        if not (OW.Flash_Enabled and FlashState.Active) then
            if FlashState.LaserBeam then FlashState.LaserBeam.Transparency = 1 end
            return
        end
        local cam = Workspace.CurrentCamera
        local tp = Flash_GetTarget()
        if not (cam and tp) then
            if FlashState.LaserBeam then FlashState.LaserBeam.Transparency = 1 end
            return
        end
        local smooth = math.clamp(tonumber(OW.Flash_Smooth) or 0.35, 0.05, 1)
        local op = Flash_GetOrigin(cam)
        if op then
            pcall(Flash_UpdateLaser, op, tp.Position)
        elseif FlashState.LaserBeam then
            FlashState.LaserBeam.Transparency = 1
        end
        pcall(function() cam.CFrame = cam.CFrame:Lerp(CFrame.new(cam.CFrame.Position, tp.Position), smooth) end)
        pcall(function()
            local c = LocalPlayer.Character
            local hrp = c and c:FindFirstChild("HumanoidRootPart")
            if hrp then hrp.CFrame = CFrame.new(hrp.Position, Vector3.new(tp.Position.X, hrp.Position.Y, tp.Position.Z)) end
        end)
    end
    local function Flash_Start()
        if FlashState.Connection then return end
        FlashState.Connection = RunService.RenderStepped:Connect(function() pcall(Flash_Step) end)
    end
    local function Flash_Stop()
        FlashState.Active = false
        FlashState.FlashlightPart = nil
        Flash_ClearLaser()
        if FlashState.Connection then
            pcall(function() FlashState.Connection:Disconnect() end)
            FlashState.Connection = nil
        end
    end
    function W.Flash_SetEnabled(v)
        OW.Flash_Enabled = v and true or false
        if v then Flash_Start() else Flash_Stop() end
    end
    function W.Flash_SetActive(active, part)
        FlashState.Active = active and true or false
        if FlashState.Active and part then
            FlashState.FlashlightPart = part
        elseif not FlashState.Active then
            FlashState.FlashlightPart = nil
        end
        if not FlashState.Active and FlashState.LaserBeam then
            FlashState.LaserBeam.Transparency = 1
        end
    end
    W.Flash_ClearLaser = Flash_ClearLaser
    task.spawn(function()
        pcall(function()
            local remote = Flash_GetActivateRemote()
            if not remote then return end
            if typeof(hookmetamethod) ~= "function" then return end
            if FlashState.Hooked then return end
            FlashState.Hooked = true
            local oldNC
            oldNC = hookmetamethod(game, "__namecall", function(self, ...)
                if getnamecallmethod() == "FireServer" and self == remote then
                    local args = {...}
                    pcall(function() W.Flash_SetActive(args[2] == true, args[1]) end)
                end
                return oldNC(self, ...)
            end)
        end)
    end)
end

--====================================================--
-- AIM LOCK GUN
--====================================================--
do
    local GunAim = {
        Enabled = false, Holding = false, TargetMode = "Killer",
        Strength = 0.5, Predict = true, PredictStrength = 0.12,
        FOV = 250, VisibilityCheck = true,
        AimPart = "HumanoidRootPart", Target = nil,
    }
    local GunAimConnection = nil
    local CurrentGunButton = nil
    local function GA_IsVisible(part)
        local cam = Workspace.CurrentCamera
        if not cam then return true end
        local rp = RaycastParams.new()
        rp.FilterType = Enum.RaycastFilterType.Exclude
        rp.FilterDescendantsInstances = { LocalPlayer.Character }
        local origin = cam.CFrame.Position
        local dir = part.Position - origin
        local result = Workspace:Raycast(origin, dir, rp)
        if not result then return true end
        return result.Instance:IsDescendantOf(part.Parent)
    end
    local function GA_GetButton()
        local current = LocalPlayer:FindFirstChild("PlayerGui")
        for seg in string.gmatch("Survivor-mob.Controls.Gui-mob", "[^%.]+") do
            current = current and current:FindFirstChild(seg)
        end
        return current
    end
    local function GA_GetClosestTarget()
        local cam = Workspace.CurrentCamera
        if not cam then return nil end
        local center = Vector2.new(cam.ViewportSize.X/2, cam.ViewportSize.Y/2)
        local closest, shortest = nil, GunAim.FOV
        for _, p in ipairs(Players:GetPlayers()) do
            if p ~= LocalPlayer and p.Character and p.Team then
                local valid = false
                if GunAim.TargetMode == "Killer" and string.find(string.lower(p.Team.Name), "killer", 1, true) then valid = true
                elseif GunAim.TargetMode == "Survivor" and string.find(string.lower(p.Team.Name), "survivor", 1, true) then valid = true end
                if valid then
                    local hrp = p.Character:FindFirstChild(GunAim.AimPart)
                    local hum = p.Character:FindFirstChildOfClass("Humanoid")
                    if hrp and hum and hum.Health > 0 then
                        local pos, visible = cam:WorldToViewportPoint(hrp.Position)
                        if visible then
                            local dist = (Vector2.new(pos.X, pos.Y) - center).Magnitude
                            if dist < shortest then
                                if GunAim.VisibilityCheck and not GA_IsVisible(hrp) then continue end
                                shortest = dist; closest = hrp
                            end
                        end
                    end
                end
            end
        end
        return closest
    end
    local function GA_Start()
        if GunAimConnection then return end
        GunAimConnection = RunService.RenderStepped:Connect(function()
            if not GunAim.Enabled or not GunAim.Holding then
                GunAim.Target = nil; return
            end
            local target = GA_GetClosestTarget()
            if not target then return end
            GunAim.Target = target
            local pos = target.Position
            if GunAim.Predict then
                pos = pos + (target.AssemblyLinearVelocity * GunAim.PredictStrength)
            end
            local cam = Workspace.CurrentCamera
            cam.CFrame = cam.CFrame:Lerp(CFrame.new(cam.CFrame.Position, pos), GunAim.Strength)
        end)
    end
    UserInputService.InputBegan:Connect(function(input, gp)
        if gp then return end
        if input.UserInputType == Enum.UserInputType.MouseButton2 and GunAim.Enabled then
            GunAim.Holding = true
        end
    end)
    UserInputService.InputEnded:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton2 then
            GunAim.Holding = false
        end
    end)
    task.spawn(function()
        while true do
            task.wait(1)
            local btn = GA_GetButton()
            if btn and btn ~= CurrentGunButton then
                CurrentGunButton = btn
                btn.InputBegan:Connect(function(input)
                    if (input.UserInputType == Enum.UserInputType.Touch or input.UserInputType == Enum.UserInputType.MouseButton2) and GunAim.Enabled then
                        GunAim.Holding = true
                    end
                end)
                btn.InputEnded:Connect(function(input)
                    if input.UserInputType == Enum.UserInputType.Touch or input.UserInputType == Enum.UserInputType.MouseButton2 then
                        GunAim.Holding = false
                    end
                end)
            end
        end
    end)
    W.GunAim_Start = GA_Start
    W.GunAim_Cfg = GunAim
end

--====================================================--
-- MOONWALK
--====================================================--
do
    local MOONWALK_SIDE_SPEED = 0.9
    local MOONWALK_BACK_SPEED = 1.2
    local MOONWALK_INTERVAL = 0.07
    local moonwalkEnabled = false
    local moonwalkConn = nil
    local function stopMoonwalk()
        if moonwalkConn then moonwalkConn:Disconnect(); moonwalkConn = nil end
    end
    local function startMoonwalk()
        stopMoonwalk()
        local char = LocalPlayer.Character
        if not char then return end
        local hrp = char:FindFirstChild("HumanoidRootPart")
        local hum = char:FindFirstChildOfClass("Humanoid")
        if not hrp or not hum then return end
        local lastSwitch = 0
        local direction = 1
        moonwalkConn = RunService.RenderStepped:Connect(function()
            if not moonwalkEnabled then return end
            local c = LocalPlayer.Character
            if not c then return end
            local cHrp = c:FindFirstChild("HumanoidRootPart")
            local cHum = c:FindFirstChildOfClass("Humanoid")
            if not cHrp or not cHum or cHum.Health <= 0 then return end
            local now = tick()
            if now - lastSwitch >= MOONWALK_INTERVAL then
                direction = direction * -1
                lastSwitch = now
            end
            local back = cHrp.CFrame.LookVector * -MOONWALK_BACK_SPEED
            local side = cHrp.CFrame.RightVector * (direction * MOONWALK_SIDE_SPEED)
            cHum:Move(back + side, false)
        end)
    end
    function W.Moonwalk_SetEnabled(state)
        OW.Moonwalk_Enabled = state
        moonwalkEnabled = state
        if state then startMoonwalk() else stopMoonwalk() end
    end
    function W.Moonwalk_SetSideSpeed(v) MOONWALK_SIDE_SPEED = v; OW.Moonwalk_SideSpeed = v end
    function W.Moonwalk_SetBackSpeed(v) MOONWALK_BACK_SPEED = v; OW.Moonwalk_BackSpeed = v end
    function W.Moonwalk_SetInterval(v) MOONWALK_INTERVAL = v; OW.Moonwalk_Interval = v end
    UserInputService.InputBegan:Connect(function(input, gp)
        if gp then return end
        if input.KeyCode == Enum.KeyCode.F8 then W.Moonwalk_SetEnabled(not moonwalkEnabled) end
    end)
    LocalPlayer.CharacterAdded:Connect(function()
        task.wait(2)
        if moonwalkEnabled then startMoonwalk() end
    end)
end--====================================================--
-- FULL ESP SYSTEM
--====================================================--
W.FullESP = W.FullESP or {
    Survivor = false, Killer = false,
    Generator = false, Pallet = false, Window = false, SCP = false,
    Distance = 500,
}
W.FullESPStatus = W.FullESPStatus or {
    Enabled = false,
    ShowName = true, ShowDistance = true, ShowHealth = false,
    ShowAvatar = true, ShowAction = true, Radius = 500,
}
W.FullESPColors = W.FullESPColors or {
    Survivor  = Color3.fromRGB(0, 190, 255), Killer    = Color3.fromRGB(255, 0, 0),
    Generator = Color3.fromRGB(255, 255, 0), Window    = Color3.fromRGB(255, 255, 255),
    Pallet    = Color3.fromRGB(255, 165, 0), SCP       = Color3.fromRGB(0, 255, 0),
}
local FESP  = W.FullESP
local FESPS = W.FullESPStatus
local FESPC = W.FullESPColors

do
    local ESPObjects = {}
    local StatusESP  = {}
    local CachedSCP     = {}
    local CachedGen     = {}
    local CachedPallet  = {}
    local WindowObjects = {}

    local function CacheObject(obj)
        if not obj then return end
        local ln = string.lower(obj.Name)
        if string.find(ln, "scp", 1, true) then CachedSCP[obj] = true end
        if obj.Name == "Generator" then
            CachedGen[obj] = true
        elseif obj.Name == "Pallet" or obj.Name == "Palletwrong" then
            CachedPallet[obj] = true
        end
    end

    for _, obj in ipairs(Workspace:GetDescendants()) do CacheObject(obj) end
    Workspace.DescendantAdded:Connect(CacheObject)
    Workspace.DescendantRemoving:Connect(function(obj)
        CachedSCP[obj] = nil; CachedGen[obj] = nil
        CachedPallet[obj] = nil
        if ESPObjects[obj] then pcall(function() ESPObjects[obj]:Destroy() end); ESPObjects[obj] = nil end
        if StatusESP[obj] then pcall(function() StatusESP[obj]:Destroy() end); StatusESP[obj] = nil end
    end)

    local function RemoveESP(obj)
        if not obj then return end
        if ESPObjects[obj] then
            pcall(function() ESPObjects[obj]:Destroy() end)
            ESPObjects[obj] = nil
        end
    end

    local function CreateESP(obj, color)
        if not obj or not obj.Parent then return end
        if ESPObjects[obj] then
            ESPObjects[obj].FillColor = color
            ESPObjects[obj].OutlineColor = color
            return
        end
        local h = Instance.new("Highlight")
        h.FillColor = color
        h.OutlineColor = color
        h.FillTransparency = 0.9
        h.OutlineTransparency = 0.3
        h.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
        h.Parent = obj
        ESPObjects[obj] = h
        obj.AncestryChanged:Connect(function(_, parent)
            if not parent then RemoveESP(obj) end
        end)
    end

    local function RemoveStatusESP(char)
        if StatusESP[char] then
            pcall(function() StatusESP[char]:Destroy() end)
            StatusESP[char] = nil
        end
    end

    local function StatusESP_GetAction(char, hum)
        if not char or not hum then return "IDLE", Color3.fromRGB(150, 150, 150) end
        if hum.Health <= 0 then return "DEAD", Color3.fromRGB(200, 60, 60) end
        if char:GetAttribute("IsHooked") or char:GetAttribute("isHooked") or char:GetAttribute("Hooked") then
            return "HOOKED", Color3.fromRGB(255, 60, 60)
        end
        if char:GetAttribute("IsCarried") or char:GetAttribute("isCarried") or char:GetAttribute("Carried") then
            return "CARRIED", Color3.fromRGB(255, 100, 100)
        end
        local state = char:GetAttribute("State")
        if state == "Downed" or char:GetAttribute("Knocked") == true
           or char:GetAttribute("IsDown") == true or char:GetAttribute("Downed") == true then
            return "DOWNED", Color3.fromRGB(255, 130, 60)
        end
        local ci = char:FindFirstChild("CheckInterractable")
        if ci then
            if ci:GetAttribute("isRepairing") then return "REPAIR", Color3.fromRGB(255, 220, 60) end
            if ci:GetAttribute("isHealing") then return "HEAL", Color3.fromRGB(80, 220, 120) end
            if ci:GetAttribute("isVaulting") then return "VAULT", Color3.fromRGB(120, 200, 255) end
            if ci:GetAttribute("isSliding") then return "SLIDE", Color3.fromRGB(150, 180, 255) end
            if ci:GetAttribute("isDroppingPallet") then return "PALLET", Color3.fromRGB(255, 165, 60) end
            if ci:GetAttribute("isUnhooking") then return "UNHOOK", Color3.fromRGB(180, 120, 255) end
            if ci:GetAttribute("isExiting") then return "EXIT", Color3.fromRGB(80, 255, 180) end
        end
        local root = char:FindFirstChild("HumanoidRootPart")
        if root then
            local vel = root.AssemblyLinearVelocity
            local speed = Vector3.new(vel.X, 0, vel.Z).Magnitude
            if speed > 20 then return "SPRINT", Color3.fromRGB(120, 255, 200) end
            if speed > 2 then return "MOVE", Color3.fromRGB(200, 200, 220) end
        end
        return "IDLE", Color3.fromRGB(150, 150, 150)
    end

    local function CreateStatusESP(plr, char, root)
        if not FESPS.Enabled then RemoveStatusESP(char); return end
        if not root then return end
        local head = char:FindFirstChild("Head")
        local hum = char:FindFirstChildOfClass("Humanoid")
        if not head or not hum then return end

        local isDown = hum.Health <= 0 or hum.Health < 2
            or char:GetAttribute("Downed") == true
            or char:GetAttribute("IsDown") == true
            or char:GetAttribute("Knocked") == true

        local dist = (head.Position - root.Position).Magnitude
        if dist > FESPS.Radius then RemoveStatusESP(char); return end

        local accentColor = Color3.fromRGB(255, 255, 255)
        if TeamIs(plr, "Killer") then accentColor = FESPC.Killer
        elseif TeamIs(plr, "Survivor") then accentColor = FESPC.Survivor end
        if isDown then accentColor = Color3.fromRGB(255, 60, 60) end

        local hpPct = math.clamp(hum.Health / math.max(hum.MaxHealth, 1), 0, 1)
        local hpColor
        if hpPct > 0.6 then hpColor = Color3.fromRGB(80, 220, 120)
        elseif hpPct > 0.3 then hpColor = Color3.fromRGB(255, 200, 60)
        else hpColor = Color3.fromRGB(255, 80, 80) end

        local actionText, actionColor = StatusESP_GetAction(char, hum)

        local bb = StatusESP[char]
        if not bb or not bb.Parent then
            bb = Instance.new("BillboardGui")
            bb.Name = "OneWStatusESP"
            bb.AlwaysOnTop = true
            bb.LightInfluence = 0
            bb.Adornee = head
            bb.StudsOffset = Vector3.new(0, 2.5, 0)
            bb.Size = UDim2.fromOffset(260, 40)
            bb.Parent = char

            local scaleObj = Instance.new("UIScale")
            scaleObj.Name = "DistScale"
            scaleObj.Scale = 1
            scaleObj.Parent = bb

            local nameLbl = Instance.new("TextLabel")
            nameLbl.Name = "NameLbl"
            nameLbl.BackgroundTransparency = 1
            nameLbl.Size = UDim2.new(1, 0, 0, 16)
            nameLbl.Position = UDim2.new(0, 0, 0, 0)
            nameLbl.Font = Enum.Font.GothamBold
            nameLbl.TextSize = 13
            nameLbl.TextColor3 = Color3.fromRGB(255, 255, 255)
            nameLbl.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
            nameLbl.TextStrokeTransparency = 0.2
            nameLbl.TextXAlignment = Enum.TextXAlignment.Center
            nameLbl.TextYAlignment = Enum.TextYAlignment.Center
            nameLbl.TextTruncate = Enum.TextTruncate.AtEnd
            nameLbl.Parent = bb

            local pill = Instance.new("Frame")
            pill.Name = "Pill"
            pill.AnchorPoint = Vector2.new(0.5, 0)
            pill.Position = UDim2.new(0.5, 0, 0, 18)
            pill.Size = UDim2.fromOffset(120, 22)
            pill.BackgroundColor3 = Color3.fromRGB(12, 12, 16)
            pill.BackgroundTransparency = 0.15
            pill.BorderSizePixel = 0
            pill.Parent = bb
            Instance.new("UICorner", pill).CornerRadius = UDim.new(1, 0)

            local pillStroke = Instance.new("UIStroke", pill)
            pillStroke.Name = "PillStroke"
            pillStroke.Color = accentColor
            pillStroke.Thickness = 1
            pillStroke.Transparency = 0.5
            pillStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

            local layout = Instance.new("UIListLayout", pill)
            layout.FillDirection = Enum.FillDirection.Horizontal
            layout.Padding = UDim.new(0, 5)
            layout.SortOrder = Enum.SortOrder.LayoutOrder
            layout.VerticalAlignment = Enum.VerticalAlignment.Center
            layout.HorizontalAlignment = Enum.HorizontalAlignment.Center

            local pad = Instance.new("UIPadding", pill)
            pad.PaddingLeft = UDim.new(0, 6)
            pad.PaddingRight = UDim.new(0, 8)

            local avatarHolder = Instance.new("Frame")
            avatarHolder.Name = "AvatarHolder"
            avatarHolder.Size = UDim2.fromOffset(18, 18)
            avatarHolder.BackgroundColor3 = Color3.fromRGB(30, 30, 36)
            avatarHolder.BorderSizePixel = 0
            avatarHolder.LayoutOrder = 1
            avatarHolder.ClipsDescendants = true
            avatarHolder.Parent = pill
            Instance.new("UICorner", avatarHolder).CornerRadius = UDim.new(1, 0)

            local avatarStroke = Instance.new("UIStroke", avatarHolder)
            avatarStroke.Name = "AvatarStroke"
            avatarStroke.Color = accentColor
            avatarStroke.Thickness = 1.2
            avatarStroke.Transparency = 0.3
            avatarStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

            local avatarImg = Instance.new("ImageLabel")
            avatarImg.Name = "AvatarImg"
            avatarImg.Size = UDim2.fromScale(1, 1)
            avatarImg.BackgroundTransparency = 1
            avatarImg.Image = "rbxthumb://type=AvatarHeadShot&id=" .. plr.UserId .. "&w=150&h=150"
            avatarImg.Parent = avatarHolder

            local dot = Instance.new("Frame")
            dot.Name = "Dot"
            dot.Size = UDim2.fromOffset(7, 7)
            dot.BackgroundColor3 = accentColor
            dot.BorderSizePixel = 0
            dot.LayoutOrder = 1
            dot.Visible = false
            dot.Parent = pill
            Instance.new("UICorner", dot).CornerRadius = UDim.new(1, 0)

            local distLbl = Instance.new("TextLabel")
            distLbl.Name = "DistLbl"
            distLbl.BackgroundTransparency = 1
            distLbl.Size = UDim2.fromOffset(32, 14)
            distLbl.Font = Enum.Font.GothamBold
            distLbl.TextSize = 11
            distLbl.TextColor3 = Color3.fromRGB(220, 220, 230)
            distLbl.Text = "0m"
            distLbl.LayoutOrder = 2
            distLbl.Parent = pill

            local actionLbl = Instance.new("TextLabel")
            actionLbl.Name = "ActionLbl"
            actionLbl.BackgroundTransparency = 1
            actionLbl.Size = UDim2.fromOffset(50, 14)
            actionLbl.Font = Enum.Font.GothamBold
            actionLbl.TextSize = 10
            actionLbl.TextColor3 = actionColor
            actionLbl.Text = "IDLE"
            actionLbl.LayoutOrder = 3
            actionLbl.Parent = pill

            local hpBarBg = Instance.new("Frame")
            hpBarBg.Name = "HPBarBg"
            hpBarBg.Size = UDim2.fromOffset(38, 4)
            hpBarBg.BackgroundColor3 = Color3.fromRGB(45, 45, 55)
            hpBarBg.BorderSizePixel = 0
            hpBarBg.LayoutOrder = 4
            hpBarBg.Parent = pill
            Instance.new("UICorner", hpBarBg).CornerRadius = UDim.new(1, 0)

            local hpBarFill = Instance.new("Frame")
            hpBarFill.Name = "HPBarFill"
            hpBarFill.Size = UDim2.new(1, 0, 1, 0)
            hpBarFill.BackgroundColor3 = hpColor
            hpBarFill.BorderSizePixel = 0
            hpBarFill.Parent = hpBarBg
            Instance.new("UICorner", hpBarFill).CornerRadius = UDim.new(1, 0)

            local downPill = Instance.new("Frame")
            downPill.Name = "DownPill"
            downPill.Size = UDim2.fromOffset(36, 14)
            downPill.BackgroundColor3 = Color3.fromRGB(255, 60, 60)
            downPill.BackgroundTransparency = 0.1
            downPill.BorderSizePixel = 0
            downPill.Visible = false
            downPill.LayoutOrder = 5
            downPill.Parent = pill
            Instance.new("UICorner", downPill).CornerRadius = UDim.new(1, 0)

            local downLbl = Instance.new("TextLabel")
            downLbl.Name = "DownLbl"
            downLbl.Size = UDim2.new(1, 0, 1, 0)
            downLbl.BackgroundTransparency = 1
            downLbl.Font = Enum.Font.GothamBold
            downLbl.TextSize = 9
            downLbl.TextColor3 = Color3.fromRGB(255, 255, 255)
            downLbl.Text = "DOWN"
            downLbl.Parent = downPill

            StatusESP[char] = bb
        end

        local nameLbl = bb:FindFirstChild("NameLbl")
        local pill = bb:FindFirstChild("Pill")
        if not pill then return end
        local pillStroke = pill:FindFirstChild("PillStroke")
        local avatarHolder = pill:FindFirstChild("AvatarHolder")
        local avatarImg = avatarHolder and avatarHolder:FindFirstChild("AvatarImg")
        local avatarStroke = avatarHolder and avatarHolder:FindFirstChild("AvatarStroke")
        local dot = pill:FindFirstChild("Dot")
        local distLbl = pill:FindFirstChild("DistLbl")
        local actionLbl = pill:FindFirstChild("ActionLbl")
        local hpBarBg = pill:FindFirstChild("HPBarBg")
        local hpBarFill = hpBarBg and hpBarBg:FindFirstChild("HPBarFill")
        local downPill = pill:FindFirstChild("DownPill")
        local distScale = bb:FindFirstChild("DistScale")

        if pillStroke then
            pillStroke.Color = accentColor
            pillStroke.Transparency = isDown and 0.2 or 0.5
        end
        if avatarHolder then
            avatarHolder.Visible = FESPS.ShowAvatar == true
            if avatarStroke then avatarStroke.Color = accentColor end
            if avatarImg and avatarImg.Image == "" then
                avatarImg.Image = "rbxthumb://type=AvatarHeadShot&id=" .. plr.UserId .. "&w=150&h=150"
            end
        end
        if dot then
            dot.Visible = (FESPS.ShowAvatar ~= true)
            dot.BackgroundColor3 = accentColor
        end
        if nameLbl then
            nameLbl.Text = plr.Name
            nameLbl.Visible = FESPS.ShowName
            nameLbl.TextColor3 = isDown and Color3.fromRGB(255, 100, 100) or Color3.fromRGB(255, 255, 255)
        end
        if distLbl then
            distLbl.Text = string.format("%.0fm", dist)
            distLbl.Visible = FESPS.ShowDistance
        end
        if actionLbl then
            actionLbl.Text = actionText
            actionLbl.TextColor3 = actionColor
            actionLbl.Visible = FESPS.ShowAction == true
            if actionText == "IDLE" then
                actionLbl.TextColor3 = Color3.fromRGB(150, 150, 150)
            end
        end
        if hpBarBg and hpBarFill then
            hpBarFill.Size = UDim2.new(hpPct, 0, 1, 0)
            hpBarFill.BackgroundColor3 = hpColor
            hpBarBg.Visible = FESPS.ShowHealth
        end
        if downPill then downPill.Visible = isDown end

        local totalW = 14
        local count = 0
        if FESPS.ShowAvatar then totalW = totalW + 18; count = count + 1
        else totalW = totalW + 7; count = count + 1 end
        if FESPS.ShowDistance then totalW = totalW + 32; count = count + 1 end
        if FESPS.ShowAction then totalW = totalW + 50; count = count + 1 end
        if FESPS.ShowHealth then totalW = totalW + 38; count = count + 1 end
        if isDown then totalW = totalW + 36; count = count + 1 end
        totalW = totalW + math.max(count - 1, 0) * 5
        if totalW < 50 then totalW = 50 end
        if totalW > 240 then totalW = 240 end
        pill.Size = UDim2.fromOffset(totalW, 22)

        local showPill = FESPS.ShowDistance or FESPS.ShowHealth or isDown
            or FESPS.ShowAction or FESPS.ShowAvatar
        pill.Visible = showPill

        local h = 16 + (showPill and 24 or 0)
        bb.Size = UDim2.fromOffset(260, h)

        if distScale then
            local scaleVal = 1 - (dist - 50) / 500
            scaleVal = math.clamp(scaleVal, 0.5, 1.05)
            distScale.Scale = scaleVal
        end
    end

    local function GetGameValue(obj, name)
        if not obj then return nil end
        local attr = obj:GetAttribute(name)
        if attr ~= nil then return attr end
        local child = obj:FindFirstChild(name)
        if child then
            local ok, v = pcall(function() return child.Value end)
            if ok then return v end
        end
        return nil
    end

    local function UpdateGenerator(gen)
        if not gen or not gen.Parent then return end
        if not FESP.Generator then
            local o = gen:FindFirstChild("GenESP"); if o then o:Destroy() end
            local h = gen:FindFirstChild("GenHighlight"); if h then h:Destroy() end
            return
        end
        local percent = GetGameValue(gen, "RepairProgress")
            or GetGameValue(gen, "Progress")
            or GetGameValue(gen, "ProgressRepair") or 0
        local bb = gen:FindFirstChild("GenESP")
        if percent >= 100 then if bb then bb:Destroy() end; return end
        local cp = math.clamp(percent, 0, 100)
        local color = FESPC.Generator:Lerp(Color3.fromRGB(0, 255, 120), cp / 100)
        local text = string.format("[%.0f%%]", percent)
        if not bb then
            bb = Instance.new("BillboardGui")
            bb.Name = "GenESP"
            bb.Size = UDim2.new(0, 100, 0, 30)
            bb.AlwaysOnTop = true
            local lbl = Instance.new("TextLabel")
            lbl.Size = UDim2.new(1, 0, 1, 0)
            lbl.BackgroundTransparency = 1
            lbl.Text = text
            lbl.TextColor3 = color
            lbl.TextStrokeTransparency = 0
            lbl.Font = Enum.Font.GothamBold
            lbl.TextSize = 12
            lbl.Parent = bb
            bb.Adornee = gen
            bb.Parent = gen
        else
            local lbl = bb:FindFirstChildOfClass("TextLabel")
            if lbl then lbl.Text = text; lbl.TextColor3 = color end
        end
        local h = gen:FindFirstChild("GenHighlight") or Instance.new("Highlight")
        h.Name = "GenHighlight"
        h.Adornee = gen
        h.FillColor = color
        h.OutlineColor = color
        h.FillTransparency = 0.9
        h.OutlineTransparency = 0.3
        h.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
        h.Parent = gen
    end

    local function UpdateMapESP(obj, root)
        if not obj or not root or not obj.Parent then return end
        local pos
        if obj:IsA("Model") then
            if obj.PrimaryPart then pos = obj.PrimaryPart.Position
            else
                local ok, pivot = pcall(function() return obj:GetPivot().Position end)
                pos = ok and pivot or nil
                if not pos then
                    local bp = obj:FindFirstChildWhichIsA("BasePart", true)
                    if bp then pos = bp.Position end
                end
            end
        elseif obj:IsA("BasePart") then
            pos = obj.Position
        end
        if not pos then return end
        local dist = (pos - root.Position).Magnitude

        if obj.Name == "Pallet" or obj.Name == "Palletwrong" then
            if FESP.Pallet and dist <= FESP.Distance then
                CreateESP(obj, FESPC.Pallet)
            else
                RemoveESP(obj)
            end
        end
    end

    local function UpdateSCPEsp(root)
        if not FESP.SCP then
            for obj in pairs(CachedSCP) do RemoveESP(obj) end
            return
        end
        for obj in pairs(CachedSCP) do
            if obj and obj.Parent then
                local pos
                if obj:IsA("Model") then
                    local ok, pivot = pcall(function() return obj:GetPivot().Position end)
                    pos = ok and pivot or nil
                elseif obj:IsA("BasePart") then
                    pos = obj.Position
                end
                if pos then
                    local dist = (pos - root.Position).Magnitude
                    if dist <= FESP.Distance then
                        CreateESP(obj, FESPC.SCP)
                    else
                        RemoveESP(obj)
                    end
                end
            end
        end
    end

    local function RemoveWindowESP(model)
        if not model then return end
        local wData = WindowObjects[model]
        if wData then
            if wData.highlight then pcall(function() wData.highlight:Destroy() end) end
            if wData.box then pcall(function() wData.box:Destroy() end) end
            if wData.bottomPart and wData.bottomPart.Parent then
                pcall(function()
                    local orig = wData.bottomPart:GetAttribute("ESP_OrigTrans")
                    if orig ~= nil then
                        wData.bottomPart.Transparency = orig
                        wData.bottomPart:SetAttribute("ESP_OrigTrans", nil)
                    end
                end)
            end
            WindowObjects[model] = nil
        end
    end

    local function HandleWindowObject(child)
        if not FESP.Window then return end
        if not child or child.Name ~= "VaultTrigger" then return end
        local winModel = child.Parent
        if not winModel or not winModel:IsA("Model") then return end
        if WindowObjects[winModel] then return end

        local bottomPart = winModel:FindFirstChild("Bottom")
        if not bottomPart or not bottomPart:IsA("BasePart") then
            local bestSize = 0
            for _, p in ipairs(winModel:GetChildren()) do
                if p:IsA("BasePart")
                   and p.Name ~= "VaultTrigger"
                   and p.Name ~= "inviswall"
                   and p.Size.Magnitude > bestSize then
                    bestSize = p.Size.Magnitude
                    bottomPart = p
                end
            end
        end
        if not bottomPart then return end

        if bottomPart:GetAttribute("ESP_OrigTrans") == nil then
            bottomPart:SetAttribute("ESP_OrigTrans", bottomPart.Transparency)
        end
        if bottomPart.Transparency > 0.5 then
            bottomPart.Transparency = 0.5
        end

        local box = Instance.new("BoxHandleAdornment")
        box.Name = "OneWWindowBox"
        box.Adornee = bottomPart
        box.Size = bottomPart.Size
        box.Color3 = FESPC.Window
        box.Transparency = 0.3
        box.AlwaysOnTop = true
        box.ZIndex = 5
        box.Parent = bottomPart

        local hl = Instance.new("Highlight")
        hl.Name = "OneWWindowHighlight"
        hl.Adornee = winModel
        hl.FillColor = FESPC.Window
        hl.FillTransparency = 0.9
        hl.OutlineColor = FESPC.Window
        hl.OutlineTransparency = 0.1
        hl.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
        hl.Parent = winModel

        WindowObjects[winModel] = {
            highlight = hl,
            box = box,
            bottomPart = bottomPart,
        }
    end

    local function ScanAllWindows()
        if not FESP.Window then return end
        local map = Workspace:FindFirstChild("Map")
        if not map then return end
        for _, obj in ipairs(map:GetDescendants()) do
            if obj.Name == "VaultTrigger" then
                HandleWindowObject(obj)
            end
        end
    end

    Workspace.DescendantAdded:Connect(function(obj)
        if obj.Name == "VaultTrigger" and FESP.Window then
            task.defer(function() HandleWindowObject(obj) end)
        end
    end)

    local espLastUpdate = 0
    RunService.RenderStepped:Connect(function()
        local now = tick()
        if now - espLastUpdate < 0.05 then return end
        espLastUpdate = now

        local root = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
        if not root then return end

        for _, p in ipairs(Players:GetPlayers()) do
            if p ~= LocalPlayer and p.Character then
                local char = p.Character
                local hum = char:FindFirstChildOfClass("Humanoid")
                if hum and hum.Health > 0 then
                    local hrp = char:FindFirstChild("HumanoidRootPart")
                    if hrp then
                        local dist = (hrp.Position - root.Position).Magnitude
                        if dist <= FESP.Distance then
                            if FESP.Survivor and TeamIs(p, "Survivor") then
                                CreateESP(char, FESPC.Survivor)
                            elseif FESP.Killer and TeamIs(p, "Killer") then
                                CreateESP(char, FESPC.Killer)
                            else
                                RemoveESP(char)
                            end
                        else
                            RemoveESP(char)
                        end
                    end
                    CreateStatusESP(p, char, root)
                else
                    RemoveESP(char)
                    RemoveStatusESP(char)
                end
            end
        end

        if FESP.Generator then
            for gen in pairs(CachedGen) do UpdateGenerator(gen) end
        end
        for obj in pairs(CachedPallet) do UpdateMapESP(obj, root) end
        UpdateSCPEsp(root)

        if FESP.Window then
            if not _G.OneWWindowScanned then
                _G.OneWWindowScanned = true
                pcall(ScanAllWindows)
            end
        else
            _G.OneWWindowScanned = false
            for model in pairs(WindowObjects) do
                RemoveWindowESP(model)
            end
        end
    end)
end

--====================================================--
-- KILLER PERKS DISPLAY
--====================================================--
do
    local PerkDisplayState = { Gui = nil, Thread = nil, Enabled = false, Minimized = false }

    local function GetKillerPlayer()
        for _, p in ipairs(Players:GetPlayers()) do
            if TeamIs(p, "Killer") then return p end
        end
        return nil
    end

    local function FormatPerkName(name)
        name = tostring(name or "")
        local clean = name:gsub("_", " "):gsub("-", " ")
        clean = clean:gsub("(%l)(%u)", "%1 %2")
        clean = clean:gsub("(%a)(%d)", "%1 %2")
        clean = clean:gsub("(%d)(%a)", "%1 %2")
        clean = clean:gsub("%s+", " "):gsub("^%s+", ""):gsub("%s+$", "")
        return clean ~= "" and clean or "Unknown Perk"
    end

    local function ParsePerkName(name)
        name = tostring(name or "")
        local perkName, level = name:match("^(.+)%s+(%d+)$")
        if not perkName then return nil end
        perkName = perkName:gsub("^%s+", ""):gsub("%s+$", "")
        if perkName == "" then return nil end
        local lower = perkName:lower()
        local excluded = {
            head=true,torso=true,humanoid=true,
            ["left arm"]=true,["right arm"]=true,
            ["left leg"]=true,["right leg"]=true,
            ["humanoidrootpart"]=true,
        }
        if excluded[lower] then return nil end
        return perkName, level
    end

    local function ReadPerksFromChar(char)
        if not char then return {} end
        local result, seen = {}, {}
        local function addPerk(rawName, displayName, level)
            if not rawName then return end
            rawName = tostring(rawName)
            if rawName == "" or rawName == "nil" then return end
            if rawName:lower():find("template") then return end
            if seen[rawName] then return end
            seen[rawName] = true
            table.insert(result, {
                Raw = rawName,
                Name = displayName and tostring(displayName) or FormatPerkName(rawName),
                Level = level and tostring(level) or nil,
            })
        end

        local function scanAttrs(inst)
            if not inst.GetAttributes then return end
            local attrs = inst:GetAttributes()
            for k, v in pairs(attrs) do
                local lk = tostring(k):lower()
                if lk:find("perk") then
                    if type(v) == "string" then addPerk(v)
                    elseif v == true then addPerk(k)
                    elseif type(v) == "number" and lk:find("level") then
                        local bn = tostring(k):gsub("[Ll]evel",""):gsub("[Pp]erk","")
                        if bn ~= "" then addPerk(bn, nil, v) end
                    end
                end
            end
        end

        scanAttrs(char)
        for _, child in ipairs(char:GetChildren()) do
            local pn, lv = ParsePerkName(child.Name)
            if pn then addPerk(child.Name, pn, lv) end
        end
        for _, inst in ipairs(char:GetDescendants()) do
            scanAttrs(inst)
            local lower = inst.Name:lower()
            if lower == "perks" or lower == "killerperks"
                or lower:find("perkfolder") or lower:find("perklist") then
                for _, child in ipairs(inst:GetChildren()) do
                    if child:IsA("StringValue") then addPerk(child.Value)
                    elseif child:IsA("IntValue") or child:IsA("NumberValue") then addPerk(child.Name, nil, child.Value)
                    elseif child:IsA("BoolValue") and child.Value then addPerk(child.Name) end
                end
            elseif lower:find("perk") then
                if inst:IsA("StringValue") then addPerk(inst.Value)
                elseif inst:IsA("BoolValue") and inst.Value then addPerk(inst.Name) end
            end
        end
        table.sort(result, function(a, b) return tostring(a.Name) < tostring(b.Name) end)
        return result
    end

    local function BuildGui()
        if PerkDisplayState.Gui then pcall(function() PerkDisplayState.Gui:Destroy() end) end
        local pg = LocalPlayer:FindFirstChild("PlayerGui")
        if gethui then
            local ok, hui = pcall(gethui)
            if ok and hui then pg = hui end
        end
        if not pg then return end

        local gui = Instance.new("ScreenGui")
        gui.Name = "OneWKillerPerksDisplay"
        gui.ResetOnSpawn = false
        gui.IgnoreGuiInset = true
        gui.DisplayOrder = 60
        gui.Parent = pg

        local frame = Instance.new("Frame")
        frame.Name = "MainFrame"
        frame.Size = UDim2.new(0, 200, 0, 28)
        frame.Position = UDim2.new(0.02, 0, 0.42, 0)
        frame.BackgroundColor3 = Color3.fromRGB(18, 18, 20)
        frame.BackgroundTransparency = 0.1
        frame.BorderSizePixel = 0
        frame.Active = true
        frame.Parent = gui
        Instance.new("UICorner", frame).CornerRadius = UDim.new(0, 8)

        local stroke = Instance.new("UIStroke", frame)
        stroke.Color = Color3.fromRGB(255, 255, 255)
        stroke.Thickness = 1.2
        stroke.Transparency = 0.2
        stroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

        local topBar = Instance.new("Frame", frame)
        topBar.Name = "TopBar"
        topBar.Size = UDim2.new(1, 0, 0, 3)
        topBar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        topBar.BorderSizePixel = 0
        Instance.new("UICorner", topBar).CornerRadius = UDim.new(0, 8)

        local header = Instance.new("Frame", frame)
        header.Name = "Header"
        header.Size = UDim2.new(1, 0, 0, 22)
        header.Position = UDim2.new(0, 0, 0, 3)
        header.BackgroundTransparency = 1
        header.Active = true

        local title = Instance.new("TextLabel", header)
        title.Name = "Title"
        title.Size = UDim2.new(1, -26, 1, 0)
        title.Position = UDim2.new(0, 10, 0, 0)
        title.BackgroundTransparency = 1
        title.Font = Enum.Font.GothamBold
        title.Text = "KILLER PERKS"
        title.TextColor3 = Color3.fromRGB(255, 255, 255)
        title.TextSize = 11
        title.TextXAlignment = Enum.TextXAlignment.Left
        title.Parent = header

        local killerName = Instance.new("TextLabel", header)
        killerName.Name = "KillerName"
        killerName.AnchorPoint = Vector2.new(1, 0.5)
        killerName.Size = UDim2.new(0, 80, 1, 0)
        killerName.Position = UDim2.new(1, -26, 0.5, 0)
        killerName.BackgroundTransparency = 1
        killerName.Font = Enum.Font.GothamBold
        killerName.Text = "???"
        killerName.TextColor3 = Color3.fromRGB(220, 220, 220)
        killerName.TextSize = 9
        killerName.TextXAlignment = Enum.TextXAlignment.Right
        killerName.TextTruncate = Enum.TextTruncate.AtEnd
        killerName.Parent = header

        local minBtn = Instance.new("TextButton", header)
        minBtn.Name = "MinBtn"
        minBtn.AnchorPoint = Vector2.new(1, 0.5)
        minBtn.Size = UDim2.new(0, 20, 0, 20)
        minBtn.Position = UDim2.new(1, -3, 0.5, 0)
        minBtn.BackgroundTransparency = 1
        minBtn.Text = "−"
        minBtn.TextColor3 = Color3.fromRGB(180, 180, 180)
        minBtn.Font = Enum.Font.GothamBold
        minBtn.TextSize = 13
        minBtn.AutoButtonColor = false
        minBtn.Parent = header

        local divider = Instance.new("Frame", frame)
        divider.Name = "Divider"
        divider.Size = UDim2.new(1, -12, 0, 1)
        divider.Position = UDim2.new(0, 6, 0, 25)
        divider.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        divider.BackgroundTransparency = 0.7
        divider.BorderSizePixel = 0

        local body = Instance.new("Frame", frame)
        body.Name = "Body"
        body.Size = UDim2.new(1, -12, 0, 0)
        body.Position = UDim2.new(0, 6, 0, 28)
        body.AutomaticSize = Enum.AutomaticSize.Y
        body.BackgroundTransparency = 1

        local layout = Instance.new("UIListLayout", body)
        layout.FillDirection = Enum.FillDirection.Vertical
        layout.SortOrder = Enum.SortOrder.LayoutOrder
        layout.Padding = UDim.new(0, 3)

        local function setMinimized(state)
            PerkDisplayState.Minimized = state
            if state then
                frame.Size = UDim2.new(0, 200, 0, 28)
                divider.Visible = false
                body.Visible = false
                minBtn.Text = "+"
            else
                frame.Size = UDim2.new(0, 200, 0, 28)
                divider.Visible = true
                body.Visible = true
                minBtn.Text = "−"
            end
        end
        minBtn.MouseButton1Click:Connect(function() setMinimized(not PerkDisplayState.Minimized) end)
        setMinimized(false)

        local dragging, dragStart, startPos = false, nil, nil
        header.InputBegan:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
                dragging = true; dragStart = input.Position; startPos = frame.Position
            end
        end)
        UserInputService.InputChanged:Connect(function(input)
            if not dragging then return end
            if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
                local d = input.Position - dragStart
                frame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + d.X, startPos.Y.Scale, startPos.Y.Offset + d.Y)
            end
        end)
        UserInputService.InputEnded:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
                dragging = false
            end
        end)

        PerkDisplayState.Gui = gui
    end

    local function UpdateDisplay()
        local gui = PerkDisplayState.Gui
        if not gui then return end
        local frame = gui:FindFirstChild("MainFrame")
        if not frame then return end
        local header = frame:FindFirstChild("Header")
        local body = frame:FindFirstChild("Body")
        local divider = frame:FindFirstChild("Divider")
        if not header or not body then return end

        local killer = GetKillerPlayer()
        local killerName = killer and (killer.DisplayName or killer.Name) or "???"
        local hName = header:FindFirstChild("KillerName")
        if hName then hName.Text = killerName end

        for _, child in ipairs(body:GetChildren()) do
            if child:IsA("TextLabel") then child:Destroy() end
        end

        local perks = {}
        if killer and killer.Character then
            perks = ReadPerksFromChar(killer.Character)
        end

        local count = math.min(#perks, 6)
        if count == 0 then
            local lbl = Instance.new("TextLabel")
            lbl.Size = UDim2.new(1, 0, 0, 14)
            lbl.BackgroundTransparency = 1
            lbl.Font = Enum.Font.GothamMedium
            lbl.Text = "Waiting for perk data..."
            lbl.TextColor3 = Color3.fromRGB(180, 180, 180)
            lbl.TextSize = 9
            lbl.TextXAlignment = Enum.TextXAlignment.Left
            lbl.Parent = body
        else
            for i = 1, count do
                local p = perks[i]
                local lbl = Instance.new("TextLabel")
                lbl.Size = UDim2.new(1, 0, 0, 14)
                lbl.BackgroundTransparency = 1
                lbl.Font = Enum.Font.GothamMedium
                local lvlText = p.Level and (" (Lv " .. tostring(p.Level) .. ")") or ""
                lbl.Text = "• " .. p.Name .. lvlText
                lbl.TextColor3 = Color3.fromRGB(255, 255, 255)
                lbl.TextSize = 10
                lbl.TextXAlignment = Enum.TextXAlignment.Left
                lbl.Parent = body
            end
        end

        if PerkDisplayState.Minimized then
            if divider then divider.Visible = false end
            body.Visible = false
            frame.Size = UDim2.new(0, 200, 0, 28)
        else
            if divider then divider.Visible = true end
            body.Visible = true
            local bodyH = body.AbsoluteSize.Y
            frame.Size = UDim2.new(0, 200, 0, 28 + bodyH + 6)
        end
    end

    function W.KillerPerksDisplay_Start()
        if PerkDisplayState.Enabled then return end
        PerkDisplayState.Enabled = true
        BuildGui()
        task.spawn(function()
            task.wait(0.05)
            UpdateDisplay()
        end)
        PerkDisplayState.Thread = task.spawn(function()
            while PerkDisplayState.Enabled do
                pcall(UpdateDisplay)
                task.wait(1)
            end
        end)
    end
    function W.KillerPerksDisplay_Stop()
        PerkDisplayState.Enabled = false
        if PerkDisplayState.Thread then
            pcall(function() task.cancel(PerkDisplayState.Thread) end)
            PerkDisplayState.Thread = nil
        end
        if PerkDisplayState.Gui then
            pcall(function() PerkDisplayState.Gui:Destroy() end)
            PerkDisplayState.Gui = nil
        end
    end
end

--====================================================--
-- INFINITE LUNGE
--====================================================--
local OW_OriginalLungeBoost = nil
function W.UpdateInfiniteLunge()
    local char = LocalPlayer.Character
    if not char then return end
    if OW.InfLunge_Enabled then
        if char:GetAttribute("lungeboost") ~= 999999 then
            OW_OriginalLungeBoost = char:GetAttribute("lungeboost") or 1
            char:SetAttribute("lungeboost", 999999)
        end
    else
        if OW_OriginalLungeBoost then
            char:SetAttribute("lungeboost", OW_OriginalLungeBoost)
            OW_OriginalLungeBoost = nil
        end
    end
end
W.OW_UpdateInfiniteLunge = W.UpdateInfiniteLunge
LocalPlayer.CharacterRemoving:Connect(function()
    OW_OriginalLungeBoost = nil
end)

--====================================================--
-- COUNTER AUTO PARRY
--====================================================--
do
    local CounterParryAnimList = {}
    for id, _ in pairs(KillerAttackAnims) do
        table.insert(CounterParryAnimList, id)
    end
    task.spawn(function()
        while true do
            task.wait(0.5)
            if not OW.CounterParry_Enabled then continue end
            local char = LocalPlayer.Character
            if not char then continue end
            local myRoot = char:FindFirstChild("HumanoidRootPart")
            if not myRoot then continue end
            local near = false
            for _, p in pairs(Players:GetPlayers()) do
                if p ~= LocalPlayer and p.Team and string.find(string.lower(p.Team.Name), "survivor", 1, true) then
                    local r = p.Character and p.Character:FindFirstChild("HumanoidRootPart")
                    if r and (myRoot.Position - r.Position).Magnitude <= 15 then
                        near = true
                        break
                    end
                end
            end
            if near then
                local randomId = CounterParryAnimList[math.random(1, #CounterParryAnimList)]
                local anim = Instance.new("Animation")
                anim.AnimationId = "rbxassetid://" .. randomId
                local hum = char:FindFirstChildOfClass("Humanoid")
                local animator = hum and hum:FindFirstChildOfClass("Animator")
                if animator then
                    local track = animator:LoadAnimation(anim)
                    track:Play()
                    track:AdjustWeight(0)
                    task.wait(0.05)
                    track:Stop()
                    anim:Destroy()
                end
            end
        end
    end)
end

--====================================================--
-- AIM LOCK HIDDEN
--====================================================--
do
    local AimLockThread = nil
    local AimLockAiming = false
    local AimLockHoldKey = Enum.KeyCode.E
    local AimLockMobileHooks = {}
    local function AimLock_GetClosestTarget()
        local hrp = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
        if not hrp then return nil end
        local myTeam = LocalPlayer.Team and LocalPlayer.Team.Name or ""
        local myIsKiller = string.find(string.lower(myTeam), "killer", 1, true) ~= nil
        local closestTarget, shortestDist = nil, math.huge
        for _, player in pairs(Players:GetPlayers()) do
            if player ~= LocalPlayer and player.Character then
                local targetHrp = player.Character:FindFirstChild("HumanoidRootPart")
                local hum = player.Character:FindFirstChildOfClass("Humanoid")
                local playerTeam = player.Team and player.Team.Name or ""
                local theirIsKiller = string.find(string.lower(playerTeam), "killer", 1, true) ~= nil
                if targetHrp and hum and hum.Health > 0 then
                    local isEnemy = (myIsKiller and not theirIsKiller) or ((not myIsKiller) and theirIsKiller)
                    if isEnemy then
                        local dist = (targetHrp.Position - hrp.Position).Magnitude
                        if dist < shortestDist then
                            shortestDist, closestTarget = dist, targetHrp
                        end
                    end
                end
            end
        end
        return closestTarget
    end
    local function AimLock_Start()
        if AimLockThread then task.cancel(AimLockThread) end
        AimLockThread = task.spawn(function()
            while OW.AimHidden_Enabled do
                if AimLockAiming then
                    local target = AimLock_GetClosestTarget()
                    if target then
                        pcall(function()
                            Workspace.CurrentCamera.CFrame = CFrame.new(
                                Workspace.CurrentCamera.CFrame.Position,
                                target.Position + Vector3.new(0, 2.5, 0)
                            )
                        end)
                    end
                end
                task.wait()
            end
        end)
    end
    UserInputService.InputBegan:Connect(function(input, gp)
        if gp or not OW.AimHidden_Enabled then return end
        if input.UserInputType == Enum.UserInputType.MouseButton2 then AimLockAiming = true end
        if input.UserInputType == Enum.UserInputType.Keyboard and input.KeyCode == AimLockHoldKey then AimLockAiming = true end
    end)
    UserInputService.InputEnded:Connect(function(input)
        if not OW.AimHidden_Enabled then return end
        if input.UserInputType == Enum.UserInputType.MouseButton2 then AimLockAiming = false end
        if input.UserInputType == Enum.UserInputType.Keyboard and input.KeyCode == AimLockHoldKey then AimLockAiming = false end
    end)
    local function AimLock_DisconnectMobile()
        for _, c in pairs(AimLockMobileHooks) do pcall(function() c:Disconnect() end) end
        AimLockMobileHooks = {}
    end
    local function AimLock_SetupMobile()
        if not UserInputService.TouchEnabled then return end
        AimLock_DisconnectMobile()
        task.spawn(function()
            local pGui = LocalPlayer:FindFirstChildOfClass("PlayerGui")
            if not pGui then return end
            local NAMES = {"attack","shoot","fire","basicattack","tembak","hidden","skill","ability","power","skill1","ability1","gui-mob"}
            local function isBtn(obj)
                if not obj then return false end
                if not (obj:IsA("GuiButton") or obj:IsA("ImageButton") or obj:IsA("TextButton")) then return false end
                local l = obj.Name:lower()
                for _, n in ipairs(NAMES) do
                    if l == n or l:find(n, 1, true) then return true end
                end
                return false
            end
            local function hook(btn)
                if not btn or btn:GetAttribute("AimLockHooked") then return end
                btn:SetAttribute("AimLockHooked", true)
                table.insert(AimLockMobileHooks, btn.InputBegan:Connect(function(i)
                    if i.UserInputType == Enum.UserInputType.Touch or i.UserInputType == Enum.UserInputType.MouseButton1 then
                        if OW.AimHidden_Enabled then AimLockAiming = true end
                    end
                end))
                table.insert(AimLockMobileHooks, btn.InputEnded:Connect(function(i)
                    if i.UserInputType == Enum.UserInputType.Touch or i.UserInputType == Enum.UserInputType.MouseButton1 then
                        AimLockAiming = false
                    end
                end))
                table.insert(AimLockMobileHooks, btn:GetPropertyChangedSignal("Visible"):Connect(function()
                    if not btn.Visible then AimLockAiming = false end
                end))
            end
            local function scan()
                for _, ch in ipairs(pGui:GetChildren()) do
                    local ctrl = ch:FindFirstChild("Controls")
                    if ctrl then
                        for _, obj in ipairs(ctrl:GetDescendants()) do
                            if isBtn(obj) then hook(obj) end
                        end
                    end
                end
            end
            scan()
            table.insert(AimLockMobileHooks, pGui.ChildAdded:Connect(function() task.wait(0.3); scan() end))
        end)
    end
    if UserInputService.TouchEnabled then AimLock_SetupMobile() end
    LocalPlayer.CharacterAdded:Connect(function()
        AimLockAiming = false
        if UserInputService.TouchEnabled then task.wait(2); AimLock_SetupMobile() end
    end)
    function W.AimHidden_SetEnabled(state)
        OW.AimHidden_Enabled = state
        if state then
            AimLock_Start()
        else
            AimLockAiming = false
            if AimLockThread then task.cancel(AimLockThread); AimLockThread = nil end
        end
    end
    function W.AimHidden_SetKey(keyName)
        local ok, kc = pcall(function() return Enum.KeyCode[tostring(keyName):upper()] end)
        if ok and kc then AimLockHoldKey = kc; OW.AimHidden_Key = kc.Name end
    end
end

--====================================================--
-- AIM LOCK ATTACK
--====================================================--
do
    local AttackAim = {
        Enabled = false, Holding = false, Strength = 1,
        Predict = true, PredictStrength = 0.12, FOV = 250,
        VisibilityCheck = true, AimPart = "HumanoidRootPart",
    }
    local AttackAimConnection = nil
    local CurrentAttackButton = nil
    local AttackPaths = {
        "Slasher-mob.Controls.attack",
        "Masked-mob.Controls.attack",
        "Killer-mob.Controls.attack",
    }
    local RayParams = RaycastParams.new()
    RayParams.FilterType = Enum.RaycastFilterType.Exclude
    local function AL_IsVisible(part)
        local cam = Workspace.CurrentCamera
        if not cam then return true end
        RayParams.FilterDescendantsInstances = { LocalPlayer.Character }
        local origin = cam.CFrame.Position
        local dir = part.Position - origin
        local result = Workspace:Raycast(origin, dir, RayParams)
        if not result then return true end
        return result.Instance:IsDescendantOf(part.Parent)
    end
    local function AL_GetAttackButton()
        for _, path in ipairs(AttackPaths) do
            local current = LocalPlayer:FindFirstChild("PlayerGui")
            for seg in string.gmatch(path, "[^%.]+") do
                current = current and current:FindFirstChild(seg)
            end
            if current and current:IsA("GuiObject") then return current end
        end
        return nil
    end
    local function AL_GetClosestAttackTarget()
        local cam = Workspace.CurrentCamera
        if not cam then return nil end
        local center = Vector2.new(cam.ViewportSize.X/2, cam.ViewportSize.Y/2)
        local closest, shortest = nil, AttackAim.FOV
        for _, p in ipairs(Players:GetPlayers()) do
            if p ~= LocalPlayer and p.Team and string.find(string.lower(p.Team.Name), "survivor", 1, true) and p.Character then
                local hrp = p.Character:FindFirstChild(AttackAim.AimPart)
                local hum = p.Character:FindFirstChildOfClass("Humanoid")
                if hrp and hum and hum.Health > 0 then
                    local pos, visible = cam:WorldToViewportPoint(hrp.Position)
                    if visible then
                        local dist = (Vector2.new(pos.X, pos.Y) - center).Magnitude
                        if dist < shortest then
                            if AttackAim.VisibilityCheck then
                                if not AL_IsVisible(hrp) then continue end
                            end
                            shortest = dist
                            closest = hrp
                        end
                    end
                end
            end
        end
        return closest
    end
    local function AL_StartAttackAim()
        if AttackAimConnection then return end
        AttackAimConnection = RunService.RenderStepped:Connect(function()
            if not AttackAim.Enabled then return end
            if not AttackAim.Holding then return end
            local target = AL_GetClosestAttackTarget()
            if not target then return end
            local cam = Workspace.CurrentCamera
            local pos = target.Position
            if AttackAim.Predict then
                pos = pos + (target.AssemblyLinearVelocity * AttackAim.PredictStrength)
            end
            cam.CFrame = CFrame.new(cam.CFrame.Position, pos)
        end)
    end
    UserInputService.InputBegan:Connect(function(input, gp)
        if gp then return end
        if input.UserInputType == Enum.UserInputType.MouseButton2 and AttackAim.Enabled then
            AttackAim.Holding = true
        end
    end)
    UserInputService.InputEnded:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton2 then
            AttackAim.Holding = false
        end
    end)
    task.spawn(function()
        while true do
            task.wait(1)
            local btn = AL_GetAttackButton()
            if btn and btn ~= CurrentAttackButton then
                CurrentAttackButton = btn
                btn.InputBegan:Connect(function(input)
                    if input.UserInputType == Enum.UserInputType.Touch and AttackAim.Enabled then
                        AttackAim.Holding = true
                    end
                end)
                btn.InputEnded:Connect(function(input)
                    if input.UserInputType == Enum.UserInputType.Touch then
                        AttackAim.Holding = false
                    end
                end)
            end
        end
    end)
    W.AttackAim_Start = AL_StartAttackAim
    W.AttackAim_Cfg = AttackAim
end

--====================================================--
-- ANTI BLIND
--====================================================--
function W.SetupAntiBlind()
    pcall(function()
        local r  = ReplicatedStorage:FindFirstChild("Remotes")
        local i  = r and r:FindFirstChild("Items")
        local fl = i and i:FindFirstChild("Flashlight")
        local gb = fl and fl:FindFirstChild("GotBlinded")
        if not (gb and gb:IsA("RemoteEvent")) then return end

        local ok, mt = pcall(function() return getrawmetatable(game) end)
        if ok and mt and setreadonly then
            pcall(function()
                setreadonly(mt, false)
                local old = mt.__namecall
                mt.__namecall = newcclosure(function(self, ...)
                    if not checkcaller() and getgenv().OW and getgenv().OW.AntiBlind_Enabled and self == gb then
                        local method = getnamecallmethod()
                        if method == "FireServer" and W.GetRole() == "Killer" then
                            return nil
                        end
                    end
                    return old(self, ...)
                end)
                setreadonly(mt, true)
            end)
        end
    end)
end
pcall(W.SetupAntiBlind)

--====================================================--
-- DESTROY PALLET
--====================================================--
getgenv().OneW_IsBreakingPallet = false
function W.DestroyAllPallets()
    if not OW.DestroyPallet then return end
    if W.GetRole() ~= "Killer" then return end
    if getgenv().OneW_IsBreakingPallet then return end

    local char = LocalPlayer.Character
    local root = char and char:FindFirstChild("HumanoidRootPart")
    if not char or not root then return end

    local stunned = char:GetAttribute("IsStunned") or char:GetAttribute("isStunned")
    local immobile = char:GetAttribute("Immobile") or char:GetAttribute("immobile")
    local carrying = char:GetAttribute("IsCarrying") or char:GetAttribute("isCarrying")
    local ci = char:FindFirstChild("CheckInterractable")
    local action = ci and (ci:GetAttribute("action") or ci:GetAttribute("Action"))
    if stunned or immobile or carrying or action then return end

    local pts = CollectionService:GetTagged("PalletPointSlide")
    local nearest, minDist = nil, 6
    for _, p in ipairs(pts) do
        if p:IsA("BasePart") and not CollectionService:HasTag(p, "doing action") then
            local d = (p.Position - root.Position).Magnitude
            if d < minDist then minDist = d; nearest = p end
        end
    end
    if not nearest then return end

    getgenv().OneW_IsBreakingPallet = true
    task.spawn(function()
        pcall(function()
            local r = ReplicatedStorage:FindFirstChild("Remotes")
            local pFold = r and r:FindFirstChild("Pallet")
            local j = pFold and pFold:FindFirstChild("Jason")
            if j then
                local dg = j:FindFirstChild("Destroy-Global")
                local commit = j:FindFirstChild("PalletBreakCommit")
                if dg and dg:IsA("RemoteEvent") then dg:FireServer(nearest) end
                if commit and commit:IsA("RemoteEvent") then commit:FireServer(nearest) end
            end
        end)
        task.wait(0.2)
        local start = os.clock()
        while char and char.Parent and (char:GetAttribute("Immobile") or char:GetAttribute("immobile")) do
            if os.clock() - start > 3 then break end
            task.wait(0.1)
        end
        getgenv().OneW_IsBreakingPallet = false
    end)
end

--====================================================--
-- SELECT MASKED POWER
--====================================================--
W.Masked = W.Masked or { CurrentPower = "Cobra", Powers = {"Cobra", "Richter", "Brandon", "Rabbit", "Alex", "Tony"} }
local Masked = W.Masked
function W.Masked_Activate()
    local ev = ReplicatedStorage:FindFirstChild("Remotes", true)
        and ReplicatedStorage.Remotes:FindFirstChild("Killers", true)
        and ReplicatedStorage.Remotes.Killers:FindFirstChild("Masked", true)
        and ReplicatedStorage.Remotes.Killers.Masked:FindFirstChild("Activatepower")
    if ev then
        pcall(function() ev:FireServer(Masked.CurrentPower) end)
        OW_Notify("Select Masked", "Activated: " .. Masked.CurrentPower, 2)
    else ForceNotify("Select Masked", "Activatepower remote not found", 2) end
end
function W.Masked_Deactivate()
    local ev = ReplicatedStorage:FindFirstChild("Remotes", true)
        and ReplicatedStorage.Remotes:FindFirstChild("Killers", true)
        and ReplicatedStorage.Remotes.Killers:FindFirstChild("Masked", true)
        and ReplicatedStorage.Remotes.Killers.Masked:FindFirstChild("Deactivatepower")
    if ev then
        pcall(function() ev:FireServer() end)
        OW_Notify("Select Masked", "Deactivated", 2)
    else ForceNotify("Select Masked", "Deactivatepower remote not found", 2) end
end--====================================================--
-- SILENT SPEAR VEIL V1
--====================================================--
local VeilState = { target = nil, lookVector = nil, velHistory = {} }
local function Veil_IsSurvivorVeil(p)
    if not p or not p.Team or not p.Team.Name then return false end
    return string.find(string.lower(p.Team.Name), "survivor", 1, true) ~= nil
end
local function Veil_solvePitch(p, d, dy)
    d = math.max(d, 0.1)
    local s2 = p.v0 * p.v0
    local root = s2 * s2 - p.g * (p.g * d * d + 2 * dy * s2)
    if root < 0 then root = 0 end
    local tanTheta = (s2 - math.sqrt(root)) / (p.g * d)
    local theta = math.atan(tanTheta)
    local t = d / (p.v0 * math.cos(theta))
    return theta, t
end
local function Veil_getCharacterVelocity(char)
    local root = char and (char:FindFirstChild("HumanoidRootPart") or char:FindFirstChild("Torso"))
    if not root or not root:IsA("BasePart") then return Vector3.zero end
    local now = os.clock()
    local last = VeilState.velHistory[char]
    local measured = Vector3.zero
    if last and now - last.t > 0.02 then
        measured = (root.Position - last.pos) / (now - last.t)
        if measured.Magnitude > 150 then measured = last.smooth or Vector3.zero end
    end
    local smooth = last and last.smooth or measured
    smooth = smooth:Lerp(measured, 0.65)
    VeilState.velHistory[char] = { pos = root.Position, t = now, smooth = smooth }
    if smooth.Magnitude < 1 then return Vector3.zero end
    return Vector3.new(smooth.X, 0, smooth.Z)
end
Players.PlayerRemoving:Connect(function(p)
    if p.Character then VeilState.velHistory[p.Character] = nil end
end)
local function Veil_UpdateAimbot()
    if GetRole() ~= "Killer" then
        VeilState.target = nil; VeilState.lookVector = nil
        return
    end
    local cam = Workspace.CurrentCamera
    if not cam then return end
    if not OW.VeilV1_Enabled then VeilState.target = nil; VeilState.lookVector = nil; return end
    local char = LocalPlayer.Character
    local hrp = char and char:FindFirstChild("HumanoidRootPart")
    if not hrp then return end
    local center = Vector2.new(cam.ViewportSize.X / 2, cam.ViewportSize.Y / 2)
    local nearest, nearestPart = nil, nil
    local bestDist = OW.VeilV1_FOV or 150
    local bestStudDist = OW.VeilV1_MaxDist or 280
    for _, p in ipairs(Players:GetPlayers()) do
        if p ~= LocalPlayer and Veil_IsSurvivorVeil(p) and p.Character then
            local pc = p.Character
            local isDown = pc:GetAttribute("Knocked") == true or pc:GetAttribute("HookProgressDepleting") == true
            if not isDown then
                local hum = pc:FindFirstChildOfClass("Humanoid")
                local targetPart = pc:FindFirstChild("UpperTorso") or pc:FindFirstChild("Torso") or pc:FindFirstChild("HumanoidRootPart")
                if hum and hum.Health > 0 and targetPart then
                    local sp, on = cam:WorldToViewportPoint(targetPart.Position)
                    if on and sp.Z > 0 then
                        local sd = (Vector2.new(sp.X, sp.Y) - center).Magnitude
                        if sd < bestDist then
                            local studDist = (targetPart.Position - hrp.Position).Magnitude
                            if studDist <= bestStudDist then bestDist = sd; nearest = p; nearestPart = targetPart end
                        end
                    end
                end
            end
        end
    end
    if nearest and nearest.Character and nearestPart then
        local tp = nearestPart.Position
        local hand = char:FindFirstChild("Right Arm") or char:FindFirstChild("RightHand")
        local origin = (hand and hand:IsA("BasePart")) and hand.Position or hrp.Position
        local dir = tp - origin
        local dist = dir.Magnitude
        if dist > 0.1 and dist <= (OW.VeilV1_MaxDist or 280) then
            local isAuraActive = char:GetAttribute("special") == true
            local prof
            if isAuraActive then
                prof = { v0 = 165, g = 96.5, windup = 0.10, latency = 0.04, maxlead = 25, scale = OW.VeilV1_Lead or 1.4 }
            else
                prof = { v0 = OW.VeilV1_SpearSpeed or 165, g = OW.VeilV1_Gravity or 103, windup = 0.10, latency = 0.04, maxlead = 45, scale = OW.VeilV1_Lead or 1.4 }
            end
            local aimPoint = tp
            if OW.VeilV1_AutoPredict then
                local vel = Veil_getCharacterVelocity(nearest.Character)
                if vel.Magnitude > 0.5 then
                    local h0 = Vector3.new(dir.X, 0, dir.Z)
                    local _, tFlight = Veil_solvePitch(prof, h0.Magnitude, dir.Y)
                    local ping = 0.08
                    pcall(function() ping = math.clamp(LocalPlayer:GetNetworkPing(), 0, 0.35) end)
                    local delay = tFlight + prof.windup + ping + prof.latency
                    for _ = 1, 2 do
                        local lead = vel * delay * prof.scale
                        local maxLead = math.clamp(dist * 0.6, 3, prof.maxlead)
                        if lead.Magnitude > maxLead then lead = lead.Unit * maxLead end
                        aimPoint = tp + lead
                        local ad = aimPoint - origin
                        local ah = Vector3.new(ad.X, 0, ad.Z)
                        local _, t2 = Veil_solvePitch(prof, math.max(ah.Magnitude, 0.1), ad.Y)
                        delay = t2 + prof.windup + ping + prof.latency
                    end
                end
            end
            local adir = aimPoint - origin
            local ah = Vector3.new(adir.X, 0, adir.Z)
            local ahDist = ah.Magnitude
            local pitch = Veil_solvePitch(prof, ahDist, adir.Y)
            if ahDist > 0.001 then VeilState.lookVector = ah.Unit * math.cos(pitch) + Vector3.new(0, math.sin(pitch), 0)
            else VeilState.lookVector = adir.Unit end
            VeilState.target = nearest
        end
    else VeilState.target = nil; VeilState.lookVector = nil end
end
local VeilHookState = { remoteHooked = false }
local function Veil_setupInterceptor()
    if VeilHookState.remoteHooked then return end
    if typeof(hookmetamethod) ~= "function" then return end
    task.spawn(function()
        pcall(function()
            local oldNamecall
            oldNamecall = hookmetamethod(game, "__namecall", function(self, ...)
                local method = getnamecallmethod()
                if not checkcaller() and method == "FireServer" then
                    if self.Name == "Spearthrow" and OW.VeilV1_Enabled and typeof(VeilState.lookVector) == "Vector3" and GetRole() == "Killer" then
                        local args = {...}
                        if typeof(args[1]) == "Vector3" then args[1] = VeilState.lookVector end
                        return oldNamecall(self, unpack(args))
                    end
                end
                return oldNamecall(self, ...)
            end)
            VeilHookState.remoteHooked = true
        end)
    end)
end
Veil_setupInterceptor()
RunService.RenderStepped:Connect(function() pcall(Veil_UpdateAimbot) end)

--====================================================--
-- SILENT SPEAR VEIL V2 (W424 style)
--====================================================--
do
    local Config = {}
    local Camera = Workspace.CurrentCamera
    local AimConfig = AimConfig or {}
    AimConfig.Aim_SilentVeil = false
    AimConfig.Aim_SilentVeilV2 = false
    AimConfig.Veil_ShowFOV = true
    AimConfig.SpearSmart_enable = false
    AimConfig.Veil_FOV = 150
    AimConfig.SPEAR_Speed = 165
    AimConfig.SPEAR_Gravity = workspace.Gravity * 0.5
    AimConfig.SPEAR_MaxDist = 200
    AimConfig.Veil_LeadMultiplier = 1.4
    AimConfig.AIM_Auto = false
    AimConfig.AIM_TargetPart = "Torso"

    local isChargingSpear = false
    local isAttackCooldown = false
    local isFiringSpear = false
    local currentTouchInput = nil

    local function IsVeilSilentOn()
        return AimConfig.Aim_SilentVeil or AimConfig.Aim_SilentVeilV2
    end

    function getTargetPartObject(char)
        if AimConfig.AIM_TargetPart == "Head" then 
            return char:FindFirstChild("Head")
        elseif AimConfig.AIM_TargetPart == "Root" or AimConfig.AIM_TargetPart == "HumanoidRootPart" then 
            return char:FindFirstChild("HumanoidRootPart")
        else 
            return char:FindFirstChild("Torso") or char:FindFirstChild("UpperTorso") or char:FindFirstChild("HumanoidRootPart") 
        end
    end

    function getClosestSurvivor()
        local myChar = LocalPlayer.Character
        local myRoot = myChar and myChar:FindFirstChild("HumanoidRootPart")
        if not myRoot then return nil end
        local closestFovDist = AimConfig.Veil_FOV
        local closestTarget = nil
        local cam = workspace.CurrentCamera
        local centerScreen = Vector2.new(cam.ViewportSize.X / 2, cam.ViewportSize.Y / 2)

        for _, p in ipairs(Players:GetPlayers()) do
            if p ~= LocalPlayer and p.Team and p.Team.Name == "Survivors" and p.Character then
                local char = p.Character
                local hum = char:FindFirstChildOfClass("Humanoid")
                local targetPart = getTargetPartObject(char)
                if hum and hum.Health > 0 and targetPart then
                    local dist3D = (targetPart.Position - myRoot.Position).Magnitude
                    if dist3D <= AimConfig.SPEAR_MaxDist then
                        local screenPos, onScreen = cam:WorldToViewportPoint(targetPart.Position)
                        if onScreen then
                            local targetPos2D = Vector2.new(screenPos.X, screenPos.Y)
                            local dist2D = (targetPos2D - centerScreen).Magnitude
                            if dist2D <= closestFovDist then
                                closestFovDist = dist2D
                                closestTarget = targetPart
                            end
                        end
                    end
                end
            end
        end
        return closestTarget
    end

    local veilTargetHighlight = Instance.new("Highlight")
    veilTargetHighlight.Name = "OneW_VeilTarget"
    veilTargetHighlight.FillColor = Color3.fromRGB(150, 150, 150)
    veilTargetHighlight.OutlineColor = Color3.fromRGB(255, 255, 255)
    veilTargetHighlight.FillTransparency = 0.5
    veilTargetHighlight.OutlineTransparency = 0

    local VeilTrackerEnabled = false
    local VeilTrackerLine = nil
    local currentVeilBillboard = nil

    local function setupVeilTrackerGui()
        if CoreGui:FindFirstChild("OneWVeilTrackerGui") then return end
        local sg = Instance.new("ScreenGui")
        sg.Name = "OneWVeilTrackerGui"
        sg.IgnoreGuiInset = true
        sg.ResetOnSpawn = false
        sg.Parent = CoreGui

        VeilTrackerLine = Instance.new("Frame")
        VeilTrackerLine.Name = "Line"
        VeilTrackerLine.AnchorPoint = Vector2.new(0.5, 0.5)
        VeilTrackerLine.BackgroundColor3 = Color3.fromRGB(138, 138, 138)
        VeilTrackerLine.BackgroundTransparency = 0.2
        VeilTrackerLine.BorderSizePixel = 0
        VeilTrackerLine.Visible = false
        VeilTrackerLine.Parent = sg

        currentVeilBillboard = nil
    end
    setupVeilTrackerGui()

    local VeilFOVFrame = nil
    if not CoreGui:FindFirstChild("OneWFOVCircleGui_Standalone") then
        local FOVGui = Instance.new("ScreenGui")
        FOVGui.Name = "OneWFOVCircleGui_Standalone"
        FOVGui.Parent = CoreGui
        FOVGui.ResetOnSpawn = false
        FOVGui.IgnoreGuiInset = true

        VeilFOVFrame = Instance.new("Frame")
        VeilFOVFrame.BackgroundTransparency = 1
        VeilFOVFrame.AnchorPoint = Vector2.new(0.5, 0.5)
        VeilFOVFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
        VeilFOVFrame.Visible = false
        VeilFOVFrame.Parent = FOVGui
        Instance.new("UICorner", VeilFOVFrame).CornerRadius = UDim.new(1, 0)
        local VeilFOVStroke = Instance.new("UIStroke", VeilFOVFrame)
        VeilFOVStroke.Color = Color3.fromRGB(222, 222, 222)
        VeilFOVStroke.Thickness = 1.5
    end

    local SpearInterceptorHooked = false
    function setupSpearInterceptor()
        if SpearInterceptorHooked then return end
        if not getrawmetatable or not setreadonly then
            warn("[SpearInterceptor]: Executor tidak support.")
            return
        end

        local Spearthrow = nil
        pcall(function()
            Spearthrow = ReplicatedStorage.Remotes.Killers.Veil.Spearthrow
        end)

        local mt = getrawmetatable(game)
        setreadonly(mt, false)
        local oldNamecall = mt.__namecall

        mt.__namecall = newcclosure(function(self, ...)
            local method = getnamecallmethod()
            if method == "FireServer" and not checkcaller() and typeof(self) == "Instance" and self.ClassName == "RemoteEvent" and self.Name == "Spearthrow" then
                if AimConfig.Aim_SilentVeil and not AimConfig.Aim_SilentVeilV2 then
                    return nil
                end
                if AimConfig.Aim_SilentVeilV2 and not isFiringSpear then
                    local lookVec, speed, originPos = ...
                    speed = speed or AimConfig.SPEAR_Speed or 165
                    local myChar = LocalPlayer.Character
                    local myHRP = myChar and myChar:FindFirstChild("HumanoidRootPart")
                    local startPart = myChar and (myChar:FindFirstChild("Head") or myHRP)
                    local isSpecial = myChar and myChar:GetAttribute("special") == true
                    if Config.SpearSmart_enable then
                        speed = isSpecial and 165 or 142.5
                    else
                        speed = AimConfig.SPEAR_Speed or 165
                    end
                    originPos = originPos or (Config.SpearSmart_enable and myHRP and myHRP.Position) or (startPart and startPart.Position)

                    local bestDir = lookVec
                    local targetPart = getClosestSurvivor()
                    if targetPart and originPos then
                        local targetHRP = targetPart:IsA("Model") and targetPart:FindFirstChild("HumanoidRootPart") or targetPart
                        local targetPos = targetHRP.Position
                        local targetVel = Vector3.new(0,0,0)
                        local targetHum = targetPart.Parent and targetPart.Parent:FindFirstChildOfClass("Humanoid")
                        if targetHum and targetHum.MoveDirection.Magnitude > 0 then
                            targetVel = targetHum.MoveDirection * targetHum.WalkSpeed
                        elseif targetHRP:IsA("BasePart") then
                            targetVel = targetHRP.AssemblyLinearVelocity
                        end
                        targetVel = Vector3.new(targetVel.X, 0, targetVel.Z)
                        local distance = (targetPos - originPos).Magnitude
                        local timeToHit = distance / math.max(speed, 1)
                        if Config.SpearSmart_enable then
                            local leadMultiplier = AimConfig.Veil_LeadMultiplier or 1.4
                            local predictedPos = targetPos + (targetVel * (timeToHit * leadMultiplier))
                            local spearGravity = workspace.Gravity * 0.5
                            local drop = 0.5 * spearGravity * (timeToHit * timeToHit)
                            local finalAimPos = predictedPos + Vector3.new(0, drop - 1.5, 0)
                            bestDir = (finalAimPos - originPos).Unit
                        else
                            local dynamicPrediction = math.clamp(distance / 50, 0.1, 4.0)
                            local predictedPos = targetPos + (targetVel * (timeToHit * dynamicPrediction))
                            local distanceMultiplier = math.clamp(distance / 100, 1, 2.5)
                            local autoGravity = math.max(0, distance - 8)
                            local gravity = AimConfig.AIM_Auto and autoGravity or (AimConfig.SPEAR_Gravity or workspace.Gravity * 0.5)
                            local drop = 0.5 * gravity * (timeToHit * timeToHit) * distanceMultiplier
                            local finalAimPos = predictedPos + Vector3.new(0, drop, 0)
                            bestDir = (finalAimPos - originPos).Unit
                        end
                    end
                    isFiringSpear = true
                    pcall(function()
                        if Spearthrow then Spearthrow:FireServer(bestDir, speed, originPos)
                        else self:FireServer(bestDir, speed, originPos) end
                    end)
                    isFiringSpear = false
                    return
                end
            end
            return oldNamecall(self, ...)
        end)
        setreadonly(mt, true)
        SpearInterceptorHooked = true
    end
    setupSpearInterceptor()

    UserInputService.InputBegan:Connect(function(input, gameProcessed)
        local isTouch = (input.UserInputType == Enum.UserInputType.Touch)
        if gameProcessed and not isTouch then return end

        local char = LocalPlayer.Character
        local isSpearMode = char and char:GetAttribute("spearmode") == true

        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            if IsVeilSilentOn() and isSpearMode then
                isChargingSpear = true
            end
        end

        if isTouch then
            if IsVeilSilentOn() and isSpearMode then
                local playerGui = LocalPlayer:FindFirstChild("PlayerGui")
                if playerGui then
                    local slasherMob = playerGui:FindFirstChild("Slasher-mob")
                    if slasherMob then
                        local controls = slasherMob:FindFirstChild("Controls")
                        if controls then
                            local attackBtn = controls:FindFirstChild("attack")
                            if attackBtn and attackBtn.Visible then
                                local pos = input.Position
                                local absPos = attackBtn.AbsolutePosition
                                local absSize = attackBtn.AbsoluteSize
                                if pos.X >= absPos.X and pos.X <= (absPos.X + absSize.X) and pos.Y >= absPos.Y and pos.Y <= (absPos.Y + absSize.Y) then
                                    isChargingSpear = true
                                    currentTouchInput = input
                                end
                            end
                        end
                    end
                end
            end
        end
    end)

    UserInputService.InputEnded:Connect(function(input, gameProcessed)
        local isTouchEnd = (input.UserInputType == Enum.UserInputType.Touch)

        if isChargingSpear and (input == currentTouchInput or input.UserInputType == Enum.UserInputType.MouseButton1) then
            isChargingSpear = false
            if isAttackCooldown then return end
            isAttackCooldown = true
            task.delay(2, function() isAttackCooldown = false end)

            local myChar = LocalPlayer.Character
            local myHRP = myChar and myChar:FindFirstChild("HumanoidRootPart")
            local startPart = myChar and (myChar:FindFirstChild("Head") or myHRP)
            if startPart and myHRP then
                local isSpecial = myChar:GetAttribute("special") == true
                local startPos = Config.SpearSmart_enable and myHRP.Position or startPart.Position
                local currentSpearSpeed = Config.SpearSmart_enable and (isSpecial and 165 or 142.5) or AimConfig.SPEAR_Speed
                local targetPart = getClosestSurvivor()
                local aimDirection
                if targetPart then
                    local targetHRP = targetPart:IsA("Model") and targetPart:FindFirstChild("HumanoidRootPart") or targetPart
                    local targetPos = targetHRP.Position
                    local targetVel = Vector3.new(0,0,0)
                    local targetHum = targetPart.Parent and targetPart.Parent:FindFirstChildOfClass("Humanoid")
                    if targetHum and targetHum.MoveDirection.Magnitude > 0 then
                        targetVel = targetHum.MoveDirection * targetHum.WalkSpeed
                    elseif targetHRP:IsA("BasePart") then
                        targetVel = targetHRP.AssemblyLinearVelocity
                    end
                    targetVel = Vector3.new(targetVel.X, 0, targetVel.Z)
                    local distance = (targetPos - startPos).Magnitude
                    local timeToHit = distance / currentSpearSpeed
                    if Config.SpearSmart_enable then
                        local leadMultiplier = AimConfig.Veil_LeadMultiplier or 1.4
                        local predictedPos = targetPos + (targetVel * (timeToHit * leadMultiplier))
                        local spearGravity = workspace.Gravity * 0.5
                        local dropCompensation = 0.5 * spearGravity * (timeToHit ^ 2)
                        local finalAimPos = predictedPos + Vector3.new(0, dropCompensation - 1.5, 0)
                        aimDirection = (finalAimPos - startPos).Unit
                    else
                        local dynamicPrediction = math.clamp(distance / 50, 0.1, 4.0)
                        local predictedPos = targetPos + (targetVel * (timeToHit * dynamicPrediction))
                        local distanceMultiplier = math.clamp(distance / 100, 1, 2.5)
                        local autoGravity = math.max(0, distance - 8)
                        local gravity = AimConfig.AIM_Auto and autoGravity or AimConfig.SPEAR_Gravity
                        local dropCompensation = 0.5 * gravity * (timeToHit ^ 2) * distanceMultiplier
                        local finalAimPos = predictedPos + Vector3.new(0, dropCompensation, 0)
                        aimDirection = (finalAimPos - startPos).Unit
                    end
                else
                    aimDirection = Camera.CFrame.LookVector
                end
                if AimConfig.Aim_SilentVeil then
                    pcall(function()
                        ReplicatedStorage.Remotes.Killers.Veil.Spearthrow:FireServer(aimDirection, currentSpearSpeed, startPos)
                    end)
                end
            end
        end
    end)

    RunService.RenderStepped:Connect(function()
        local char = LocalPlayer.Character
        local isSpearMode = char and char:GetAttribute("spearmode") == true
        local cam = workspace.CurrentCamera

        if VeilFOVFrame then
            if IsVeilSilentOn() and AimConfig.Veil_ShowFOV and isSpearMode then
                VeilFOVFrame.Visible = true
                VeilFOVFrame.Size = UDim2.new(0, AimConfig.Veil_FOV * 2, 0, AimConfig.Veil_FOV * 2)
            else
                VeilFOVFrame.Visible = false
            end
        end

        if IsVeilSilentOn() and isSpearMode and cam then
            local targetPart = getClosestSurvivor()
            if targetPart and targetPart.Parent then
                veilTargetHighlight.Parent = targetPart.Parent

                if VeilTrackerEnabled then
                    if not currentVeilBillboard or currentVeilBillboard.Parent ~= targetPart then
                        if currentVeilBillboard then currentVeilBillboard:Destroy() end
                        local bb = Instance.new("BillboardGui")
                        bb.Name = "VeilTrackerBillboard"
                        bb.Size = UDim2.fromOffset(14, 14)
                        bb.AlwaysOnTop = true
                        bb.LightInfluence = 0
                        bb.MaxDistance = 500
                        local ring = Instance.new("Frame")
                        ring.AnchorPoint = Vector2.new(0.5, 0.5)
                        ring.Position = UDim2.fromScale(0.5, 0.5)
                        ring.Size = UDim2.fromScale(1, 1)
                        ring.BackgroundTransparency = 1
                        ring.Parent = bb
                        Instance.new("UICorner", ring).CornerRadius = UDim.new(1, 0)
                        local stroke = Instance.new("UIStroke")
                        stroke.Color = Color3.fromRGB(255, 255, 255)
                        stroke.Thickness = 1
                        stroke.Transparency = 0.1
                        stroke.Parent = ring
                        bb.Adornee = targetPart
                        bb.Parent = targetPart
                        currentVeilBillboard = bb
                    end

                    local sp, onScreen = cam:WorldToViewportPoint(targetPart.Position)
                    if onScreen and sp.Z > 0 and VeilTrackerLine then
                        local vp = cam.ViewportSize
                        local fromX = vp.X * 0.5
                        local fromY = vp.Y
                        local toX, toY = sp.X, sp.Y
                        local dx, dy = toX - fromX, toY - fromY
                        local length = math.sqrt(dx * dx + dy * dy)
                        VeilTrackerLine.Size = UDim2.fromOffset(math.max(length, 1), 1)
                        VeilTrackerLine.Position = UDim2.fromOffset((fromX + toX) * 0.5, (fromY + toY) * 0.5)
                        VeilTrackerLine.Rotation = math.deg(math.atan2(dy, dx))
                        VeilTrackerLine.Visible = true
                    else
                        if VeilTrackerLine then VeilTrackerLine.Visible = false end
                    end
                else
                    if currentVeilBillboard then
                        currentVeilBillboard:Destroy()
                        currentVeilBillboard = nil
                    end
                    if VeilTrackerLine then VeilTrackerLine.Visible = false end
                end
            else
                veilTargetHighlight.Parent = nil
                if currentVeilBillboard then
                    currentVeilBillboard:Destroy()
                    currentVeilBillboard = nil
                end
                if VeilTrackerLine then VeilTrackerLine.Visible = false end
            end
        else
            veilTargetHighlight.Parent = nil
            if currentVeilBillboard then
                currentVeilBillboard:Destroy()
                currentVeilBillboard = nil
            end
            if VeilTrackerLine then VeilTrackerLine.Visible = false end
        end
    end)

    W.W424Veil_API = {
        AimConfig = AimConfig,
        Config = Config,
        getClosestSurvivor = getClosestSurvivor,
        IsVeilSilentOn = IsVeilSilentOn,
        setTracker = function(v) VeilTrackerEnabled = v end,
    }
end

--====================================================--
-- BYPASS NO COOLDOWN
--====================================================--
-- Hidden Leap Bypass
getgenv().OneW_HiddenLeapBypassThread = nil
function W.StartHiddenCooldownBypass()
    if getgenv().OneW_HiddenLeapBypassThread then return end
    getgenv().OneW_HiddenLeapBypassThread = task.spawn(function()
        local leapFunction, m2Function
        local function scanGC()
            pcall(function()
                for _, v in pairs(getgc(true)) do
                    if type(v) == "function" and islclosure(v) then
                        local info
                        pcall(function() info = debug.getinfo(v) end)
                        if info then
                            if info.name == "tryActivate" then leapFunction = v
                            elseif info.name == "playM2Animation" then m2Function = v end
                        end
                    end
                    if leapFunction and m2Function then break end
                end
            end)
        end
        scanGC()
        local lastScan = os.clock()
        while task.wait(0.1) do
            if not OW.Bypass_HiddenLeap then break end
            if not (leapFunction and m2Function) then
                if os.clock() - lastScan >= 2 then lastScan = os.clock(); scanGC() end
            end
            if leapFunction then
                pcall(function()
                    for i, val in pairs(debug.getupvalues(leapFunction)) do
                        if type(val) == "boolean" and val == true then
                            debug.setupvalue(leapFunction, i, false)
                        end
                    end
                end)
            end
            if m2Function then
                pcall(function()
                    for i, val in pairs(debug.getupvalues(m2Function)) do
                        if type(val) == "boolean" and val == true then
                            debug.setupvalue(m2Function, i, false)
                        end
                    end
                end)
            end
        end
        getgenv().OneW_HiddenLeapBypassThread = nil
    end)
end
function W.SetHiddenLeap(v)
    OW.Bypass_HiddenLeap = v and true or false
    if OW.Bypass_HiddenLeap then W.StartHiddenCooldownBypass() end
end

-- Myers Infinite Grab
W.MyersGrabData = W.MyersGrabData or { Enabled = false, HotkeyCode = Enum.KeyCode.H }
local MyersGrabData = W.MyersGrabData
function W.getMyersTarget()
    local char = LocalPlayer.Character
    if not char then return nil end
    local myHRP = char:FindFirstChild("HumanoidRootPart")
    if not myHRP then return nil end
    local candidates = {}
    for _, player in ipairs(Players:GetPlayers()) do
        if player ~= LocalPlayer and player.Character then
            local hrp = player.Character:FindFirstChild("HumanoidRootPart")
            local hum = player.Character:FindFirstChildOfClass("Humanoid")
            if hrp and hum and hum.Health > 0 then
                table.insert(candidates, {
                    player = player, dist = (hrp.Position - myHRP.Position).Magnitude, health = hum.Health
                })
            end
        end
    end
    table.sort(candidates, function(a, b) return a.dist < b.dist end)
    for _, c in ipairs(candidates) do return c.player end
    return nil
end
function W.doMyersGrab()
    if not MyersGrabData.Enabled then return end
    local target = W.getMyersTarget()
    if not target or not target.Character then return end
    pcall(function() ReplicatedStorage.Remotes.Killers.Stalker.grab:FireServer(target.Character) end)
end
function W.setMyersGrab(v)
    MyersGrabData.Enabled = v and true or false
    OW.Bypass_MyersGrab = MyersGrabData.Enabled
end
UserInputService.InputBegan:Connect(function(input, gp)
    if gp then return end
    if input.KeyCode == MyersGrabData.HotkeyCode and MyersGrabData.Enabled then
        W.doMyersGrab()
    end
end)

-- Slasher Bypass (LakeMist + Pursuit)
getgenv().OneW_SlasherBypassThread = nil
function W.StartSlasherBypass()
    if getgenv().OneW_SlasherBypassThread then return end
    pcall(function()
        local b = true
        local mt = debug.getmetatable(b)
        if not mt then mt = {}; debug.setmetatable(b, mt) end
        if setreadonly then setreadonly(mt, false) end
        mt.__div = function() return 0 end
        mt.__mul = function() return 0 end
        mt.__add = function() return 0 end
        mt.__sub = function() return 0 end
        if setreadonly then setreadonly(mt, true) end
    end)
    getgenv().OneW_SlasherBypassThread = task.spawn(function()
        local toggleFunc = nil
        local pursuitHandler = nil
        local function scanGCForSlasher()
            pcall(function()
                for _, v in pairs(getgc(true)) do
                    if type(v) == "function" and islclosure(v) then
                        local consts = debug.getconstants(v)
                        local hasOffset, hasLinear, hasAction, hasTweenInfo = false, false, false, false
                        local hasPursuit, hasWalkSpeed = false, false
                        for _, c in pairs(consts) do
                            if c == "Offset" then hasOffset = true end
                            if c == "Linear" then hasLinear = true end
                            if c == "action" then hasAction = true end
                            if c == "TweenInfo" then hasTweenInfo = true end
                            if c == "Pursuit" then hasPursuit = true end
                            if c == "WalkSpeed" then hasWalkSpeed = true end
                        end
                        if hasOffset and hasLinear and hasAction and hasTweenInfo and not hasPursuit then toggleFunc = v end
                        if hasPursuit and hasTweenInfo and hasAction and hasWalkSpeed then pursuitHandler = v end
                    end
                    if toggleFunc and pursuitHandler then break end
                end
            end)
        end
        scanGCForSlasher()
        local lastScan = os.clock()
        while task.wait(0.1) do
            if not OW.Bypass_LakeMist and not OW.Bypass_Pursuit then break end
            if not (toggleFunc and pursuitHandler) then
                if os.clock() - lastScan >= 2 then scanGCForSlasher(); lastScan = os.clock() end
            end
            if toggleFunc and OW.Bypass_LakeMist then
                pcall(function()
                    debug.setupvalue(toggleFunc, 6, false)
                    debug.setupvalue(toggleFunc, 10, false)
                end)
            end
            if pursuitHandler and OW.Bypass_Pursuit then
                pcall(function()
                    debug.setupvalue(pursuitHandler, 5, false)
                    debug.setupvalue(pursuitHandler, 6, false)
                end)
            end
        end
        getgenv().OneW_SlasherBypassThread = nil
    end)
end
function W.SetLakeMist(v)
    OW.Bypass_LakeMist = v and true or false
    if OW.Bypass_LakeMist or OW.Bypass_Pursuit then W.StartSlasherBypass() end
end
function W.SetPursuit(v)
    OW.Bypass_Pursuit = v and true or false
    if OW.Bypass_LakeMist or OW.Bypass_Pursuit then W.StartSlasherBypass() end
end

-- Abyss Bypass
getgenv().OneW_AbyssBypassConn = nil
getgenv().OneW_CorruptHandlerFunc = nil
function W.StartAbyssBypass()
    if not getgenv().OneW_CorruptHandlerFunc then
        pcall(function()
            for _, v in pairs(getgc(true)) do
                if type(v) == "function" and islclosure(v) then
                    local constants = debug.getconstants(v)
                    if table.find(constants, "corrupt") and table.find(constants, "Immobile") then
                        getgenv().OneW_CorruptHandlerFunc = v
                        break
                    end
                end
            end
        end)
    end
    if not getgenv().OneW_CorruptHandlerFunc then return end
    if getgenv().OneW_AbyssBypassConn then
        getgenv().OneW_AbyssBypassConn:Disconnect()
    end
    getgenv().OneW_AbyssBypassConn = RunService.Heartbeat:Connect(function()
        if not OW.Bypass_AbyssCD then return end
        if getgenv().OneW_CorruptHandlerFunc then
            local upvalues = debug.getupvalues(getgenv().OneW_CorruptHandlerFunc)
            for idx, val in pairs(upvalues) do
                if type(val) == "boolean" and val == false then
                    debug.setupvalue(getgenv().OneW_CorruptHandlerFunc, idx, true)
                end
            end
        end
    end)
end
function W.SetAbyssBypass(v)
    OW.Bypass_AbyssCD = v and true or false
    if OW.Bypass_AbyssCD then W.StartAbyssBypass()
    else
        if getgenv().OneW_AbyssBypassConn then
            getgenv().OneW_AbyssBypassConn:Disconnect()
            getgenv().OneW_AbyssBypassConn = nil
        end
    end
end

-- Jeff Infinite Frenzy
getgenv().OneW_JeffBypassThread = nil
function W.StartJeffBypass()
    if getgenv().OneW_JeffBypassThread then return end
    getgenv().OneW_JeffBypassThread = task.spawn(function()
        while task.wait() do
            if not OW.Bypass_JeffFrenzy then break end
            pcall(function()
                local char = LocalPlayer.Character
                if char and char:GetAttribute("Frenzy") ~= true then
                    char:SetAttribute("Frenzy", true)
                end
            end)
        end
        getgenv().OneW_JeffBypassThread = nil
    end)
end
function W.StopJeffBypass()
    pcall(function()
        local char = LocalPlayer.Character
        if char and char:GetAttribute("Frenzy") == true then
            char:SetAttribute("Frenzy", false)
            local killer = ReplicatedStorage:FindFirstChild("Remotes")
                and ReplicatedStorage.Remotes:FindFirstChild("Killers")
                and ReplicatedStorage.Remotes.Killers:FindFirstChild("Killer")
            if killer then
                local deact = killer:FindFirstChild("Deactivatefromclient")
                if deact then deact:FireServer() end
            end
        end
    end)
end
function W.SetJeffFrenzy(v)
    OW.Bypass_JeffFrenzy = v and true or false
    if OW.Bypass_JeffFrenzy then W.StartJeffBypass()
    else W.StopJeffBypass() end
end

--====================================================--
-- UNLOCK SKILL WHILE CARRYING
--====================================================--
W.CarryConfig = W.CarryConfig or { Enabled = false, Hooked = false }
local CarryCfg = W.CarryConfig
function W.SetupCarryHook()
    if CarryCfg.Hooked then return end
    if typeof(getrawmetatable) ~= "function" then return end
    pcall(function()
        local mt = getrawmetatable(game)
        if setreadonly then setreadonly(mt, false) end
        local oldNamecall = mt.__namecall
        mt.__namecall = newcclosure(function(self, ...)
            local method = getnamecallmethod()
            local args = {...}
            if CarryCfg.Enabled and method == "GetAttribute" and not checkcaller() then
                if args[1] == "IsCarrying" then return false end
            end
            return oldNamecall(self, ...)
        end)
        if setreadonly then setreadonly(mt, true) end
        CarryCfg.Hooked = true
    end)
end
function W.SetUnlockCarry(v)
    OW.UnlockCarry_Enabled = v and true or false
    CarryCfg.Enabled = OW.UnlockCarry_Enabled
    if v then W.SetupCarryHook() end
end

--====================================================--
-- SPEAR AIMBOT
--====================================================--
do
    local SpearBtnData = {
        UI = nil, Button = nil, Active = true, DragLocked = false,
        Dragging = false, DragStart = nil, DragStartPos = nil,
        ManualTarget = nil, TargetIndex = 0,
        TargetLabel = nil, LeftArrow = nil, RightArrow = nil,
    }
    local function SpearAimbotCalc(targetPos)
        if not OW.SpearAimbot_Enabled or GetRole() ~= "Killer" then return nil end
        local char = LocalPlayer.Character
        if not char then return nil end
        local root = char:FindFirstChild("HumanoidRootPart")
        if not root then return nil end
        local startPos = root.Position + Vector3.new(0, 2, 0)
        local distance = (targetPos - startPos).Magnitude
        local gravity  = OW.SpearAimbot_Gravity or 50
        local speed    = OW.SpearAimbot_Speed or 100
        local time     = distance / speed
        local drop     = 0.5 * gravity * time * time
        return targetPos + Vector3.new(0, drop, 0)
    end
    local function Spear_GetTargetList()
        local root = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
        local list = {}
        if not root then return list end
        for _, player in ipairs(Players:GetPlayers()) do
            if player ~= LocalPlayer and TeamIs(player, "Survivor") and player.Character then
                local tr = player.Character:FindFirstChild("HumanoidRootPart")
                local th = player.Character:FindFirstChildOfClass("Humanoid")
                if tr and th and th.MaxHealth > 0 and (th.Health / th.MaxHealth) > 0.25 then
                    local dist = (tr.Position - root.Position).Magnitude
                    table.insert(list, { Player = player, Dist = dist })
                end
            end
        end
        table.sort(list, function(a, b) return a.Dist < b.Dist end)
        local players = {}
        for _, v in ipairs(list) do table.insert(players, v.Player) end
        return players
    end
    local function Spear_UpdateTargetLabel()
        if not (SpearBtnData and SpearBtnData.TargetLabel) then return end
        if SpearBtnData.ManualTarget and SpearBtnData.ManualTarget.Parent then
            SpearBtnData.TargetLabel.Text = SpearBtnData.ManualTarget.Name
        else
            SpearBtnData.TargetLabel.Text = "AUTO"
        end
        SpearBtnData.TargetLabel.Visible = true
    end
    local function Spear_CycleTarget(direction)
        local list = Spear_GetTargetList()
        if #list == 0 then
            SpearBtnData.ManualTarget = nil; SpearBtnData.TargetIndex = 0
            OW_Notify("Spear Aimbot", "Tidak ada target survivor.", 2)
            return
        end
        local curIdx = nil
        if SpearBtnData.ManualTarget then
            for i, p in ipairs(list) do
                if p == SpearBtnData.ManualTarget then curIdx = i; break end
            end
        end
        local nextIdx
        if curIdx then
            nextIdx = curIdx + direction
            if nextIdx > #list then nextIdx = 1 end
            if nextIdx < 1 then nextIdx = #list end
        else nextIdx = 1 end
        SpearBtnData.TargetIndex  = nextIdx
        SpearBtnData.ManualTarget = list[nextIdx]
        OW_Notify("Spear Aimbot", "Target: " .. SpearBtnData.ManualTarget.Name, 2)
        Spear_UpdateTargetLabel()
    end
    local function Spear_UpdateAim()
        if not OW.SpearAimbot_Enabled then return end
        if SpearBtnData and not SpearBtnData.Active then return end
        if GetRole() ~= "Killer" then return end
        local root = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
        if not root then return end
        local target = nil
        if SpearBtnData.ManualTarget then
            local p = SpearBtnData.ManualTarget
            local valid = p.Parent and TeamIs(p, "Survivor") and p.Character
            if valid then
                local tr = p.Character:FindFirstChild("HumanoidRootPart")
                local th = p.Character:FindFirstChildOfClass("Humanoid")
                valid = tr and th and th.MaxHealth > 0 and (th.Health / th.MaxHealth) > 0.25
            end
            if valid then target = p
            else SpearBtnData.ManualTarget = nil; Spear_UpdateTargetLabel() end
        end
        if not target then
            local closest, closestDist = nil, math.huge
            for _, player in ipairs(Players:GetPlayers()) do
                if player ~= LocalPlayer and TeamIs(player, "Survivor") and player.Character then
                    local tr = player.Character:FindFirstChild("HumanoidRootPart")
                    local th = player.Character:FindFirstChildOfClass("Humanoid")
                    if tr and th and th.MaxHealth > 0 and (th.Health / th.MaxHealth) > 0.25 then
                        local dist = (tr.Position - root.Position).Magnitude
                        if dist < closestDist then closestDist = dist; closest = player end
                    end
                end
            end
            target = closest
        end
        if target and target.Character then
            local tr = target.Character:FindFirstChild("HumanoidRootPart")
            if tr then
                local aimPos = SpearAimbotCalc(tr.Position)
                if aimPos then
                    local cam = Workspace.CurrentCamera
                    if cam then cam.CFrame = CFrame.new(cam.CFrame.Position, aimPos) end
                end
            end
        end
    end
    local function Spear_SetupButton()
        if SpearBtnData.UI then pcall(function() SpearBtnData.UI:Destroy() end) end
        local pg = LocalPlayer:FindFirstChild("PlayerGui")
        if not pg then return end
        SpearBtnData.UI = Instance.new("ScreenGui")
        SpearBtnData.UI.Name = "OneWSpearAimbotUI"
        SpearBtnData.UI.ResetOnSpawn = false
        SpearBtnData.UI.IgnoreGuiInset = true
        SpearBtnData.UI.Parent = pg
        SpearBtnData.Button = Instance.new("TextButton")
        SpearBtnData.Button.Name = "SpearAimbotButton"
        SpearBtnData.Button.Size = UDim2.new(0, 65, 0, 65)
        SpearBtnData.Button.Position = UDim2.new(0.15, 0, 0.75, 0)
        SpearBtnData.Button.AnchorPoint = Vector2.new(0.5, 0.5)
        SpearBtnData.Button.BackgroundColor3 = Color3.fromRGB(30, 10, 10)
        SpearBtnData.Button.BackgroundTransparency = 0.15
        SpearBtnData.Button.AutoButtonColor = true
        SpearBtnData.Button.Text = "SPEAR\nAIM"
        SpearBtnData.Button.TextColor3 = Color3.fromRGB(255, 100, 100)
        SpearBtnData.Button.TextSize = 11
        SpearBtnData.Button.Font = Enum.Font.GothamBold
        SpearBtnData.Button.Visible = false
        SpearBtnData.Button.ZIndex = 10
        SpearBtnData.Button.Parent = SpearBtnData.UI
        Instance.new("UICorner", SpearBtnData.Button).CornerRadius = UDim.new(1, 0)
        local spearStk = Instance.new("UIStroke", SpearBtnData.Button)
        spearStk.Color = Color3.fromRGB(255, 80, 80)
        spearStk.Thickness = 2
        spearStk.Transparency = 0.2
        local lockBtn = Instance.new("TextButton")
        lockBtn.Name = "LockDrag"
        lockBtn.Size = UDim2.new(0, 22, 0, 22)
        lockBtn.Position = UDim2.new(1, -5, 0, -5)
        lockBtn.AnchorPoint = Vector2.new(1, 0)
        lockBtn.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
        lockBtn.BackgroundTransparency = 0.3
        lockBtn.Text = "L"
        lockBtn.TextSize = 10
        lockBtn.Font = Enum.Font.GothamBold
        lockBtn.TextColor3 = Color3.new(1, 1, 1)
        lockBtn.ZIndex = 11
        lockBtn.Parent = SpearBtnData.Button
        Instance.new("UICorner", lockBtn).CornerRadius = UDim.new(1, 0)
        lockBtn.MouseButton1Click:Connect(function()
            SpearBtnData.DragLocked = not SpearBtnData.DragLocked
            lockBtn.Text = SpearBtnData.DragLocked and "X" or "L"
            lockBtn.BackgroundColor3 = SpearBtnData.DragLocked and Color3.fromRGB(200, 50, 50) or Color3.fromRGB(60, 60, 60)
        end)
        local targetLabel = Instance.new("TextLabel")
        targetLabel.Name = "SpearTargetLabel"
        targetLabel.Size = UDim2.new(0, 90, 0, 18)
        targetLabel.Position = UDim2.new(0.5, 0, 0, -22)
        targetLabel.AnchorPoint = Vector2.new(0.5, 0)
        targetLabel.BackgroundTransparency = 1
        targetLabel.Text = "AUTO"
        targetLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
        targetLabel.TextSize = 12
        targetLabel.Font = Enum.Font.GothamBold
        targetLabel.TextTruncate = Enum.TextTruncate.AtEnd
        targetLabel.ZIndex = 11
        targetLabel.Visible = false
        targetLabel.Parent = SpearBtnData.Button
        SpearBtnData.TargetLabel = targetLabel
        local leftArrow = Instance.new("TextButton")
        leftArrow.Name = "SpearTargetLeft"
        leftArrow.Size = UDim2.new(0, 28, 0, 28)
        leftArrow.Position = UDim2.new(0, -34, 0.5, 0)
        leftArrow.AnchorPoint = Vector2.new(0.5, 0.5)
        leftArrow.BackgroundColor3 = Color3.fromRGB(30, 10, 10)
        leftArrow.BackgroundTransparency = 0.15
        leftArrow.Text = "<"
        leftArrow.TextColor3 = Color3.fromRGB(158, 158, 158)
        leftArrow.TextSize = 16
        leftArrow.Font = Enum.Font.GothamBold
        leftArrow.ZIndex = 10
        leftArrow.Parent = SpearBtnData.Button
        Instance.new("UICorner", leftArrow).CornerRadius = UDim.new(1, 0)
        local leftStk = Instance.new("UIStroke", leftArrow)
        leftStk.Color = Color3.fromRGB(255, 80, 80)
        leftStk.Thickness = 1.5
        leftStk.Transparency = 0.3
        SpearBtnData.LeftArrow = leftArrow
        leftArrow.MouseButton1Click:Connect(function() Spear_CycleTarget(-1) end)
        local rightArrow = Instance.new("TextButton")
        rightArrow.Name = "SpearTargetRight"
        rightArrow.Size = UDim2.new(0, 28, 0, 28)
        rightArrow.Position = UDim2.new(1, 34, 0.5, 0)
        rightArrow.AnchorPoint = Vector2.new(0.5, 0.5)
        rightArrow.BackgroundColor3 = Color3.fromRGB(30, 10, 10)
        rightArrow.BackgroundTransparency = 0.15
        rightArrow.Text = ">"
        rightArrow.TextColor3 = Color3.fromRGB(255, 150, 150)
        rightArrow.TextSize = 16
        rightArrow.Font = Enum.Font.GothamBold
        rightArrow.ZIndex = 10
        rightArrow.Parent = SpearBtnData.Button
        Instance.new("UICorner", rightArrow).CornerRadius = UDim.new(1, 0)
        local rightStk = Instance.new("UIStroke", rightArrow)
        rightStk.Color = Color3.fromRGB(255, 80, 80)
        rightStk.Thickness = 1.5
        rightStk.Transparency = 0.3
        SpearBtnData.RightArrow = rightArrow
        rightArrow.MouseButton1Click:Connect(function() Spear_CycleTarget(1) end)
        SpearBtnData.Button.InputBegan:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
                if SpearBtnData.DragLocked then return end
                SpearBtnData.Dragging = true
                SpearBtnData.DragStart = input.Position
                SpearBtnData.DragStartPos = SpearBtnData.Button.Position
            end
        end)
        UserInputService.InputChanged:Connect(function(input)
            if SpearBtnData.Dragging and not SpearBtnData.DragLocked and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
                local delta = input.Position - SpearBtnData.DragStart
                SpearBtnData.Button.Position = UDim2.new(
                    SpearBtnData.DragStartPos.X.Scale, SpearBtnData.DragStartPos.X.Offset + delta.X,
                    SpearBtnData.DragStartPos.Y.Scale, SpearBtnData.DragStartPos.Y.Offset + delta.Y
                )
            end
        end)
        SpearBtnData.Button.InputEnded:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
                SpearBtnData.Dragging = false
            end
        end)
        SpearBtnData.Button.MouseButton1Click:Connect(function()
            SpearBtnData.Active = not SpearBtnData.Active
            if SpearBtnData.Active then
                SpearBtnData.Button.BackgroundColor3 = Color3.fromRGB(10, 40, 10)
                SpearBtnData.Button.TextColor3 = Color3.fromRGB(80, 255, 120)
                spearStk.Color = Color3.fromRGB(80, 255, 120)
                OW_Notify("Spear Aimbot", "Spear Aimbot AKTIF!", 3)
            else
                SpearBtnData.Button.BackgroundColor3 = Color3.fromRGB(30, 10, 10)
                SpearBtnData.Button.TextColor3 = Color3.fromRGB(255, 100, 100)
                spearStk.Color = Color3.fromRGB(255, 80, 80)
                OW_Notify("Spear Aimbot", "Spear Aimbot NONAKTIF", 3)
            end
        end)
    end
    RunService.RenderStepped:Connect(function() pcall(Spear_UpdateAim) end)
    RunService.Heartbeat:Connect(function()
        if SpearBtnData and SpearBtnData.Button then
            local shouldShow = OW.SpearAimbot_Enabled and GetRole() == "Killer"
            SpearBtnData.Button.Visible = shouldShow
            if shouldShow then pcall(Spear_UpdateTargetLabel) end
        end
    end)
    LocalPlayer.CharacterAdded:Connect(function()
        task.wait(0.5)
        if OW.SpearAimbot_Enabled then pcall(Spear_SetupButton) end
    end)
    function W.SpearAimbot_SetEnabled(v)
        OW.SpearAimbot_Enabled = v and true or false
        if v then SpearBtnData.Active = true; Spear_SetupButton()
        else
            if SpearBtnData.UI then pcall(function() SpearBtnData.UI:Destroy() end); SpearBtnData.UI = nil end
            SpearBtnData.Button = nil
        end
    end
    function W.SpearAimbot_SetGravity(v) OW.SpearAimbot_Gravity = tonumber(v) or 50 end
    function W.SpearAimbot_SetSpeed(v)   OW.SpearAimbot_Speed   = tonumber(v) or 100 end
end

--====================================================--
-- KILLER ABILITIES
--====================================================--
W.KillerAbilities = W.KillerAbilities or {
    AutoStalk = OW.AutoStalk, AutoStalkRange = OW.AutoStalk_Range,
    AutoKillAll = OW.AutoKillAll, DropAllPallet = OW.DropAllPallet,
    BlockAllVault = OW.BlockAllVault,
}
local KA = W.KillerAbilities
function W.KA_GetClosestSurvivor(range, minHealth)
    local root = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
    if not root then return nil end
    local closest, shortest = nil, (range or math.huge)
    for _, plr in ipairs(Players:GetPlayers()) do
        if plr ~= LocalPlayer and plr.Character and TeamIs(plr, "Survivor") then
            local hum = plr.Character:FindFirstChildOfClass("Humanoid")
            local hrp = plr.Character:FindFirstChild("HumanoidRootPart")
            if hum and hrp and hum.Health > (minHealth or 30) then
                local d = (hrp.Position - root.Position).Magnitude
                if d <= shortest then shortest = d; closest = plr end
            end
        end
    end
    return closest
end
local AutoStalkConnection = nil
function W.KA_StartAutoStalk()
    if AutoStalkConnection then return end
    AutoStalkConnection = RunService.Heartbeat:Connect(function()
        if not KA.AutoStalk then return end
        if GetRole() ~= "Killer" then return end
        local target = W.KA_GetClosestSurvivor(KA.AutoStalkRange, 30)
        if not target or not target.Character then return end
        local stalkEvent = ReplicatedStorage:FindFirstChild("Remotes", true)
            and ReplicatedStorage.Remotes:FindFirstChild("Killers", true)
            and ReplicatedStorage.Remotes.Killers:FindFirstChild("Stalker", true)
            and ReplicatedStorage.Remotes.Killers.Stalker:FindFirstChild("StartStalking")
        if stalkEvent then pcall(function() stalkEvent:FireServer(target) end) end
    end)
end
function W.KA_StopAutoStalk()
    if AutoStalkConnection then
        pcall(function() AutoStalkConnection:Disconnect() end)
        AutoStalkConnection = nil
    end
end
function W.KA_SetAutoStalk(v)
    KA.AutoStalk = v and true or false
    OW.AutoStalk = KA.AutoStalk
    if KA.AutoStalk then W.KA_StartAutoStalk() else W.KA_StopAutoStalk() end
end
local KillAllTarget = nil
function W.KA_UpdateKillAll()
    if not KA.AutoKillAll then KillAllTarget = nil; return end
    if GetRole() ~= "Killer" then KillAllTarget = nil; return end
    local root = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
    if not root then return end
    local tChar = KillAllTarget and KillAllTarget.Character
    if not KillAllTarget or not tChar or not tChar.Parent
        or not tChar:FindFirstChild("Humanoid") or tChar.Humanoid.Health <= 35 then
        KillAllTarget = W.KA_GetClosestSurvivor(math.huge, 30)
        tChar = KillAllTarget and KillAllTarget.Character
    end
    if KillAllTarget and tChar then
        local targetHRP = tChar:FindFirstChild("HumanoidRootPart")
        if targetHRP then
            local velocity  = targetHRP.AssemblyLinearVelocity
            local predict   = velocity * 0.15
            local targetPos = targetHRP.Position + predict
            local behind    = targetHRP.CFrame.LookVector * -3
            root.CFrame = CFrame.new(targetPos + behind, targetPos)
        end
        pcall(function()
            local attacks = ReplicatedStorage:FindFirstChild("Remotes")
                and ReplicatedStorage.Remotes:FindFirstChild("Attacks")
            local basic = attacks and attacks:FindFirstChild("BasicAttack")
            if basic then basic:FireServer(false) end
        end)
    end
end
function W.KA_SetAutoKillAll(v)
    KA.AutoKillAll = v and true or false
    OW.AutoKillAll = KA.AutoKillAll
    if not KA.AutoKillAll then KillAllTarget = nil end
end
local lastDropAllPallet = 0
function W.KA_DropAllPallets()
    if not KA.DropAllPallet then return end
    if GetRole() ~= "Killer" then return end
    local now = tick()
    if now - lastDropAllPallet < 2 then return end
    lastDropAllPallet = now
    pcall(function()
        local remotes = ReplicatedStorage:FindFirstChild("Remotes")
        local palletFold = remotes and remotes:FindFirstChild("Pallet")
        local dropEvent = palletFold and palletFold:FindFirstChild("PalletDropEvent")
        if not dropEvent then return end
        local map = workspace:FindFirstChild("Map")
        if not map then return end
        for _, obj in ipairs(map:GetDescendants()) do
            if obj.Name == "Palletwrong" and (obj:IsA("Model") or obj:IsA("Folder")) then
                local target = obj:FindFirstChild("PalletPointSlide") or obj:FindFirstChild("PalletPoint")
                if target then pcall(function() dropEvent:FireServer(target) end) end
            end
        end
    end)
end
function W.KA_SetDropAllPallet(v)
    KA.DropAllPallet = v and true or false
    OW.DropAllPallet = KA.DropAllPallet
end
local lastBlockVault = 0
function W.KA_BlockAllVaults()
    if not KA.BlockAllVault then return end
    local VaultEvent = ReplicatedStorage:FindFirstChild("Remotes")
        and ReplicatedStorage.Remotes:FindFirstChild("Window")
        and ReplicatedStorage.Remotes.Window:FindFirstChild("VaultEvent")
    if not VaultEvent then return end
    local map = workspace:FindFirstChild("Map")
    if not map then return end
    for _, trigger in ipairs(map:GetDescendants()) do
        if trigger.Name == "VaultTrigger" then
            pcall(function() VaultEvent:FireServer(trigger, true) end)
        end
    end
end
function W.KA_SetBlockAllVault(v)
    KA.BlockAllVault = v and true or false
    OW.BlockAllVault = KA.BlockAllVault
end
task.spawn(function()
    while true do
        task.wait(0.12)
        if KA.AutoKillAll then pcall(W.KA_UpdateKillAll) end
        if KA.DropAllPallet then pcall(W.KA_DropAllPallets) end
        if KA.BlockAllVault then pcall(W.KA_BlockAllVaults) end
        if OW.DestroyPallet then pcall(W.DestroyAllPallets) end
        pcall(W.OW_UpdateInfiniteLunge)
    end
end)
LocalPlayer.CharacterAdded:Connect(function()
    task.wait(1)
    if KA.AutoStalk then pcall(W.KA_StartAutoStalk) end
end)

--====================================================--
-- AUTO HOOK
--====================================================--
do
    local IsAutoHooking = false
    local function GetMapCacheHooks()
        local hooks = {}
        local map = Workspace:FindFirstChild("Map")
        if not map then return hooks end
        for _, obj in ipairs(map:GetDescendants()) do
            if obj:IsA("Model") and obj.Name == "Hook" then
                local hp = obj:FindFirstChild("HookPoint")
                    or obj:FindFirstChild("HookHitbox")
                    or obj:FindFirstChildWhichIsA("BasePart", true)
                if hp then table.insert(hooks, { model = obj, part = hp }) end
            end
        end
        return hooks
    end
    local function IsPlayerOnHook(character, hooks)
        local tr = character:FindFirstChild("HumanoidRootPart")
        if not tr then return false end
        for _, h in ipairs(hooks) do
            if (h.part.Position - tr.Position).Magnitude < 6 then return true end
        end
        return false
    end
    local function IsPlayerCarried(character)
        return character:GetAttribute("IsCarried") == true
    end
    local function FindDownedSurvivor(hooks)
        local myRoot = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
        if not myRoot then return nil, nil end
        local closest, closestDist, closestChar = nil, math.huge, nil
        for _, pl in ipairs(Players:GetPlayers()) do
            if pl == LocalPlayer or not pl.Character then continue end
            if not TeamIs(pl, "Survivor") then continue end
            local tr = pl.Character:FindFirstChild("HumanoidRootPart")
            local h = pl.Character:FindFirstChildOfClass("Humanoid")
            if not tr or not h then continue end
            local pct = h.MaxHealth > 0 and (h.Health / h.MaxHealth) or 0
            if pct > 0.25 or pct <= 0 then continue end
            if IsPlayerOnHook(pl.Character, hooks) then continue end
            if IsPlayerCarried(pl.Character) then continue end
            local d = (tr.Position - myRoot.Position).Magnitude
            if d < closestDist then
                closestDist = d
                closest = tr
                closestChar = pl.Character
            end
        end
        return closest, closestChar
    end
    local function FindNearestHook(targetPos, hooks)
        local closest, closestDist = nil, math.huge
        for _, h in ipairs(hooks) do
            local d = (h.part.Position - targetPos).Magnitude
            if d < closestDist then closestDist = d; closest = h end
        end
        return closest
    end
    local function DoAutoHook()
        if not OW.AutoHook then return end
        if IsAutoHooking then return end
        if GetRole() ~= "Killer" then return end
        local root = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
        if not root then return end
        local hooks = GetMapCacheHooks()
        if #hooks == 0 then return end
        local targetRoot, targetChar = FindDownedSurvivor(hooks)
        if not targetRoot then return end
        local nearestHook = FindNearestHook(targetRoot.Position, hooks)
        if not nearestHook then return end

        IsAutoHooking = true
        task.spawn(function()
            local CarryEvent, HookEvent, HookCommit
            pcall(function()
                local carryFolder = ReplicatedStorage:FindFirstChild("Remotes"):FindFirstChild("Carry")
                CarryEvent = carryFolder:FindFirstChild("CarrySurvivorEvent")
                HookEvent  = carryFolder:FindFirstChild("HookEvent")
                HookCommit = carryFolder:FindFirstChild("HookCommit")
            end)
            pcall(function()
                root.CFrame = CFrame.new(targetRoot.Position + Vector3.new(0, 3, 0), targetRoot.Position)
            end)
            task.wait(0.2)
            pcall(function() if CarryEvent then CarryEvent:FireServer(targetChar) end end)
            task.wait(0.5)
            local r2 = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
            if not r2 then IsAutoHooking = false; return end
            pcall(function()
                r2.CFrame = CFrame.new(nearestHook.part.Position + Vector3.new(0, 3, 0))
            end)
            task.wait(0.3)
            pcall(function()
                local hookPoint = nearestHook.model:FindFirstChild("HookPoint")
                    or nearestHook.model:FindFirstChild("HookHitbox")
                    or nearestHook.part
                if HookEvent then HookEvent:FireServer(hookPoint) end
                if HookCommit then HookCommit:FireServer(hookPoint) end
            end)
            task.wait(1)
            IsAutoHooking = false
        end)
    end
    function W.KA_StartAutoHook()
        if W._AutoHookThread then return end
        W._AutoHookThread = task.spawn(function()
            while OW.AutoHook do
                if GetRole() == "Killer" then pcall(DoAutoHook) end
                task.wait(1)
            end
            W._AutoHookThread = nil
        end)
    end
    function W.KA_StopAutoHook()
        if W._AutoHookThread then
            pcall(function() task.cancel(W._AutoHookThread) end)
            W._AutoHookThread = nil
        end
    end
    function W.KA_SetAutoHook(v)
        OW.AutoHook = v and true or false
        if OW.AutoHook then W.KA_StartAutoHook() else W.KA_StopAutoHook() end
    end
end

--====================================================--
-- SILENT FLASK (THE CURE)
--====================================================--
do
    local FlaskState = { Target = nil, PredictedPos = nil, BeamPart = nil, AccentPart = nil, LandingRing = nil }
    local function Flask_GetTarget()
        local myChar = LocalPlayer.Character
        local myRoot = myChar and myChar:FindFirstChild("HumanoidRootPart")
        if not myRoot then return nil end
        local maxR = tonumber(OW.Flask_Range) or 200
        local best, bd = nil, math.huge
        for _, p in ipairs(Players:GetPlayers()) do
            if p ~= LocalPlayer and TeamIs(p, "Survivor") and p.Character then
                local hum = p.Character:FindFirstChildOfClass("Humanoid")
                local root = p.Character:FindFirstChild("HumanoidRootPart")
                if hum and hum.Health > 0 and root then
                    local d = (root.Position - myRoot.Position).Magnitude
                    if d <= maxR and d < bd then
                        bd = d; best = { Player = p, Root = root, Char = p.Character }
                    end
                end
            end
        end
        return best
    end
    local function Flask_GetHandOrigin()
        local c = LocalPlayer.Character
        if not c then return nil end
        return c:FindFirstChild("LeftHand") or c:FindFirstChild("Left Arm")
            or c:FindFirstChild("RightHand") or c:FindFirstChild("Right Arm")
            or c:FindFirstChild("HumanoidRootPart")
    end
    local function Flask_PredictLanding(origin, targetRoot)
        local targetPos = targetRoot.Position
        local speed   = tonumber(OW.Flask_Speed)   or 90
        local gravity = tonumber(OW.Flask_Gravity) or 196
        local lead    = tonumber(OW.Flask_Lead) or 1.0
        if not OW.Flask_Predict then return targetPos end
        local tv = targetRoot.AssemblyLinearVelocity or Vector3.zero
        local horizVel = Vector3.new(tv.X, 0, tv.Z)
        local dist = (targetPos - origin).Magnitude
        local time = dist / speed
        local predicted = targetPos
        for _ = 1, 3 do
            predicted = targetPos + horizVel * time * lead
            local nd = (predicted - origin).Magnitude
            time = nd / speed
        end
        local drop = 0.5 * gravity * (time * time)
        return predicted + Vector3.new(0, drop, 0)
    end
    local function Flask_ClearVisuals()
        if FlaskState.BeamPart then pcall(function() FlaskState.BeamPart:Destroy() end); FlaskState.BeamPart = nil end
        if FlaskState.AccentPart then pcall(function() FlaskState.AccentPart:Destroy() end); FlaskState.AccentPart = nil end
        if FlaskState.LandingRing then pcall(function() FlaskState.LandingRing:Destroy() end); FlaskState.LandingRing = nil end
    end
    local function Flask_HideVisuals()
        if FlaskState.BeamPart then FlaskState.BeamPart.Transparency = 1 end
        if FlaskState.AccentPart then FlaskState.AccentPart.Transparency = 1 end
        if FlaskState.LandingRing then FlaskState.LandingRing.Transparency = 1 end
    end
    local function Flask_EnsureBeamParts()
        if not FlaskState.BeamPart or not FlaskState.BeamPart.Parent then
            local beam = Instance.new("Part")
            beam.Name = "OneWFlaskBeam"
            beam.Anchored = true
            beam.CanCollide = false
            beam.CanTouch = false
            beam.CanQuery = false
            beam.CastShadow = false
            beam.Material = Enum.Material.Neon
            beam.Color = Color3.fromRGB(255, 255, 255)
            beam.Transparency = 0.2
            beam.Parent = Workspace
            FlaskState.BeamPart = beam
        end
        if not FlaskState.AccentPart or not FlaskState.AccentPart.Parent then
            local accent = Instance.new("Part")
            accent.Name = "OneWFlaskBeamAccent"
            accent.Anchored = true
            accent.CanCollide = false
            accent.CanTouch = false
            accent.CanQuery = false
            accent.CastShadow = false
            accent.Material = Enum.Material.SmoothPlastic
            accent.Color = Color3.fromRGB(25, 25, 25)
            accent.Transparency = 0.35
            accent.Parent = Workspace
            FlaskState.AccentPart = accent
        end
    end
    local function Flask_UpdateBeam(origin, landing)
        Flask_EnsureBeamParts()
        local dir = landing - origin
        local dist = dir.Magnitude
        if dist < 0.1 then return end
        local mid = (origin + landing) / 2
        local cf = CFrame.lookAt(mid, landing)
        FlaskState.BeamPart.Size = Vector3.new(0.12, 0.12, dist)
        FlaskState.BeamPart.CFrame = cf
        FlaskState.BeamPart.Transparency = 0.2
        FlaskState.AccentPart.Size = Vector3.new(0.22, 0.22, dist)
        FlaskState.AccentPart.CFrame = cf
        FlaskState.AccentPart.Transparency = 0.35
    end
    local function Flask_UpdateLanding(pos)
        if not OW.Flask_ShowLanding then
            if FlaskState.LandingRing then FlaskState.LandingRing.Transparency = 1 end
            return
        end
        if not FlaskState.LandingRing or not FlaskState.LandingRing.Parent then
            local ring = Instance.new("Part")
            ring.Name = "OneWFlaskLanding"
            ring.Shape = Enum.PartType.Cylinder
            ring.Anchored = true
            ring.CanCollide = false
            ring.CanTouch = false
            ring.CanQuery = false
            ring.CastShadow = false
            ring.Material = Enum.Material.Neon
            ring.Color = Color3.fromRGB(255, 255, 255)
            ring.Size = Vector3.new(0.2, 5, 5)
            ring.Parent = Workspace
            FlaskState.LandingRing = ring
        end
        FlaskState.LandingRing.CFrame = CFrame.new(pos) * CFrame.Angles(0, 0, math.rad(90))
        FlaskState.LandingRing.Transparency = 0.35
    end
    RunService.RenderStepped:Connect(function()
        if not OW.Flask_Enabled then
            Flask_HideVisuals()
            FlaskState.Target = nil
            FlaskState.PredictedPos = nil
            return
        end
        if GetRole() ~= "Killer" then Flask_HideVisuals(); return end
        local target = Flask_GetTarget()
        if not target or not target.Root then
            Flask_HideVisuals(); FlaskState.Target = nil; FlaskState.PredictedPos = nil; return
        end
        local hand = Flask_GetHandOrigin()
        if not hand then return end
        local landing = Flask_PredictLanding(hand.Position, target.Root)
        FlaskState.Target = target
        FlaskState.PredictedPos = landing
        if OW.Flask_ShowBeam then pcall(Flask_UpdateBeam, hand.Position, landing)
        else
            if FlaskState.BeamPart then FlaskState.BeamPart.Transparency = 1 end
            if FlaskState.AccentPart then FlaskState.AccentPart.Transparency = 1 end
        end
        pcall(Flask_UpdateLanding, landing)
    end)
    task.spawn(function()
        pcall(function()
            local oldNC
            oldNC = hookmetamethod(game, "__namecall", function(self, ...)
                if getnamecallmethod() == "FireServer"
                   and self.Name == "ThrowFlask"
                   and OW.Flask_Enabled
                   and GetRole() == "Killer"
                   and FlaskState.PredictedPos then
                    local args = {...}
                    if typeof(args[2]) == "Vector3" then
                        local origin = args[2]
                        local aimDir = (FlaskState.PredictedPos - origin)
                        if aimDir.Magnitude > 0.1 then
                            args[1] = aimDir.Unit
                            return oldNC(self, unpack(args))
                        end
                    elseif typeof(args[1]) == "Vector3" then
                        local hand = Flask_GetHandOrigin()
                        if hand then
                            local aimDir = (FlaskState.PredictedPos - hand.Position)
                            if aimDir.Magnitude > 0.1 then
                                args[1] = aimDir.Unit
                                return oldNC(self, unpack(args))
                            end
                        end
                    end
                end
                return oldNC(self, ...)
            end)
        end)
    end)
    function W.Flask_SetEnabled(v) OW.Flask_Enabled = v and true or false; if not v then Flask_ClearVisuals() end end
    function W.Flask_SetSpeed(v) OW.Flask_Speed = tonumber(v) or 90 end
    function W.Flask_SetGravity(v) OW.Flask_Gravity = tonumber(v) or 196 end
    function W.Flask_SetLead(v) OW.Flask_Lead = tonumber(v) or 1.0 end
    function W.Flask_SetRange(v) OW.Flask_Range = tonumber(v) or 200 end
end

--====================================================--
-- DASH LOCK
--====================================================--
do
    OW.DashLock_Active = false
    OW.DashLock_Target = nil
    OW.DashLock_Connection = nil
    local DashAnimationId = "rbxassetid://98163597193511"
    local function DashLock_Update()
        if not OW.DashLock_Enabled or not OW.DashLock_Active then return end
        local myChar = LocalPlayer.Character
        local myRoot = myChar and myChar:FindFirstChild("HumanoidRootPart")
        if not myRoot then OW.DashLock_Target = nil; return end
        local target, targetDist = nil, math.huge
        for _, player in ipairs(Players:GetPlayers()) do
            if player ~= LocalPlayer and TeamIs(player, "Survivor") then
                local char = player.Character
                if char then
                    local root = char:FindFirstChild("HumanoidRootPart")
                    local hum = char:FindFirstChildOfClass("Humanoid")
                    if root and hum and hum.Health > 0 then
                        local dist = (myRoot.Position - root.Position).Magnitude
                        if dist < targetDist then targetDist = dist; target = root end
                    end
                end
            end
        end
        if not target then OW.DashLock_Target = nil; return end
        OW.DashLock_Target = target
        local cam = Workspace.CurrentCamera
        if cam then
            local smooth = OW.DashLock_Smooth or 0.3
            cam.CFrame = cam.CFrame:Lerp(CFrame.new(cam.CFrame.Position, target.Position), smooth)
        end
        if OW.DashLock_Freeze then
            local hum = myChar:FindFirstChildOfClass("Humanoid")
            if hum and hum.WalkSpeed ~= 0 then hum.WalkSpeed = 0 end
        end
    end
    local function DashLock_SetActive(active)
        active = active and true or false
        if active == OW.DashLock_Active then return end
        OW.DashLock_Active = active
        if active then
            if not OW.DashLock_Connection then
                OW.DashLock_Connection = RunService.RenderStepped:Connect(function() pcall(DashLock_Update) end)
            end
        else
            if OW.DashLock_Connection then
                pcall(function() OW.DashLock_Connection:Disconnect() end)
                OW.DashLock_Connection = nil
            end
            OW.DashLock_Target = nil
            if OW.DashLock_Freeze then
                local char = LocalPlayer.Character
                local hum = char and char:FindFirstChildOfClass("Humanoid")
                if hum and hum.WalkSpeed == 0 then hum.WalkSpeed = 16 end
            end
        end
    end
    local function DashLock_HookCharacter(char)
        if not char then return end
        local hum = char:FindFirstChildOfClass("Humanoid")
        if not hum then return end
        local anim = hum:FindFirstChildOfClass("Animator") or hum:WaitForChild("Animator", 5)
        if not anim then return end
        anim.AnimationPlayed:Connect(function(track)
            if not OW.DashLock_Enabled then return end
            local aid = track.Animation and track.Animation.AnimationId or ""
            if aid == DashAnimationId then
                DashLock_SetActive(true)
                task.delay(OW.DashLock_Duration or 1.5, function() DashLock_SetActive(false) end)
            end
        end)
    end
    if LocalPlayer.Character then DashLock_HookCharacter(LocalPlayer.Character) end
    LocalPlayer.CharacterAdded:Connect(function(c)
        task.wait(0.5); DashLock_HookCharacter(c)
    end)
    function W.DashLock_SetEnabled(v)
        OW.DashLock_Enabled = v and true or false
        if not v then DashLock_SetActive(false) end
    end
end    --====================================================--
    -- STUN INDICATOR
    --====================================================--
    W.StunSounds = W.StunSounds or {
        ["Default"]="18843924331",["Clash Royale"]="114072050006157",["Blash"]="89068385567682",
        ["Coin"]="75510526696824",["Kururin Kuru"]="119896940405402",["Spongebob"]="6835794541",
        ["Fahhhh"]="123562480982353",["Cave"]="3173566193",["Aughhh"]="9095205664",
        ["Samsung"]="6879335951",["iPhone"]="4203251375",["Siren"]="130677853589923",
    }
    W.StunIndicator = W.StunIndicator or {
        Enabled = false, Cache = {}, HeartbeatConn = nil, Range = 500,
        Icon = "rbxassetid://81633822407558",
        SoundEnabled = true, SoundId = "18843924331",
        SoundVolume = 1.5, SoundRange = 500, SelectedSound = "Default",
    }
    local SInd = W.StunIndicator
    SInd.SelectedSound = SInd.SelectedSound or "Default"
    local function SInd_GetActiveSoundId()
        local id = W.StunSounds[SInd.SelectedSound]
        if id then return id end
        return SInd.SoundId
    end
    local function SInd_IsStunned(char)
        if not char then return false end
        if char:GetAttribute("IsStunned") == true then return true end
        if char:GetAttribute("isStunned") == true then return true end
        if char:GetAttribute("Stunned") == true then return true end
        if char:GetAttribute("stunned") == true then return true end
        if char:GetAttribute("IsStun") == true then return true end
        if char:GetAttribute("Stun") == true then return true end
        local ci = char:FindFirstChild("CheckInterractable")
        if ci then
            if ci:GetAttribute("isStunned") == true then return true end
            if ci:GetAttribute("Stunned") == true then return true end
        end
        local hum = char:FindFirstChildOfClass("Humanoid")
        if hum then
            local sv = hum:FindFirstChild("StunValue")
            if sv and sv.Value > 0 then return true end
        end
        return false
    end
    local function SInd_Remove(char)
        local data = SInd.Cache[char]
        if data then
            pcall(function()
                if data.StopAnim then data.StopAnim() end
                if data.Gui then data.Gui:Destroy() end
            end)
            SInd.Cache[char] = nil
        end
    end
    local function SInd_PlaySound(char)
        if not SInd.SoundEnabled then return end
        pcall(function()
            local head = char and char:FindFirstChild("Head")
            local hrp = char and char:FindFirstChild("HumanoidRootPart")
            local attachTo = head or hrp
            if not attachTo then return end
            local snd = Instance.new("Sound")
            snd.Name = "OneWStunSound"
            snd.SoundId = "rbxassetid://" .. tostring(SInd_GetActiveSoundId())
            snd.Volume = SInd.SoundVolume or 1.5
            snd.PlaybackSpeed = 1
            snd.RollOffMaxDistance = SInd.SoundRange or 500
            snd.RollOffMinDistance = 10
            snd.RollOffMode = Enum.RollOffMode.InverseTapered
            snd.Parent = attachTo
            snd:Play()
            snd.Ended:Connect(function() pcall(function() snd:Destroy() end) end)
            task.delay(5, function() pcall(function() if snd and snd.Parent then snd:Destroy() end end) end)
        end)
    end
    local function SInd_Create(char)
        if SInd.Cache[char] then return SInd.Cache[char] end
        local head = char:FindFirstChild("Head")
        if not head then return nil end
        local bbg = Instance.new("BillboardGui")
        bbg.Name = "OneWStunIndicator"
        bbg.Size = UDim2.fromOffset(140, 42)
        bbg.StudsOffset = Vector3.new(0, 3.0, 0)
        bbg.AlwaysOnTop = true
        bbg.LightInfluence = 0
        bbg.MaxDistance = 500
        bbg.Adornee = head
        bbg.Parent = char

        local main = Instance.new("Frame")
        main.Name = "Main"
        main.Size = UDim2.new(0, 140, 0, 34)
        main.Position = UDim2.new(0, 0, 0, 4)
        main.BackgroundColor3 = Color3.fromRGB(12, 12, 15)
        main.BackgroundTransparency = 0.05
        main.BorderSizePixel = 0
        main.ZIndex = 1
        main.Parent = bbg
        Instance.new("UICorner", main).CornerRadius = UDim.new(0, 9)
        local bodyGrad = Instance.new("UIGradient")
        bodyGrad.Rotation = 135
        bodyGrad.Color = ColorSequence.new({
            ColorSequenceKeypoint.new(0, Color3.fromRGB(24, 24, 28)),
            ColorSequenceKeypoint.new(1, Color3.fromRGB(8, 8, 10)),
        })
        bodyGrad.Parent = main
        local mainStroke = Instance.new("UIStroke", main)
        mainStroke.Name = "MainStroke"
        mainStroke.Color = Color3.fromRGB(255, 255, 255)
        mainStroke.Thickness = 1.3
        mainStroke.Transparency = 0.15
        mainStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

        local title = Instance.new("TextLabel")
        title.Name = "Title"
        title.Size = UDim2.new(1, -42, 0, 12)
        title.Position = UDim2.new(0, 34, 0, 4)
        title.BackgroundTransparency = 1
        title.Font = Enum.Font.GothamBlack
        title.Text = "STUNNED"
        title.TextColor3 = Color3.fromRGB(255, 255, 255)
        title.TextSize = 11
        title.TextXAlignment = Enum.TextXAlignment.Left
        title.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
        title.TextStrokeTransparency = 0.5
        title.ZIndex = 3
        title.Parent = main

        local sub = Instance.new("TextLabel")
        sub.Name = "Sub"
        sub.Size = UDim2.new(1, -42, 0, 8)
        sub.Position = UDim2.new(0, 34, 0, 18)
        sub.BackgroundTransparency = 1
        sub.Font = Enum.Font.GothamBold
        sub.Text = "SILENT"
        sub.TextColor3 = Color3.fromRGB(170, 170, 180)
        sub.TextSize = 7
        sub.TextXAlignment = Enum.TextXAlignment.Left
        sub.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
        sub.TextStrokeTransparency = 0.6
        sub.ZIndex = 3
        sub.Parent = main

        SInd.Cache[char] = { Gui = bbg, Main = main }
        return SInd.Cache[char]
    end
    function W.SInd_SetEnabled(v)
        SInd.Enabled = v and true or false
        OW.Stun_Enabled = SInd.Enabled
        if SInd.Enabled then
            if SInd.HeartbeatConn then return end
            SInd.HeartbeatConn = RunService.Heartbeat:Connect(function()
                if not SInd.Enabled then return end
                local myRoot = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                if not myRoot then return end
                for _, p in ipairs(Players:GetPlayers()) do
                    if p ~= LocalPlayer and TeamIs(p, "Killer") and p.Character then
                        local char = p.Character
                        local hrp = char:FindFirstChild("HumanoidRootPart")
                        if hrp then
                            local dist = (hrp.Position - myRoot.Position).Magnitude
                            local stunned = SInd_IsStunned(char)
                            local data = SInd.Cache[char]
                            local wasStunned = data ~= nil
                            if stunned and dist <= SInd.Range then
                                if not wasStunned then SInd_PlaySound(char); SInd_Create(char) end
                            else
                                if wasStunned then SInd_Remove(char) end
                            end
                        end
                    end
                end
            end)
        else
            if SInd.HeartbeatConn then SInd.HeartbeatConn:Disconnect(); SInd.HeartbeatConn = nil end
            for _, data in pairs(SInd.Cache) do
                pcall(function()
                    if data.Gui then data.Gui:Destroy() end
                end)
            end
            SInd.Cache = {}
        end
    end

    --====================================================--
    -- INVISIBILITY (MengHub API)
    --====================================================--
    do
        local MV = getgenv().OneWInvis
        if not MV then
            MV = {
                Enabled = false, Loading = false, Ready = false, API = nil,
                _lastToggle = 0, _retries = 0, _retryMax = 3,
                _retryDelay = 2, _queueState = nil,
            }
            getgenv().OneWInvis = MV
        end
        local INVIS_URL = "https://leekguy.vercel.app/roblox/menghub/crack_obf_invisible_93978595733734.lua"
        local function Invis_ValidateAPI(api)
            if type(api) ~= "table" then return false end
            if type(api.enable) ~= "function" then return false end
            if type(api.disable) ~= "function" then return false end
            return true
        end
        local function Invis_Cleanup()
            pcall(function()
                local chair = Workspace:FindFirstChild("invischair")
                if chair then chair:Destroy() end
                local char = LocalPlayer.Character
                if char then
                    for _, part in ipairs(char:GetDescendants()) do
                        if part:IsA("BasePart") or part:IsA("Decal") then
                            if part.Name ~= "Hurtbox"
                               and part.Name ~= "HumanoidRootPart"
                               and part.Name ~= "HRP_Clone" then
                                part.Transparency = 0
                                if part:IsA("BasePart") then
                                    part.LocalTransparencyModifier = 0
                                end
                            end
                        end
                    end
                end
            end)
        end
        local function Invis_RefreshButton()
            if getgenv().OW_InvisBtn_UpdateVisual then
                pcall(getgenv().OW_InvisBtn_UpdateVisual)
            end
        end
        local function Invis_LoadAPI()
            if _G.MengHub and _G.MengHub.Invisible and Invis_ValidateAPI(_G.MengHub.Invisible) then
                MV.API = _G.MengHub.Invisible
                MV.Ready = true
                return true
            end
            MV.Loading = true; MV.Ready = false
            for attempt = 1, MV._retryMax do
                MV._retries = attempt
                local ok, err = pcall(function()
                    loadstring(game:HttpGet(INVIS_URL))()
                end)
                task.wait(0.5)
                if ok and _G.MengHub and _G.MengHub.Invisible and Invis_ValidateAPI(_G.MengHub.Invisible) then
                    MV.API = _G.MengHub.Invisible
                    MV.Ready = true; MV.Loading = false
                    Invis_RefreshButton()
                    if MV._queueState ~= nil then
                        local queued = MV._queueState
                        MV._queueState = nil
                        task.defer(function() W.Invisible_SetState(queued, false) end)
                    end
                    return true
                else
                    warn(("[OneWInvis] Attempt %d gagal: %s"):format(attempt, tostring(err)))
                    if attempt < MV._retryMax then task.wait(MV._retryDelay) end
                end
            end
            MV.Loading = false; MV.Ready = false
            Invis_RefreshButton()
            return false
        end
        task.spawn(function() Invis_LoadAPI() end)
        function W.Invisible_SetState(state, fromButton)
            state = state and true or false
            local now = tick()
            if now - MV._lastToggle < 0.25 then return end
            if not MV.API then
                if MV.Loading then
                    OW_Notify("Invisible", "Loading API...", 2)
                    MV._queueState = state
                else
                    OW_Notify("Invisible", "API gagal, retry...", 2)
                    MV._queueState = state
                    task.spawn(function()
                        if Invis_LoadAPI() then
                            local q = MV._queueState
                            MV._queueState = nil
                            if q ~= nil then
                                task.defer(function() W.Invisible_SetState(q, fromButton) end)
                            end
                        end
                    end)
                end
                return
            end
            if MV.Enabled == state then
                if not state then Invis_Cleanup() end
                Invis_RefreshButton()
                return
            end
            MV._lastToggle = now
            MV.Enabled = state
            OW.Invis_Enabled = state
            if state then
                local ok, err = pcall(function() MV.API.enable() end)
                if not ok then
                    MV.Enabled = false
                    OW.Invis_Enabled = false
                    Invis_Cleanup()
                end
            else
                pcall(function() MV.API.disable() end)
                Invis_Cleanup()
            end
            Invis_RefreshButton()
        end
        UserInputService.InputBegan:Connect(function(input, gp)
            if gp then return end
            if input.UserInputType ~= Enum.UserInputType.Keyboard then return end
            local hkName = OW.Invis_Hotkey or "G"
            local hk = Enum.KeyCode[hkName]
            if hk and input.KeyCode == hk then
                W.Invisible_SetState(not MV.Enabled, false)
            end
        end)
        LocalPlayer.CharacterAdded:Connect(function()
            task.wait(1.2)
            if MV.Enabled and MV.API then
                pcall(function() MV.API.enable() end)
                Invis_RefreshButton()
            end
        end)
        W.Invisible_IsOn = function() return MV.Enabled end
    end

    --====================================================--
    -- CAMERA DBD
    --====================================================--
    do
        local CameraBindName = "OneW_CameraDBD_Smooth"
        local PreviousPosition = nil
        local PreviousRotation = nil
        local OriginalPOV      = 70
        pcall(function() RunService:UnbindFromRenderStep(CameraBindName) end)
        RunService:BindToRenderStep(
            CameraBindName,
            Enum.RenderPriority.Camera.Value + 1,
            function(DeltaTime)
                local Camera = Workspace.CurrentCamera
                if not Camera then return end
                if Camera.CameraType ~= Enum.CameraType.Custom
                   and Camera.CameraType ~= Enum.CameraType.Follow then
                    PreviousPosition = nil; PreviousRotation = nil; return
                end
                if OW.CamDBD_Smooth then
                    local CurrentCFrame   = Camera.CFrame
                    local CurrentPosition = CurrentCFrame.Position
                    local CurrentRotation = CurrentCFrame.Rotation
                    if not PreviousPosition or not PreviousRotation then
                        PreviousPosition = CurrentPosition
                        PreviousRotation = CurrentRotation
                    else
                        local smoothSpeed = tonumber(OW.CamDBD_SmoothSpeed) or 4
                        local posAlpha = 1 - math.exp(-smoothSpeed * DeltaTime)
                        PreviousPosition = PreviousPosition:Lerp(CurrentPosition, posAlpha)
                        local rotAlpha = 1 - math.exp(-(smoothSpeed * 1.90) * DeltaTime)
                        PreviousRotation = PreviousRotation:Lerp(CurrentRotation, rotAlpha)
                        Camera.CFrame = CFrame.new(PreviousPosition) * PreviousRotation
                    end
                else
                    PreviousPosition = nil; PreviousRotation = nil
                end
                if OW.CamDBD_POVLock then
                    local povSpeed = tonumber(OW.CamDBD_POVSmooth) or 9
                    local alpha = 1 - math.exp(-povSpeed * DeltaTime)
                    local target = tonumber(OW.CamDBD_POVValue) or 85
                    Camera.FieldOfView = Camera.FieldOfView + (target - Camera.FieldOfView) * alpha
                end
            end
        )
        LocalPlayer.CharacterAdded:Connect(function()
            task.wait(0.5); PreviousPosition = nil; PreviousRotation = nil
        end)
    end

    --====================================================--
    -- PLAYER UTILITY
    --====================================================--
    do
        local PU = { _Connections = {}, _FPS = { frames = 0, last = tick(), value = 0, ping = 0 },
            _origIcons = {}, _pingGui = nil, _shiftLockWasActive = false, _origCanCollide = {} }
        W.PU = PU
        table.insert(PU._Connections, RunService.Heartbeat:Connect(function()
            if not OW.PU_SpeedEnabled then return end
            local char = LocalPlayer.Character
            local hum = char and char:FindFirstChildOfClass("Humanoid")
            if hum and hum.WalkSpeed ~= OW.PU_SpeedValue then hum.WalkSpeed = OW.PU_SpeedValue end
        end))
        table.insert(PU._Connections, RunService.RenderStepped:Connect(function()
            local char = LocalPlayer.Character
            if not char then return end
            local hum  = char:FindFirstChildOfClass("Humanoid")
            local root = char:FindFirstChild("HumanoidRootPart")
            local cam  = workspace.CurrentCamera
            if not (hum and root and cam) then return end
            if OW.PU_ShiftLock then
                hum.AutoRotate = false
                PU._shiftLockWasActive = true
                local look = cam.CFrame.LookVector
                local flat = Vector3.new(look.X, 0, look.Z)
                if flat.Magnitude > 0.001 then root.CFrame = CFrame.new(root.Position, root.Position + flat.Unit) end
            elseif PU._shiftLockWasActive then
                hum.AutoRotate = true
                PU._shiftLockWasActive = false
            end
        end))
        table.insert(PU._Connections, RunService.RenderStepped:Connect(function()
            if not OW.PU_UnlimitedZoom then return end
            if LocalPlayer.CameraMaxZoomDistance ~= math.huge then LocalPlayer.CameraMaxZoomDistance = math.huge end
            if LocalPlayer.CameraMinZoomDistance ~= 0 then LocalPlayer.CameraMinZoomDistance = 0 end
        end))
        table.insert(PU._Connections, RunService.Stepped:Connect(function()
            if not OW.PU_Noclip then return end
            local char = LocalPlayer.Character
            if not char then return end
            for _, d in ipairs(char:GetDescendants()) do
                if d:IsA("BasePart") then
                    if PU._origCanCollide[d] == nil then PU._origCanCollide[d] = d.CanCollide end
                    d.CanCollide = false
                end
            end
        end))
        LocalPlayer.CharacterRemoving:Connect(function(char)
            if char == LocalPlayer.Character then PU._origCanCollide = {} end
        end)
    end

    --====================================================--
    -- SPEED BOOST
    --====================================================--
    do
        local SpeedBoostConnection = nil
        local function ShouldDisableSpeedBoost()
            local char = LocalPlayer.Character
            if not char then return true end
            local hum = char:FindFirstChildOfClass("Humanoid")
            if hum then
                if hum.Health <= 0 or hum.Health < 2
                    or char:GetAttribute("Downed") == true
                    or char:GetAttribute("IsDown") == true
                    or char:GetAttribute("Knocked") == true then
                    return true
                end
            end
            return false
        end
        function W.SpeedBoost_SetEnabled(v)
            OW.SpeedBoost_Enabled = v and true or false
            if SpeedBoostConnection then SpeedBoostConnection:Disconnect(); SpeedBoostConnection = nil end
            if not OW.SpeedBoost_Enabled then
                local char = LocalPlayer.Character
                local hum = char and char:FindFirstChildOfClass("Humanoid")
                if hum then pcall(function() hum.WalkSpeed = 16 end) end
                return
            end
            SpeedBoostConnection = RunService.Heartbeat:Connect(function()
                if not OW.SpeedBoost_Enabled then return end
                if ShouldDisableSpeedBoost() then return end
                local char = LocalPlayer.Character
                local hum = char and char:FindFirstChildOfClass("Humanoid")
                if hum and hum.WalkSpeed ~= OW.SpeedBoost_Value then
                    pcall(function() hum.WalkSpeed = OW.SpeedBoost_Value end)
                end
            end)
        end
        LocalPlayer.CharacterAdded:Connect(function()
            task.wait(0.8)
            if OW.SpeedBoost_Enabled then W.SpeedBoost_SetEnabled(true) end
        end)
    end

    --====================================================--
    -- EMOTE SYSTEM
    --====================================================--
    W.EmoteSystem = W.EmoteSystem or {
        Enabled = false, CurrentTrack = nil, CurrentSound = nil,
        SelectedEmote = "Friday Night",
        Options = {
            "Friday Night", "WarCry", "24 Hour Cinderella", "Applause",
            "Arm Swing", "Backflip", "California Girls", "Christmas Spirit",
            "Floating Rest", "Ghoul", "Griddy", "Kyoufuu", "OnePlays", "Vulnerable",
        },
        Data = {
            ["Friday Night"]        = { Anim = "rbxassetid://83229063951016",  Sound = "rbxassetid://85355610204255" },
            ["WarCry"]              = { Anim = "rbxassetid://82600868380136",  Sound = "rbxassetid://120101930689931" },
            ["24 Hour Cinderella"]  = { Anim = "rbxassetid://137195203725366", Sound = "rbxassetid://121099446613414" },
            ["Applause"]            = { Anim = "rbxassetid://96328361165090",  Sound = "rbxassetid://115490787020749" },
            ["Arm Swing"]           = { Anim = "rbxassetid://80552139463944",  Sound = "rbxassetid://74216458932348" },
            ["Backflip"]            = { Anim = "rbxassetid://74705617908505",  Sound = nil },
            ["California Girls"]    = { Anim = "rbxassetid://123552803041504", Sound = "rbxassetid://87899327891544" },
            ["Christmas Spirit"]    = { Anim = "rbxassetid://137859761110514", Sound = nil },
            ["Floating Rest"]       = { Anim = "rbxassetid://114593021219597", Sound = nil },
            ["Ghoul"]               = { Anim = "rbxassetid://130415594909401", Sound = "rbxassetid://123004139176580" },
            ["Griddy"]              = { Anim = "rbxassetid://75586690784894",  Sound = nil },
            ["Kyoufuu"]             = { Anim = "rbxassetid://137322894494527", Sound = "rbxassetid://129064643026442" },
            ["OnePlays"]            = { Anim = "rbxassetid://140625405103474", Sound = "rbxassetid://94749073728335" },
            ["Vulnerable"]          = { Anim = "rbxassetid://121773684313913", Sound = "rbxassetid://135265751184744" },
        },
    }
    local ES = W.EmoteSystem
    function W.EmoteSystem_Stop()
        if ES.CurrentTrack then pcall(function() ES.CurrentTrack:Stop() end); ES.CurrentTrack = nil end
        if ES.CurrentSound then pcall(function() ES.CurrentSound:Destroy() end); ES.CurrentSound = nil end
    end
    function W.EmoteSystem_Play()
        W.EmoteSystem_Stop()
        local char = LocalPlayer.Character
        if not char then return end
        local hum = char:FindFirstChildOfClass("Humanoid")
        local hrp = char:FindFirstChild("HumanoidRootPart")
        if not hum or not hrp then return end
        local data = ES.Data[ES.SelectedEmote]
        if not data then return end
        if data.Anim then
            local anim = Instance.new("Animation")
            anim.AnimationId = data.Anim
            local track = hum:LoadAnimation(anim)
            track.Looped = true
            track.Priority = Enum.AnimationPriority.Action
            track:Play()
            ES.CurrentTrack = track
        end
        if data.Sound then
            local snd = Instance.new("Sound")
            snd.SoundId = data.Sound
            snd.Looped = true
            snd.Volume = 2
            snd.Parent = hrp
            snd:Play()
            ES.CurrentSound = snd
        end
    end
    function W.EmoteSystem_SetEnabled(v)
        ES.Enabled = v and true or false
        OW.Emote_Enabled = ES.Enabled
        if ES.Enabled then W.EmoteSystem_Play() else W.EmoteSystem_Stop() end
    end
    function W.EmoteSystem_SelectEmote(name)
        if ES.Data[name] then
            ES.SelectedEmote = name
            OW.Emote_Selected = name
            if ES.Enabled then W.EmoteSystem_Play() end
        end
    end
    LocalPlayer.CharacterRemoving:Connect(function() W.EmoteSystem_Stop() end)
    LocalPlayer.CharacterAdded:Connect(function()
        task.wait(0.5)
        if ES.Enabled then W.EmoteSystem_Play() end
    end)

    --====================================================--
    -- FAKE AVATAR
    --====================================================--
    do
        local SelectedFakeAva = OW.FakeAvatar_ID or 0
        local function LoadAppearanceIntoChar(appearance, character, head)
            local items = appearance:GetChildren()
            local function applyMesh(obj)
                if obj:IsA("CharacterMesh") or obj:IsA("BodyColors") or obj:IsA("Shirt") or obj:IsA("Pants") then
                    local existing = character:FindFirstChild(obj.Name)
                    if existing and existing.ClassName == obj.ClassName then existing:Destroy() end
                    obj:Clone().Parent = character
                end
            end
            for _, item in pairs(items) do
                if item:IsA("Folder") or item:IsA("Model") then
                    for _, subItem in pairs(item:GetChildren()) do applyMesh(subItem) end
                else applyMesh(item) end
            end
            for _, item in pairs(items) do
                if item:IsA("SpecialMesh") and head then
                    local targetMesh = head:FindFirstChildOfClass("SpecialMesh") or Instance.new("SpecialMesh", head)
                    targetMesh.MeshType = Enum.MeshType.FileMesh
                    targetMesh.MeshId = item.MeshId
                    targetMesh.TextureId = item.TextureId
                elseif item:IsA("Decal") and item.Name == "face" and head then
                    if head:FindFirstChild("face") then head.face:Destroy() end
                    item:Clone().Parent = head
                end
            end
            for _, item in pairs(items) do
                if item:IsA("Accessory") then
                    local clone = item:Clone()
                    local handle = clone:FindFirstChild("Handle")
                    if handle then
                        local att = handle:FindFirstChildOfClass("Attachment")
                        if att then
                            local targetAtt = character:FindFirstChild(att.Name, true)
                            if targetAtt then
                                local weld = Instance.new("Weld")
                                weld.Part0 = handle; weld.Part1 = targetAtt.Parent
                                weld.C0 = att.CFrame; weld.C1 = targetAtt.CFrame
                                weld.Parent = handle
                            end
                        end
                        handle.CanCollide = false; handle.Massless = true; clone.Parent = character
                    end
                end
            end
        end
        local function ApplyFakeAvatar()
            local character = LocalPlayer.Character
            if not character or not SelectedFakeAva or SelectedFakeAva == 0 then return end
            local humanoid = character:FindFirstChildOfClass("Humanoid")
            if not humanoid then return end
            task.spawn(function()
                local success, appearance = pcall(function()
                    return game:GetService("Players"):GetCharacterAppearanceAsync(SelectedFakeAva)
                end)
                if not success or not appearance then return end
                for _, obj in pairs(character:GetChildren()) do
                    if obj:IsA("Accessory") or obj:IsA("Shirt") or obj:IsA("Pants")
                    or obj:IsA("BodyColors") or obj:IsA("CharacterMesh") or obj:IsA("ShirtGraphic") then
                        obj:Destroy()
                    end
                end
                local head = character:FindFirstChild("Head")
                if head then
                    for _, hObj in pairs(head:GetChildren()) do
                        if hObj:IsA("SpecialMesh") or hObj:IsA("Decal") then hObj:Destroy() end
                    end
                    local m = Instance.new("SpecialMesh", head)
                    m.MeshType = Enum.MeshType.Head; m.Scale = Vector3.new(1, 1, 1)
                end
                local scaleDefaults = { BodyDepthScale = 1, BodyHeightScale = 1, BodyWidthScale = 1, HeadScale = 1, BodyTypeScale = 0, BodyProportionScale = 0 }
                for scaleName, val in pairs(scaleDefaults) do
                    local s = humanoid:FindFirstChild(scaleName); if s then s.Value = val end
                end
                task.wait(0.1)
                LoadAppearanceIntoChar(appearance, character, head)
                pcall(function()
                    local info = game:GetService("Players"):GetCharacterAppearanceInfoAsync(SelectedFakeAva)
                    if head and info.assets then
                        for _, asset in pairs(info.assets) do
                            if asset.assetType.name == "Face" then
                                if head:FindFirstChild("face") then head.face:Destroy() end
                                local f = Instance.new("Decal", head)
                                f.Name = "face"; f.Texture = "rbxassetid://" .. asset.id
                                break
                            end
                        end
                    end
                end)
            end)
        end
        function W.FakeAvatar_SetEnabled(state)
            OW.FakeAvatar_Enabled = state
            if state then ApplyFakeAvatar() end
        end
        function W.FakeAvatar_SetId(userId)
            SelectedFakeAva = userId
            OW.FakeAvatar_ID = userId
            if OW.FakeAvatar_Enabled then ApplyFakeAvatar() end
        end
        function W.FakeAvatar_ApplyFromUsername(username)
            if not username or username == "" then return false end
            username = username:gsub("^@", "")
            local ok, userId = pcall(function() return game:GetService("Players"):GetUserIdFromNameAsync(username) end)
            if ok and userId then
                W.FakeAvatar_SetId(userId)
                return true
            end
            return false
        end
        LocalPlayer.CharacterAdded:Connect(function()
            if OW.FakeAvatar_Enabled then task.wait(1); ApplyFakeAvatar() end
        end)
    end

    --====================================================--
    -- FAKE KORLESS
    --====================================================--
    do
        local KorlessMorph = { Enabled = false, Connection = nil }
        local function ApplyKorless()
            local plr = LocalPlayer
            local function Morph()
                repeat task.wait() until plr.Character
                    and plr.Character:FindFirstChild("HumanoidRootPart")
                    and plr.Character:FindFirstChild("Right Leg")
                task.wait(0.1)
                local char = plr.Character
                pcall(function()
                    char.Head.Transparency = 1
                    local face = char.Head:FindFirstChild("face")
                    if face then face:Destroy() end
                    char["Right Leg"].Transparency = 1
                    local old = char:FindFirstChild("KorlessHead")
                    if old then old:Destroy() end
                    local mesh = Instance.new("MeshPart")
                    mesh.Name = "KorlessHead"
                    mesh.Size = Vector3.new(1.5, 1.5, 1.5)
                    mesh.CanCollide = false
                    mesh.MeshId = "rbxassetid://902942096"
                    mesh.TextureID = "rbxassetid://902843398"
                    mesh.CFrame = char["Right Leg"].CFrame * CFrame.new(0, 0.5, 0)
                    mesh.Parent = char
                    local weld = Instance.new("WeldConstraint")
                    weld.Part0 = char["Right Leg"]
                    weld.Part1 = mesh
                    weld.Parent = mesh
                end)
            end
            Morph()
            if KorlessMorph.Connection then KorlessMorph.Connection:Disconnect() end
            KorlessMorph.Connection = plr.CharacterAdded:Connect(function()
                task.wait(1)
                Morph()
            end)
        end
        local function RemoveKorless()
            local char = LocalPlayer.Character
            if char then
                local mesh = char:FindFirstChild("KorlessHead")
                if mesh then mesh:Destroy() end
                if char:FindFirstChild("Head") then char.Head.Transparency = 0 end
                if char:FindFirstChild("Right Leg") then char["Right Leg"].Transparency = 0 end
            end
            if KorlessMorph.Connection then
                KorlessMorph.Connection:Disconnect()
                KorlessMorph.Connection = nil
            end
        end
        function W.Korless_SetEnabled(v)
            OW.Korless_Enabled = v and true or false
            if OW.Korless_Enabled then ApplyKorless() else RemoveKorless() end
        end
    end

    --====================================================--
    -- HEADER TITLE
    --====================================================--
    do
        local HeaderState = { Billboard = nil, TextLabel = nil, ShineLabel = nil, ShineGradient = nil, SizeConnection = nil }
        local BASE_WIDTH = isMobile and 90 or 140
        local BASE_HEIGHT = isMobile and 20 or 32
        local BASE_DISTANCE = 12
        local MIN_SCALE = 0.6
        local MAX_SCALE = isMobile and 1.1 or 1.4
        local function Header_Create()
            if HeaderState.Billboard then HeaderState.Billboard:Destroy() end
            local character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
            if not character:FindFirstChild("Head") then return end
            local billboard = Instance.new("BillboardGui")
            billboard.Name = "OneWHeaderBillboard"
            billboard.Adornee = character.Head
            billboard.Size = UDim2.new(0, BASE_WIDTH, 0, BASE_HEIGHT)
            billboard.StudsOffset = Vector3.new(0, 1.5, 0)
            billboard.AlwaysOnTop = true; billboard.LightInfluence = 0
            billboard.Parent = character
            HeaderState.Billboard = billboard
            local textLabel = Instance.new("TextLabel")
            textLabel.Name = "BaseText"; textLabel.Size = UDim2.new(1, 0, 1, 0)
            textLabel.BackgroundTransparency = 1; textLabel.TextScaled = true
            textLabel.Font = Enum.Font.GothamBold; textLabel.TextStrokeTransparency = 0.5
            textLabel.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
            textLabel.TextColor3 = OW.Header_Color
            textLabel.Text = OW.Header_Text; textLabel.ZIndex = 1; textLabel.Parent = billboard
            HeaderState.TextLabel = textLabel
            local shineLabel = Instance.new("TextLabel")
            shineLabel.Name = "ShineText"; shineLabel.Size = UDim2.new(1, 0, 1, 0)
            shineLabel.BackgroundTransparency = 1; shineLabel.TextScaled = true
            shineLabel.Font = Enum.Font.GothamBold; shineLabel.TextStrokeTransparency = 1
            shineLabel.Text = OW.Header_Text; shineLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
            shineLabel.ZIndex = 2; shineLabel.Parent = billboard
            HeaderState.ShineLabel = shineLabel
            local shineGradient = Instance.new("UIGradient")
            shineGradient.Name = "ShineGradient"; shineGradient.Rotation = 20
            shineGradient.Transparency = NumberSequence.new({
                NumberSequenceKeypoint.new(0.00, 1), NumberSequenceKeypoint.new(0.30, 1),
                NumberSequenceKeypoint.new(0.42, 0), NumberSequenceKeypoint.new(0.58, 0),
                NumberSequenceKeypoint.new(0.70, 1), NumberSequenceKeypoint.new(1.00, 1),
            })
            shineGradient.Offset = Vector2.new(-1, 0); shineGradient.Parent = shineLabel
            HeaderState.ShineGradient = shineGradient
            if HeaderState.SizeConnection then HeaderState.SizeConnection:Disconnect() end
            HeaderState.SizeConnection = RunService.RenderStepped:Connect(function()
                if not billboard or not billboard.Parent then HeaderState.SizeConnection:Disconnect(); return end
                local head = character:FindFirstChild("Head"); if not head then return end
                local dist = (Workspace.CurrentCamera.CFrame.Position - head.Position).Magnitude
                local scaleFactor = math.clamp(BASE_DISTANCE / dist, MIN_SCALE, MAX_SCALE)
                billboard.Size = UDim2.new(0, BASE_WIDTH * scaleFactor, 0, BASE_HEIGHT * scaleFactor)
            end)
            task.spawn(function()
                while shineLabel and shineLabel.Parent and shineGradient and shineGradient.Parent do
                    shineGradient.Offset = Vector2.new(-1, 0)
                    local tween = TweenService:Create(shineGradient, TweenInfo.new(4, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), { Offset = Vector2.new(1, 0) })
                    tween:Play(); tween.Completed:Wait(); task.wait(2)
                end
            end)
        end
        local function Header_UpdateText(text)
            OW.Header_Text = text or "One W v2"
            if HeaderState.TextLabel then HeaderState.TextLabel.Text = OW.Header_Text end
            if HeaderState.ShineLabel then HeaderState.ShineLabel.Text = OW.Header_Text end
        end
        local function Header_Toggle(enabled)
            if enabled then Header_Create()
            else
                if HeaderState.SizeConnection then HeaderState.SizeConnection:Disconnect(); HeaderState.SizeConnection = nil end
                if HeaderState.Billboard then HeaderState.Billboard:Destroy() end
                HeaderState.Billboard = nil; HeaderState.TextLabel = nil
                HeaderState.ShineLabel = nil; HeaderState.ShineGradient = nil
            end
        end
        function W.Header_SetEnabled(v) OW.Header_Enabled = v; Header_Toggle(v) end
        function W.Header_SetText(text) Header_UpdateText(text) end
        function W.Header_SetColor(c)
            OW.Header_Color = c
            if HeaderState.TextLabel then HeaderState.TextLabel.TextColor3 = c end
        end
        LocalPlayer.CharacterAdded:Connect(function()
            task.wait(1)
            if OW.Header_Enabled then Header_Toggle(true) end
        end)
    end

    --====================================================--
    -- INSTANT ESCAPE
    --====================================================--
    W.Escape = W.Escape or { Enabled = false, FinishLineName = "fininshline", TeleportCount = 0 }
    local Esc = W.Escape
    function W.Escape_Teleport()
        local root = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
        if not root then ForceNotify("Escape", "Character not found", 2); return false end
        local found = nil
        for _, obj in ipairs(Workspace:GetDescendants()) do
            if string.lower(obj.Name) == string.lower(Esc.FinishLineName) and obj:IsA("BasePart") then
                found = obj; break
            end
        end
        if not found then ForceNotify("Escape", "Finish line not found", 2); return false end
        pcall(function() root.CFrame = found.CFrame + Vector3.new(0, 5, 0) end)
        Esc.TeleportCount = Esc.TeleportCount + 1
        OW_Notify("Instant Escape", "Teleported! (#" .. Esc.TeleportCount .. ")", 2)
        return true
    end

    --====================================================--
    -- FLOATING BUTTON SYSTEM
    --====================================================--
    local function CreateFloatingButton(cfg)
        local state = cfg.state
        state.Connections = state.Connections or {}
        local function ClearConns()
            for _, c in ipairs(state.Connections) do pcall(function() c:Disconnect() end) end
            state.Connections = {}
        end
        local function DestroyBtn()
            ClearConns()
            if state.Gui then pcall(function() state.Gui:Destroy() end); state.Gui = nil end
        end
        local function UpdateVisual()
            if not state.Gui then return end
            local main = state.Gui:FindFirstChild("MainBtn", true)
            if not main then return end
            local isOn = cfg.isOn()
            local sp = main:FindFirstChild("StatusPill")
            local st = sp and sp:FindFirstChild("StatusText")
            local sd = sp and sp:FindFirstChild("StatusDot")
            local str = main:FindFirstChild("MainStroke")
            local ic = main:FindFirstChild("IconCircle")
            local idot = ic and ic:FindFirstChild("IconDot")
            if isOn then
                TweenService:Create(main, TweenInfo.new(0.25), { BackgroundColor3 = Color3.fromRGB(0, 0, 0) }):Play()
                if ic then TweenService:Create(ic, TweenInfo.new(0.25), { BackgroundColor3 = _G.OW_ACCENT, BackgroundTransparency = 0.15 }):Play() end
                if idot then TweenService:Create(idot, TweenInfo.new(0.25), { BackgroundColor3 = Color3.fromRGB(0, 0, 0) }):Play() end
                if sp then TweenService:Create(sp, TweenInfo.new(0.25), { BackgroundColor3 = Color3.fromRGB(0, 0, 0) }):Play() end
                if st then st.Text = "ON"; TweenService:Create(st, TweenInfo.new(0.25), { TextColor3 = _G.OW_ACCENT }):Play() end
                if sd then TweenService:Create(sd, TweenInfo.new(0.25), { BackgroundColor3 = _G.OW_ACCENT }):Play() end
                if str then TweenService:Create(str, TweenInfo.new(0.25), { Color = Color3.fromRGB(255, 255, 255) }):Play() end
            else
                TweenService:Create(main, TweenInfo.new(0.25), { BackgroundColor3 = _G.OW_BG_OFF }):Play()
                if ic then TweenService:Create(ic, TweenInfo.new(0.25), { BackgroundColor3 = _G.OW_NEUTRAL, BackgroundTransparency = 0.4 }):Play() end
                if idot then TweenService:Create(idot, TweenInfo.new(0.25), { BackgroundColor3 = _G.OW_BG_OFF }):Play() end
                if sp then TweenService:Create(sp, TweenInfo.new(0.25), { BackgroundColor3 = Color3.fromRGB(0, 0, 0) }):Play() end
                if st then st.Text = "OFF"; TweenService:Create(st, TweenInfo.new(0.25), { TextColor3 = Color3.fromRGB(120, 120, 120) }):Play() end
                if sd then TweenService:Create(sd, TweenInfo.new(0.25), { BackgroundColor3 = _G.OW_NEUTRAL }):Play() end
                if str then TweenService:Create(str, TweenInfo.new(0.25), { Color = _G.OW_STROKE_OFF }):Play() end
            end
        end
        local function ToggleBtn()
            local s = not cfg.isOn()
            cfg.onToggle(s)
            UpdateVisual()
        end
        local function CreateBtn()
            DestroyBtn()
            local parent = LocalPlayer:FindFirstChild("PlayerGui")
            if gethui then local ok2, hui = pcall(gethui); if ok2 and hui then parent = hui end end
            if not parent then return end
            local gui = Instance.new("ScreenGui")
            gui.Name = "OneW" .. cfg.id .. "Btn"; gui.ResetOnSpawn = false
            gui.IgnoreGuiInset = true; gui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
            gui.Parent = parent
            state.Gui = gui
            local container = Instance.new("Frame")
            container.Name = "Container"
            container.Size = UDim2.fromOffset(180, 40)
            container.Position = state.SavedPos
            container.BackgroundTransparency = 1
            container.Parent = gui
            local main = Instance.new("Frame")
            main.Name = "MainBtn"
            main.Size = UDim2.fromOffset(132, 40)
            main.BackgroundColor3 = _G.OW_BG_OFF
            main.BorderSizePixel = 0; main.ZIndex = 1; main.Parent = container
            Instance.new("UICorner", main).CornerRadius = UDim.new(0, 12)
            local mainStroke = Instance.new("UIStroke", main)
            mainStroke.Name = "MainStroke"
            mainStroke.Color = _G.OW_STROKE_OFF
            mainStroke.Thickness = 1.2; mainStroke.Transparency = 0.2
            local ic = Instance.new("Frame")
            ic.Name = "IconCircle"
            ic.Size = UDim2.fromOffset(24, 24)
            ic.Position = UDim2.new(0, 8, 0.5, -12)
            ic.BackgroundColor3 = _G.OW_NEUTRAL
            ic.BackgroundTransparency = 0.4
            ic.BorderSizePixel = 0; ic.ZIndex = 2; ic.Parent = main
            Instance.new("UICorner", ic).CornerRadius = UDim.new(1, 0)
            local idot = Instance.new("Frame")
            idot.Name = "IconDot"
            idot.Size = UDim2.fromOffset(10, 10)
            idot.Position = UDim2.new(0.5, -5, 0.5, -5)
            idot.BackgroundColor3 = _G.OW_BG_OFF
            idot.BorderSizePixel = 0; idot.ZIndex = 3
            idot.Rotation = cfg.iconRotation or 0
            idot.Parent = ic
            Instance.new("UICorner", idot).CornerRadius = UDim.new(0, 2)
            local ml = Instance.new("TextLabel")
            ml.Name = "MainLabel"
            ml.Size = UDim2.new(1, -70, 1, 0)
            ml.Position = UDim2.new(0, 38, 0, 0)
            ml.BackgroundTransparency = 1
            ml.Font = Enum.Font.GothamBold
            ml.Text = cfg.title
            ml.TextColor3 = Color3.fromRGB(240, 240, 245)
            ml.TextSize = 13
            ml.TextXAlignment = Enum.TextXAlignment.Left
            ml.ZIndex = 2; ml.Parent = main
            local sp = Instance.new("Frame")
            sp.Name = "StatusPill"
            sp.AnchorPoint = Vector2.new(1, 0.5)
            sp.Size = UDim2.fromOffset(42, 20)
            sp.Position = UDim2.new(1, -8, 0.5, 0)
            sp.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
            sp.BorderSizePixel = 0; sp.ZIndex = 2; sp.Parent = main
            Instance.new("UICorner", sp).CornerRadius = UDim.new(1, 0)
            local sd = Instance.new("Frame")
            sd.Name = "StatusDot"
            sd.Size = UDim2.fromOffset(6, 6)
            sd.Position = UDim2.new(0, 7, 0.5, -3)
            sd.BackgroundColor3 = _G.OW_NEUTRAL
            sd.BorderSizePixel = 0; sd.ZIndex = 3; sd.Parent = sp
            Instance.new("UICorner", sd).CornerRadius = UDim.new(1, 0)
            local st = Instance.new("TextLabel")
            st.Name = "StatusText"
            st.Size = UDim2.new(1, -18, 1, 0)
            st.Position = UDim2.new(0, 16, 0, 0)
            st.BackgroundTransparency = 1
            st.Font = Enum.Font.GothamBold
            st.Text = "OFF"
            st.TextColor3 = Color3.fromRGB(140, 140, 152)
            st.TextSize = 10
            st.TextXAlignment = Enum.TextXAlignment.Center
            st.ZIndex = 3; st.Parent = sp
            local lock = Instance.new("TextButton")
            lock.Name = "LockBtn"
            lock.Size = UDim2.fromOffset(40, 40)
            lock.Position = UDim2.new(1, -44, 0, 0)
            lock.BackgroundColor3 = _G.OW_BG_OFF
            lock.BorderSizePixel = 0; lock.Text = ""
            lock.AutoButtonColor = false; lock.ZIndex = 1; lock.Parent = container
            Instance.new("UICorner", lock).CornerRadius = UDim.new(0, 12)
            local ls = Instance.new("UIStroke", lock)
            ls.Color = _G.OW_STROKE_OFF
            ls.Thickness = 1.2; ls.Transparency = 0.2
            ls.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
            local li = Instance.new("TextLabel")
            li.Name = "LockIcon"
            li.Size = UDim2.fromScale(1, 1)
            li.BackgroundTransparency = 1
            li.Font = Enum.Font.GothamBold
            li.Text = "🔓"
            li.TextColor3 = Color3.fromRGB(180, 180, 190)
            li.TextSize = 16; li.ZIndex = 2; li.Parent = lock
            local function UpdateLockVisual()
                if state.DragLocked then
                    li.Text = "🔒"
                    TweenService:Create(ls, TweenInfo.new(0.2), { Color = _G.OW_ACCENT, Transparency = 0, Thickness = 1.5 }):Play()
                    TweenService:Create(lock, TweenInfo.new(0.2), { BackgroundColor3 = _G.OW_ACCENT_BG }):Play()
                    TweenService:Create(li, TweenInfo.new(0.2), { TextColor3 = _G.OW_ACCENT }):Play()
                else
                    li.Text = "🔓"
                    TweenService:Create(ls, TweenInfo.new(0.2), { Color = _G.OW_STROKE_OFF, Transparency = 0.2, Thickness = 1.2 }):Play()
                    TweenService:Create(lock, TweenInfo.new(0.2), { BackgroundColor3 = _G.OW_BG_OFF }):Play()
                    TweenService:Create(li, TweenInfo.new(0.2), { TextColor3 = Color3.fromRGB(180, 180, 190) }):Play()
                end
            end
            local cd = Instance.new("TextButton")
            cd.Name = "ClickDetect"
            cd.Size = UDim2.fromScale(1, 1)
            cd.BackgroundTransparency = 1; cd.Text = ""
            cd.AutoButtonColor = false; cd.ZIndex = 5; cd.Parent = main
            local drag = false
            local dStart, sPos
            local dDist = 0
            table.insert(state.Connections, cd.InputBegan:Connect(function(inp)
                if inp.UserInputType == Enum.UserInputType.MouseButton1 or inp.UserInputType == Enum.UserInputType.Touch then
                    dStart = inp.Position; sPos = container.Position; dDist = 0
                    if not state.DragLocked then drag = true end
                end
            end))
            table.insert(state.Connections, cd.InputEnded:Connect(function(inp)
                if inp.UserInputType == Enum.UserInputType.MouseButton1 or inp.UserInputType == Enum.UserInputType.Touch then
                    if drag then drag = false; state.SavedPos = container.Position end
                    if dDist < 8 then ToggleBtn() end
                end
            end))
            table.insert(state.Connections, UserInputService.InputChanged:Connect(function(inp)
                if not drag then return end
                if inp.UserInputType == Enum.UserInputType.MouseMovement or inp.UserInputType == Enum.UserInputType.Touch then
                    local d = inp.Position - dStart
                    dDist = math.abs(d.X) + math.abs(d.Y)
                    container.Position = UDim2.new(sPos.X.Scale, sPos.X.Offset + d.X, sPos.Y.Scale, sPos.Y.Offset + d.Y)
                end
            end))
            table.insert(state.Connections, lock.MouseButton1Click:Connect(function()
                state.DragLocked = not state.DragLocked
                if state.DragLocked then drag = false end
                UpdateLockVisual()
            end))
            UpdateVisual(); UpdateLockVisual()
        end
        state.Create = CreateBtn
        state.Destroy = DestroyBtn
        state.UpdateVisual = UpdateVisual
        state.SetEnabled = function(en)
            state.Enabled = en and true or false
            if state.Enabled then CreateBtn() else DestroyBtn() end
        end
        return state
    end
    W.CreateFloatingButton = CreateFloatingButton

    --====================================================--
    -- 6 FLOATING BUTTONS
    --====================================================--
    -- 1. Self Heal
    local SelfHealBtnState = { Enabled=false, DragLocked=false, Gui=nil, SavedPos=UDim2.new(0.03,0,0.28,0), Connections={} }
    local SelfHealState = CreateFloatingButton({
        id="SelfHeal", title="Heal", state=SelfHealBtnState,
        isOn=function() return OW.SelfHeal_Enabled end,
        onToggle=function(v) W.setSelfHeal(v) end,
        iconRotation=0,
    })
    getgenv().OW_SHB_SetEnabled = function(en) SelfHealState.SetEnabled(en) end
    getgenv().OW_SHB_UpdateVisual = function() SelfHealState.UpdateVisual() end

    -- 2. Self Unhook
    local SelfUnhookBtnState = { Enabled=false, DragLocked=false, Gui=nil, SavedPos=UDim2.new(0.03,0,0.35,0), Connections={} }
    local SelfUnhookState = CreateFloatingButton({
        id="SelfUnhook", title="Hook", state=SelfUnhookBtnState,
        isOn=function() return OW.SelfUnhook_Enabled end,
        onToggle=function(v) W.SU_SetEnabled(v) end,
        iconRotation=135,
    })
    getgenv().OW_SUB_SetEnabled = function(en) SelfUnhookState.SetEnabled(en) end
    getgenv().OW_SUB_UpdateVisual = function() SelfUnhookState.UpdateVisual() end

    -- 3. Escape
    local EscapeBtnState = { Enabled=false, DragLocked=false, Gui=nil, SavedPos=UDim2.new(0.03,0,0.42,0), Connections={} }
    local EscapeState = CreateFloatingButton({
        id="Escape", title="Escape", state=EscapeBtnState,
        isOn=function() return OW.Escape_Enabled end,
        onToggle=function(v) OW.Escape_Enabled = v; if v then W.Escape_Teleport() end end,
        iconRotation=45,
    })
    getgenv().OW_Escape_SetEnabled = function(en) EscapeState.SetEnabled(en) end
    getgenv().OW_Escape_UpdateVisual = function() EscapeState.UpdateVisual() end

    -- 4. Invisible
    local InvisBtnState = { Enabled=false, DragLocked=false, Gui=nil, SavedPos=UDim2.new(0.03,0,0.49,0), Connections={} }
    local InvisStateBtn = CreateFloatingButton({
        id="Invisible", title="Invis", state=InvisBtnState,
        isOn=function()
            local MV = getgenv().OneWInvis
            return MV and MV.Enabled or false
        end,
        onToggle=function(v) W.Invisible_SetState(v, true) end,
        iconRotation=180,
    })
    getgenv().OW_InvisBtn_SetEnabled   = function(en) InvisStateBtn.SetEnabled(en) end
    getgenv().OW_InvisBtn_UpdateVisual = function() InvisStateBtn.UpdateVisual() end

    -- 5. Moonwalk
    local MoonwalkBtnState = { Enabled=false, DragLocked=false, Gui=nil, SavedPos=UDim2.new(0.03,0,0.56,0), Connections={} }
    local MoonwalkFloatingState = CreateFloatingButton({
        id="Moonwalk", title="Moon", state=MoonwalkBtnState,
        isOn=function() return OW.Moonwalk_Enabled end,
        onToggle=function(v) W.Moonwalk_SetEnabled(v) end,
        iconRotation=0,
    })
    getgenv().OW_MoonwalkBtn_SetEnabled   = function(en) MoonwalkFloatingState.SetEnabled(en) end
    getgenv().OW_MoonwalkBtn_UpdateVisual = function() MoonwalkFloatingState.UpdateVisual() end

    -- 6. Spear Aimbot
    local SpearBtnState2 = { Enabled=false, DragLocked=false, Gui=nil, SavedPos=UDim2.new(0.03,0,0.63,0), Connections={} }
    local SpearFloatingState = CreateFloatingButton({
        id="SpearAimbot", title="Spear", state=SpearBtnState2,
        isOn=function() return OW.SpearAimbot_Enabled end,
        onToggle=function(v) W.SpearAimbot_SetEnabled(v) end,
        iconRotation=90,
    })
    getgenv().OW_SpearBtn_SetEnabled   = function(en) SpearFloatingState.SetEnabled(en) end
    getgenv().OW_SpearBtn_UpdateVisual = function() SpearFloatingState.UpdateVisual() end

    --====================================================--
    -- UPDATE LOOPS (Auto Parry V1)
    --====================================================--
    local parryLastLogic, parryLastCircle = 0, 0
    RunService.Heartbeat:Connect(function()
        local now = os.clock()
        if now - parryLastCircle >= 0.033 then parryLastCircle = now; pcall(ParryUpdateCircleLogic) end
        if now - parryLastLogic >= 0.05 then parryLastLogic = now; pcall(ParryUpdateLogic) end
    end)

    --====================================================--
    -- NO FALL DAMAGE (always active if needed)
    --====================================================--
    do
        local FallHookInstalled = false
        local function VD_InstallNoFallHook()
            if FallHookInstalled then return end
            FallHookInstalled = true
            task.spawn(function()
                pcall(function()
                    local mt = getrawmetatable and getrawmetatable(game)
                    if not mt then return end
                    local oldNamecall = mt.__namecall
                    if setreadonly then setreadonly(mt, false) end
                    mt.__namecall = newcclosure(function(self, ...)
                        if not checkcaller() and getgenv().OW.NoFallDamage then
                            local method = getnamecallmethod()
                            if method == "FireServer" then
                                local ok, name = pcall(function() return self.Name end)
                                if ok and name == "Fall" then
                                    local par = self.Parent
                                    if par and par.Name == "Mechanics" then
                                        return nil
                                    end
                                end
                            end
                        end
                        return oldNamecall(self, ...)
                    end)
                    if setreadonly then setreadonly(mt, true) end
                end)
            end)
        end
        VD_InstallNoFallHook()
    end

    --====================================================--
    -- UI BUILD (ONE WINDOW)
    --====================================================--
    local uiOK, uiErr = pcall(function()
        if not UILib then error("UILib tidak tersedia.") end
        local Window = UILib:Window({
            Title = "One W v2",
            LogoButtonSize = 52,
            Image = "92826170205694",
            Footer = "One W v2 - Premium",
            Color = NotifyColor,
            ShowInfo = true,
            Version = 2,
            Search = true
        })

        Window:InfoTab({
            Name = "Information", Icon = "lightbulb",
            SectionTitle = "Information",
            Banner = "rbxassetid://92826170205694",
            Version = "v2.0.0",
            DiscordLink = "https://discord.gg/",
            DiscordName = "One W v2 - Community",
            DiscordText = "Join Server Discord One W v2 Untuk Informasi Update.",
            Cards = { { Title = "Credits", Description = "Based on ALFzxzzz Hub\nRebuilt as One W v2\n" } }
        })

        local SurvivorTab = Window:AddTab({ Name = "Survivor", Icon = "user" })
        local VisualsTab  = Window:AddTab({ Name = "Visuals",  Icon = "eye" })
        local KillerTab   = Window:AddTab({ Name = "Killer",   Icon = "crosshair" })
        local MiscTab     = Window:AddTab({ Name = "Misc",     Icon = "settings-2" })
        local ConfigTab   = Window:AddTab({ Name = "Config",   Icon = "save" })

        -- ============ SURVIVOR TAB ============
        local healSection = SurvivorTab:AddSection("Self Heal")
        healSection:AddToggle({ Title = "Enable Self Heal", Default = false, Callback = function(v)
            W.setSelfHeal(v)
            if getgenv().OW_SHB_UpdateVisual then getgenv().OW_SHB_UpdateVisual() end
        end })
        healSection:AddToggle({ Title = "Auto Heal All", Default = false, Callback = function(v)
            W.setAutoHealAll(v)
        end })
        healSection:AddToggle({ Title = "Show Self Heal Button", Default = false, Callback = function(v)
            if getgenv().OW_SHB_SetEnabled then getgenv().OW_SHB_SetEnabled(v) end
        end })

        local vaultSection = SurvivorTab:AddSection("Swift Vault")
        vaultSection:AddToggle({ Title = "Swift Vault", Default = false, Callback = function(v)
            OW.SwiftVault_Enabled = v
        end })
        vaultSection:AddToggle({ Title = "Swift Vault V2 (Custom Speed)", Default = false, Callback = function(v)
            OW.SwiftVault_V2 = v
            if not v then
                local char = LocalPlayer.Character
                if char then pcall(function() char:SetAttribute("vaultspeed", 1) end) end
            end
        end })
        vaultSection:AddSlider({ Title = "Vault Speed", Min = 10, Max = 20, Default = 13, Increment = 1, Callback = function(v) OW.SwiftVault_Speed = v end })

        local palletSection = SurvivorTab:AddSection("Pallet Reflex")
        palletSection:AddToggle({ Title = "Enable Pallet Reflex", Default = false, Callback = function(v) OW.PalletReflex_Enabled = v end })
        palletSection:AddSlider({ Title = "Trigger Distance", Min = 5, Max = 50, Default = 20, Increment = 1, Suffix = " studs", Callback = function(v) OW.PalletReflex_Dist = v end })

        local fpSection = SurvivorTab:AddSection("Fake Perks")
        fpSection:AddToggle({ Title = "Flowstate", Default = false, Callback = function(v) W.FP_SetupFlowstate(v) end })
        fpSection:AddToggle({ Title = "Quick Recovery", Default = false, Callback = function(v) W.FP_SetupQuickRecovery(v) end })
        fpSection:AddToggle({ Title = "Perfect Landing", Default = false, Callback = function(v) W.FP_SetupPerfectLanding(v) end })
        fpSection:AddToggle({ Title = "Adrenaline Rush", Default = false, Callback = function(v) W.FP_SetupAdrenalineRush(v) end })
        fpSection:AddSlider({ Title = "Perk Cooldown", Min = 0, Max = 30, Default = 5, Increment = 1, Suffix = "s", Callback = function(v) W.FP.CooldownTime = v end })

        local skillSection = SurvivorTab:AddSection("Auto Skill Check")
        skillSection:AddToggle({ Title = "Enable", Default = false, Callback = function(v) W.SkillCheck_SetEnabled(v) end })
        skillSection:AddDropdown({ Title = "Mode", Options = {"Legit", "Instant"}, Default = "Legit", Callback = function(v) W.SkillCheck.Mode = v end })

        local genSection = SurvivorTab:AddSection("Bypass Generator")
        genSection:AddToggle({ Title = "Enable (Hotkey B)", Default = false, Callback = function(v)
            GenBypass.Enabled = v; OW.GenBypass_Enabled = v
            if v then W.GB_CreateButton() end
        end })
        genSection:AddSlider({ Title = "Trigger Range", Min = 3, Max = 20, Default = 8, Increment = 1, Suffix = " studs", Callback = function(v) GenBypass.TriggerRange = v end })

        local uvSection = SurvivorTab:AddSection("Unlimited Vault")
        uvSection:AddToggle({ Title = "Enable", Default = false, Callback = function(v) W.UnlimitedVault_SetEnabled(v) end })

        local asvSection = SurvivorTab:AddSection("Anti Slow Vault")
        asvSection:AddToggle({ Title = "Enable", Default = false, Callback = function(v) W.AntiSlowVault_SetEnabled(v) end })

        local arSection = SurvivorTab:AddSection("Auto Run")
        arSection:AddToggle({ Title = "Auto Run [PC]", Default = false, Callback = function(v) W.AutoRunPC_SetEnabled(v) end })
        arSection:AddToggle({ Title = "Auto Run [Mobile]", Default = false, Callback = function(v) W.AutoRunMobile_SetEnabled(v) end })

        local parryV1Section = SurvivorTab:AddSection("Auto Parry V1")
        parryV1Section:AddToggle({ Title = "Enable", Default = false, Callback = function(v)
            OW.ParryV1_Enabled = v
            if not v then ParryState.ActiveAttackers = {} end
        end })
        parryV1Section:AddToggle({ Title = "Aggressive", Default = false, Callback = function(v) OW.ParryV1_Aggressive = v end })
        parryV1Section:AddSlider({ Title = "Parry Distance", Min = 4, Max = 30, Default = 10, Increment = 1, Callback = function(v) OW.ParryV1_Distance = v end })
        parryV1Section:AddToggle({ Title = "Show Parry Range", Default = false, Callback = function(v)
            OW.ParryV1_ShowRange = v
            if not v and getgenv()._OneW_DestroyParryCircle then pcall(getgenv()._OneW_DestroyParryCircle) end
        end })
        parryV1Section:AddToggle({ Title = "Silent Parry", Default = false, Callback = function(v) OW.ParryV1_Silent = v end })

        local parryV2Section = SurvivorTab:AddSection("Auto Parry V2")
        parryV2Section:AddToggle({ Title = "Enable Auto Parry V2", Default = false, Callback = function(v) OW.ParryV2_Enabled = v end })
        parryV2Section:AddToggle({ Title = "Aggressive Mode", Default = false, Callback = function(v) OW.ParryV2_Aggressive = v end })
        parryV2Section:AddToggle({ Title = "Safety Parry", Default = false, Callback = function(v) OW.ParryV2_Safety = v end })
        parryV2Section:AddSlider({ Title = "Parry Distance", Min = 4, Max = 25, Default = 6, Increment = 1, Suffix = " studs", Callback = function(v) OW.ParryV2_Distance = v end })
        parryV2Section:AddSlider({ Title = "Face Sensitivity", Min = -1, Max = 1, Default = 0.7, Increment = 0.05, Callback = function(v) OW.ParryV2_Face = v end })
        parryV2Section:AddToggle({ Title = "Show Range Circle", Default = true, Callback = function(v) OW.ParryV2_ShowCircle = v end })

        local mapPredictSection = SurvivorTab:AddSection("Next Map Prediction")
        mapPredictSection:AddToggle({ Title = "Enable", Default = false, Callback = function(v) OW.MapPredict_Enabled = v; if v then W.NextMapPredict_Start() else W.NextMapPredict_Stop() end end })

        local unhookSection = SurvivorTab:AddSection("Bypass Self Unhook")
        unhookSection:AddToggle({ Title = "Enable", Default = false, Callback = function(v)
            W.SU_SetEnabled(v)
            if getgenv().OW_SUB_UpdateVisual then getgenv().OW_SUB_UpdateVisual() end
        end })
        unhookSection:AddToggle({ Title = "Show Self Unhook Button", Default = false, Callback = function(v)
            if getgenv().OW_SUB_SetEnabled then getgenv().OW_SUB_SetEnabled(v) end
        end })
        unhookSection:AddSlider({ Title = "Follow Duration", Min = 5, Max = 120, Default = 30, Increment = 5, Suffix = "s", Callback = function(v) W.SelfUnhook.FollowDuration = v end })
        unhookSection:AddSlider({ Title = "Follow Distance", Min = 5, Max = 60, Default = 20, Increment = 1, Suffix = " studs", Callback = function(v) W.SelfUnhook.FollowDistance = v end })

        local tofSection = SurvivorTab:AddSection("Silent Aim TOF")
        tofSection:AddToggle({ Title = "Enable", Default = false, Callback = function(v) W.SetToFEnabled(v) end })
        tofSection:AddKeybind({ Title = "Toggle Key", Default = Enum.KeyCode.Q, Callback = function(kc) OW.TOF_Key = kc and kc.Name or "None" end })
        tofSection:AddDropdown({ Title = "Target Mode", Options = { "Killer", "Survivors", "Zombie" }, Default = "Killer", Callback = function(v) W.ToF_SetTargetMode(v, true) end })
        tofSection:AddToggle({ Title = "Show Laser Beam", Default = true, Callback = function(v) OW.TOF_Laser = v; if not v then W.ToF_ClearLaser() end end })
        tofSection:AddToggle({ Title = "Wall Check", Default = true, Callback = function(v) OW.TOF_WallCheck = v end })
        tofSection:AddToggle({ Title = "Block When Knocked", Default = true, Callback = function(v) OW.TOF_BlockKnocked = v end })

        local flashSection = SurvivorTab:AddSection("Silent Flashlight")
        flashSection:AddToggle({ Title = "Enable", Default = false, Callback = function(v) W.Flash_SetEnabled(v) end })
        flashSection:AddDropdown({ Title = "Target Part", Options = {"Head", "UpperTorso", "Torso", "HumanoidRootPart"},
            Default = "Head", Callback = function(v) OW.Flash_TargetPart = type(v) == "table" and v[1] or v or "Head" end })
        flashSection:AddSlider({ Title = "Max Range", Min = 20, Max = 250, Default = 120, Increment = 5, Suffix = " studs", Callback = function(v) OW.Flash_Range = v end })
        flashSection:AddSlider({ Title = "Smoothness", Min = 0.05, Max = 1, Default = 0.35, Increment = 0.05, Callback = function(v) OW.Flash_Smooth = v end })

        local gunSection = SurvivorTab:AddSection("Aim Lock Gun")
        gunSection:AddToggle({ Title = "Enable (Hold M2)", Default = false, Callback = function(v)
            if W.GunAim_Cfg then W.GunAim_Cfg.Enabled = v end
            if v and W.GunAim_Start then W.GunAim_Start() end
        end })
        gunSection:AddDropdown({ Title = "Target Mode", Options = { "Killer", "Survivor" }, Default = "Killer",
            Callback = function(v)
                local val = type(v) == "table" and v[1] or v
                if W.GunAim_Cfg then W.GunAim_Cfg.TargetMode = val end
            end })
        gunSection:AddSlider({ Title = "FOV Radius", Min = 50, Max = 1000, Default = 250, Increment = 10,
            Callback = function(v) if W.GunAim_Cfg then W.GunAim_Cfg.FOV = v end end })
        gunSection:AddSlider({ Title = "Aim Smoothness", Min = 0.1, Max = 1, Default = 0.5, Increment = 0.05,
            Callback = function(v) if W.GunAim_Cfg then W.GunAim_Cfg.Strength = v end end })
        gunSection:AddSlider({ Title = "Prediction Strength", Min = 0, Max = 1, Default = 0.12, Increment = 0.01,
            Callback = function(v) if W.GunAim_Cfg then W.GunAim_Cfg.PredictStrength = v end end })

        local moonwalkSection = SurvivorTab:AddSection("Moonwalk")
        moonwalkSection:AddToggle({ Title = "Enable (F8)", Default = false, Callback = function(v)
            W.Moonwalk_SetEnabled(v)
            if getgenv().OW_MoonwalkBtn_UpdateVisual then getgenv().OW_MoonwalkBtn_UpdateVisual() end
        end })
        moonwalkSection:AddToggle({ Title = "Show Moonwalk Button", Default = false, Callback = function(v)
            if getgenv().OW_MoonwalkBtn_SetEnabled then getgenv().OW_MoonwalkBtn_SetEnabled(v) end
        end })
        moonwalkSection:AddSlider({ Title = "Side Speed", Min = 0.1, Max = 3, Default = 0.9, Increment = 0.1, Callback = function(v) W.Moonwalk_SetSideSpeed(v) end })
        moonwalkSection:AddSlider({ Title = "Back Speed", Min = 0.1, Max = 3, Default = 1.2, Increment = 0.1, Callback = function(v) W.Moonwalk_SetBackSpeed(v) end })
        moonwalkSection:AddSlider({ Title = "Switch Interval", Min = 0.02, Max = 0.5, Default = 0.07, Increment = 0.01, Callback = function(v) W.Moonwalk_SetInterval(v) end })

        -- ============ VISUALS TAB ============
        local espSection = VisualsTab:AddSection("Full ESP System")
        espSection:AddToggle({ Title = "ESP Survivor", Default = false, Callback = function(v) FESP.Survivor = v end })
        espSection:AddColorPicker({ Title = "Survivor Color", Default = FESPC.Survivor, Save = false, Callback = function(c) FESPC.Survivor = c end })
        espSection:AddToggle({ Title = "ESP Killer", Default = false, Callback = function(v) FESP.Killer = v end })
        espSection:AddColorPicker({ Title = "Killer Color", Default = FESPC.Killer, Save = false, Callback = function(c) FESPC.Killer = c end })
        espSection:AddToggle({ Title = "ESP Generator", Default = false, Callback = function(v) FESP.Generator = v end })
        espSection:AddColorPicker({ Title = "Generator Color", Default = FESPC.Generator, Save = false, Callback = function(c) FESPC.Generator = c end })
        espSection:AddToggle({ Title = "ESP Pallet", Default = false, Callback = function(v) FESP.Pallet = v end })
        espSection:AddColorPicker({ Title = "Pallet Color", Default = FESPC.Pallet, Save = false, Callback = function(c) FESPC.Pallet = c end })
        espSection:AddToggle({ Title = "ESP Window", Default = false, Callback = function(v)
            FESP.Window = v
            _G.OneWWindowScanned = false
        end })
        espSection:AddColorPicker({ Title = "Window Color", Default = FESPC.Window, Save = false, Callback = function(c) FESPC.Window = c end })
        espSection:AddToggle({ Title = "ESP SCP", Default = false, Callback = function(v) FESP.SCP = v end })
        espSection:AddColorPicker({ Title = "SCP Color", Default = FESPC.SCP, Save = false, Callback = function(c) FESPC.SCP = c end })
        espSection:AddSlider({ Title = "ESP Radius", Min = 10, Max = 1000, Default = 500, Increment = 10, Callback = function(v) FESP.Distance = v end })

        local statusSection = VisualsTab:AddSection("ESP Status")
        statusSection:AddToggle({ Title = "Enable Status ESP", Default = false, Callback = function(v) FESPS.Enabled = v end })
        statusSection:AddToggle({ Title = "Show Name", Default = true, Callback = function(v) FESPS.ShowName = v end })
        statusSection:AddToggle({ Title = "Show Distance", Default = true, Callback = function(v) FESPS.ShowDistance = v end })
        statusSection:AddToggle({ Title = "Show Avatar", Default = true, Callback = function(v) FESPS.ShowAvatar = v end })
        statusSection:AddToggle({ Title = "Show Action", Default = true, Callback = function(v) FESPS.ShowAction = v end })
        statusSection:AddToggle({ Title = "Show Health Bar", Default = false, Callback = function(v) FESPS.ShowHealth = v end })
        statusSection:AddSlider({ Title = "Status Radius", Min = 20, Max = 1000, Default = 500, Increment = 10, Callback = function(v) FESPS.Radius = v end })

        -- ============ KILLER TAB ============
        local perksSection = KillerTab:AddSection("Killer Perks Info")
        perksSection:AddToggle({ Title = "Enable Killer Perks Display", Default = false, Callback = function(v)
            if v then W.KillerPerksDisplay_Start() else W.KillerPerksDisplay_Stop() end
            OW.KillerPerks_Enabled = v
        end })

        local lungeSection = KillerTab:AddSection("Infinite Lunge")
        lungeSection:AddToggle({ Title = "Enable", Default = false, Callback = function(v) OW.InfLunge_Enabled = v end })

        local cpSection = KillerTab:AddSection("Counter Auto Parry")
        cpSection:AddToggle({ Title = "Enable", Default = false, Callback = function(v) OW.CounterParry_Enabled = v end })

        local ahSection = KillerTab:AddSection("Aim Lock Hidden")
        ahSection:AddToggle({ Title = "Enable (Hold M2/E)", Default = false, Callback = function(v) W.AimHidden_SetEnabled(v) end })
        ahSection:AddInput({ Title = "Hold Keybind", Default = "E", Placeholder = "E / Q / F",
            Callback = function(input)
                input = tostring(input or ""):gsub("%s+", "")
                if input == "" then return end
                W.AimHidden_SetKey(input)
            end })

        local aaSection = KillerTab:AddSection("Aim Lock Attack")
        aaSection:AddToggle({ Title = "Enable (Hold M2)", Default = false, Callback = function(v)
            if W.AttackAim_Cfg then W.AttackAim_Cfg.Enabled = v end
            if v and W.AttackAim_Start then W.AttackAim_Start() end
        end })
        aaSection:AddSlider({ Title = "FOV Radius", Min = 50, Max = 1000, Default = 250, Increment = 10,
            Callback = function(v) if W.AttackAim_Cfg then W.AttackAim_Cfg.FOV = v end end })
        aaSection:AddSlider({ Title = "Aim Smoothness", Min = 0.1, Max = 1, Default = 1, Increment = 0.05,
            Callback = function(v) if W.AttackAim_Cfg then W.AttackAim_Cfg.Strength = v end end })
        aaSection:AddSlider({ Title = "Prediction Strength", Min = 0, Max = 1, Default = 0.12, Increment = 0.01,
            Callback = function(v) if W.AttackAim_Cfg then W.AttackAim_Cfg.PredictStrength = v end end })
        aaSection:AddDropdown({ Title = "Aim Part", Options = { "Head", "HumanoidRootPart", "UpperTorso", "Torso" }, Default = "HumanoidRootPart",
            Callback = function(v)
                local val = type(v) == "table" and v[1] or v
                if W.AttackAim_Cfg then W.AttackAim_Cfg.AimPart = val end
            end })
        aaSection:AddToggle({ Title = "Visibility Check", Default = true,
            Callback = function(v) if W.AttackAim_Cfg then W.AttackAim_Cfg.VisibilityCheck = v end end })

        local abSection = KillerTab:AddSection("Anti Blind")
        abSection:AddToggle({ Title = "Enable Anti Blind", Default = false, Callback = function(v) OW.AntiBlind_Enabled = v end })

        local dpSection = KillerTab:AddSection("Destroy Pallet")
        dpSection:AddToggle({ Title = "Enable Auto Destroy", Default = false, Callback = function(v) OW.DestroyPallet = v end })

        local maskedSection = KillerTab:AddSection("Select Masked Power")
        maskedSection:AddDropdown({ Title = "Masked Power", Options = Masked.Powers, Default = Masked.CurrentPower,
            Callback = function(v)
                local val = type(v) == "table" and v[1] or v
                Masked.CurrentPower = val
                OW.Masked_Power = val
            end })
        maskedSection:AddButton({ Title = "Activate Power", Callback = function() W.Masked_Activate() end })
        maskedSection:AddButton({ Title = "Deactivate Power", Callback = function() W.Masked_Deactivate() end })

        local veilV1Section = KillerTab:AddSection("Silent Spear Veil V1")
        veilV1Section:AddToggle({ Title = "Enable", Default = false, Callback = function(v) OW.VeilV1_Enabled = v end })
        veilV1Section:AddToggle({ Title = "Show FOV Circle", Default = true, Callback = function(v) OW.VeilV1_ShowFOV = v end })
        veilV1Section:AddToggle({ Title = "Show Target Tracker", Default = false, Callback = function(v) OW.VeilV1_ShowTracker = v end })
        veilV1Section:AddToggle({ Title = "Auto Predict", Default = true, Callback = function(v) OW.VeilV1_AutoPredict = v end })
        veilV1Section:AddSlider({ Title = "FOV Size", Min = 50, Max = 500, Default = 150, Increment = 10, Callback = function(v) OW.VeilV1_FOV = v end })
        veilV1Section:AddSlider({ Title = "Max Distance", Min = 50, Max = 280, Default = 280, Increment = 10, Callback = function(v) OW.VeilV1_MaxDist = v end })
        veilV1Section:AddSlider({ Title = "Spear Speed", Min = 50, Max = 400, Default = 165, Increment = 5, Callback = function(v) OW.VeilV1_SpearSpeed = v end })
        veilV1Section:AddSlider({ Title = "Spear Gravity", Min = 10, Max = 300, Default = 103, Increment = 1, Callback = function(v) OW.VeilV1_Gravity = v end })
        veilV1Section:AddSlider({ Title = "Lead Multiplier", Min = 0.1, Max = 5, Default = 1.4, Increment = 0.1, Callback = function(v) OW.VeilV1_Lead = v end })

        local veilV2Section = KillerTab:AddSection("Silent Spear Veil V2")
        veilV2Section:AddToggle({ Title = "Silent Veil V1", Default = false, Callback = function(v)
            W.W424Veil_API.AimConfig.Aim_SilentVeil = v
        end })
        veilV2Section:AddToggle({ Title = "Silent Veil V2", Default = false, Callback = function(v)
            W.W424Veil_API.AimConfig.Aim_SilentVeilV2 = v
        end })
        veilV2Section:AddToggle({ Title = "Auto Predict", Default = false, Callback = function(v)
            W.W424Veil_API.Config.SpearSmart_enable = v
        end })
        veilV2Section:AddSlider({ Title = "Lead Multiplier", Min = 0.5, Max = 5, Default = 1.4, Callback = function(v)
            W.W424Veil_API.AimConfig.Veil_LeadMultiplier = v
        end })
        veilV2Section:AddSlider({ Title = "Spear Speed", Min = 50, Max = 200, Default = 165, Callback = function(v)
            W.W424Veil_API.AimConfig.SPEAR_Speed = v
        end })
        veilV2Section:AddSlider({ Title = "Spear Gravity", Min = 0, Max = 200, Default = 103, Callback = function(v)
            W.W424Veil_API.AimConfig.SPEAR_Gravity = v
        end })
        veilV2Section:AddToggle({ Title = "ESP Tracker Target", Default = false, Callback = function(v)
            W.W424Veil_API.setTracker(v)
        end })

        local bypassSection = KillerTab:AddSection("Bypass No Cooldown")
        bypassSection:AddToggle({ Title = "Hidden - Leap Bypass", Default = false, Callback = function(v) W.SetHiddenLeap(v) end })
        bypassSection:AddToggle({ Title = "Myers - Infinite Grab (H)", Default = false, Callback = function(v) W.setMyersGrab(v) end })
        bypassSection:AddToggle({ Title = "Slasher - Infinite LakeMist", Default = false, Callback = function(v) W.SetLakeMist(v) end })
        bypassSection:AddToggle({ Title = "Slasher - Infinite Pursuit", Default = false, Callback = function(v) W.SetPursuit(v) end })
        bypassSection:AddToggle({ Title = "Abyss - Bypass Cooldown", Default = false, Callback = function(v) W.SetAbyssBypass(v) end })
        bypassSection:AddToggle({ Title = "Jeff - Infinite Frenzy", Default = false, Callback = function(v) W.SetJeffFrenzy(v) end })

        local ucSection = KillerTab:AddSection("Unlock Skill While Carrying")
        ucSection:AddToggle({ Title = "Enable", Default = false, Callback = function(v) W.SetUnlockCarry(v) end })

        local spearSection = KillerTab:AddSection("Spear Aimbot")
        spearSection:AddToggle({ Title = "Enable", Default = false, Callback = function(v)
            W.SpearAimbot_SetEnabled(v)
            if getgenv().OW_SpearBtn_UpdateVisual then getgenv().OW_SpearBtn_UpdateVisual() end
        end })
        spearSection:AddToggle({ Title = "Show Spear Button", Default = false, Callback = function(v)
            if getgenv().OW_SpearBtn_SetEnabled then getgenv().OW_SpearBtn_SetEnabled(v) end
        end })
        spearSection:AddSlider({ Title = "Spear Gravity", Min = 10, Max = 200, Default = 50, Increment = 1, Callback = function(v) W.SpearAimbot_SetGravity(v) end })
        spearSection:AddSlider({ Title = "Spear Speed", Min = 50, Max = 300, Default = 100, Increment = 5, Callback = function(v) W.SpearAimbot_SetSpeed(v) end })

        local kaSection = KillerTab:AddSection("Killer Abilities")
        kaSection:AddToggle({ Title = "Auto Stalk (Myers)", Default = false, Callback = function(v) W.KA_SetAutoStalk(v) end })
        kaSection:AddSlider({ Title = "Auto Stalk Range", Min = 20, Max = 500, Default = 150, Increment = 10, Suffix = " studs", Callback = function(v) KA.AutoStalkRange = v; OW.AutoStalk_Range = v end })
        kaSection:AddToggle({ Title = "Auto Kill All", Default = false, Callback = function(v) W.KA_SetAutoKillAll(v) end })
        kaSection:AddToggle({ Title = "Drop All Pallet", Default = false, Callback = function(v) W.KA_SetDropAllPallet(v) end })
        kaSection:AddToggle({ Title = "Block All Vault", Default = false, Callback = function(v) W.KA_SetBlockAllVault(v) end })
        kaSection:AddToggle({ Title = "Auto Hook", Default = false, Callback = function(v) W.KA_SetAutoHook(v) end })

        local flaskSection = KillerTab:AddSection("Silent Flask (The Cure)")
        flaskSection:AddToggle({ Title = "Enable", Default = false, Callback = function(v) W.Flask_SetEnabled(v) end })
        flaskSection:AddToggle({ Title = "Show Beam", Default = true, Callback = function(v) OW.Flask_ShowBeam = v end })
        flaskSection:AddToggle({ Title = "Show Landing Marker", Default = true, Callback = function(v) OW.Flask_ShowLanding = v end })
        flaskSection:AddToggle({ Title = "Prediction", Default = true, Callback = function(v) OW.Flask_Predict = v end })
        flaskSection:AddSlider({ Title = "Flask Speed", Min = 30, Max = 200, Default = 90, Increment = 5, Callback = function(v) W.Flask_SetSpeed(v) end })
        flaskSection:AddSlider({ Title = "Flask Gravity", Min = 50, Max = 400, Default = 196, Increment = 5, Callback = function(v) W.Flask_SetGravity(v) end })
        flaskSection:AddSlider({ Title = "Lead Multiplier", Min = 0, Max = 3, Default = 1, Increment = 0.1, Callback = function(v) W.Flask_SetLead(v) end })
        flaskSection:AddSlider({ Title = "Max Range", Min = 50, Max = 500, Default = 200, Increment = 10, Suffix = " studs", Callback = function(v) W.Flask_SetRange(v) end })

        local dlSection = KillerTab:AddSection("Dash Lock")
        dlSection:AddToggle({ Title = "Enable", Default = false, Callback = function(v) W.DashLock_SetEnabled(v) end })
        dlSection:AddSlider({ Title = "Lock Duration", Min = 0.5, Max = 5, Default = 1.5, Increment = 0.1, Suffix = "s", Callback = function(v) OW.DashLock_Duration = v end })
        dlSection:AddSlider({ Title = "Camera Smoothness", Min = 0.05, Max = 1, Default = 0.3, Increment = 0.05, Callback = function(v) OW.DashLock_Smooth = v end })
        dlSection:AddToggle({ Title = "Freeze Character", Default = false, Callback = function(v) OW.DashLock_Freeze = v end })

        -- ============ MISC TAB ============
        local settingsSection = MiscTab:AddSection("Settings")
        settingsSection:AddToggle({ Title = "Enable Notifications", Default = true, Callback = function(v) W.NotifyEnabled = v end })

        local stunSection = MiscTab:AddSection("Stun Indicator")
        stunSection:AddToggle({ Title = "Enable", Default = false, Callback = function(v) W.SInd_SetEnabled(v) end })
        stunSection:AddDropdown({ Title = "Stun Sound",
            Options = { "Default", "Clash Royale", "Blash", "Coin", "Kururin Kuru", "Spongebob", "Fahhhh", "Cave", "Aughhh", "Samsung", "iPhone", "Siren" },
            Default = "Default", Callback = function(v)
                local val = type(v) == "table" and v[1] or v
                SInd.SelectedSound = val
            end })
        stunSection:AddToggle({ Title = "Sound Alert", Default = true, Callback = function(v) SInd.SoundEnabled = v end })
        stunSection:AddButton({ Title = "Preview Sound", Callback = function()
            pcall(function()
                local snd = Instance.new("Sound")
                snd.SoundId = "rbxassetid://" .. tostring(SInd_GetActiveSoundId())
                snd.Volume = SInd.SoundVolume or 1.5
                snd.Parent = LocalPlayer:FindFirstChildOfClass("PlayerGui") or Workspace
                snd:Play()
                snd.Ended:Connect(function() pcall(function() snd:Destroy() end) end)
                task.delay(5, function() pcall(function() if snd and snd.Parent then snd:Destroy() end end) end)
            end)
        end })
        stunSection:AddSlider({ Title = "Detect Range", Min = 50, Max = 2000, Default = 500, Increment = 25, Suffix = " studs", Callback = function(v) SInd.Range = v end })
        stunSection:AddSlider({ Title = "Sound Volume", Min = 0, Max = 5, Default = 1.5, Increment = 0.1, Callback = function(v) SInd.SoundVolume = v end })

        local invisSection = MiscTab:AddSection("Invisibility")
        invisSection:AddToggle({ Title = "Enable", Default = false, Callback = function(v)
            W.Invisible_SetState(v, false)
            if getgenv().OW_InvisBtn_UpdateVisual then getgenv().OW_InvisBtn_UpdateVisual() end
        end })
        invisSection:AddToggle({ Title = "Show Invisible Button", Default = false, Callback = function(v)
            if getgenv().OW_InvisBtn_SetEnabled then getgenv().OW_InvisBtn_SetEnabled(v) end
        end })
        invisSection:AddKeybind({ Title = "Toggle Hotkey", Default = Enum.KeyCode.G, Callback = function(kc)
            if kc then OW.Invis_Hotkey = kc.Name end
        end })

        local camSection = MiscTab:AddSection("Camera DBD")
        camSection:AddToggle({ Title = "DBD Camera (Smooth Follow)", Default = false, Callback = function(v)
            OW.CamDBD_Smooth = v
            if not v then
                local cam = Workspace.CurrentCamera
                if cam then
                    -- reset
                end
            end
        end })
        camSection:AddSlider({ Title = "Camera Smoothness", Min = 1, Max = 30, Default = 4, Increment = 1, Callback = function(v) OW.CamDBD_SmoothSpeed = v end })
        camSection:AddToggle({ Title = "POV Lock", Default = false, Callback = function(v) OW.CamDBD_POVLock = v end })
        camSection:AddSlider({ Title = "POV Value", Min = 60, Max = 120, Default = 85, Increment = 1, Suffix = "°", Callback = function(v) OW.CamDBD_POVValue = v end })
        camSection:AddSlider({ Title = "POV Smoothness", Min = 3, Max = 20, Default = 9, Increment = 1, Callback = function(v) OW.CamDBD_POVSmooth = v end })

        local puSection = MiscTab:AddSection("Player Utility")
        puSection:AddToggle({ Title = "Speed Hack", Default = false, Callback = function(v)
            OW.PU_SpeedEnabled = v
            if not v then
                local hum = LocalPlayer.Character and LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
                if hum then hum.WalkSpeed = 16 end
            end
        end })
        puSection:AddSlider({ Title = "Speed Value", Min = 16, Max = 200, Default = 16, Increment = 1, Callback = function(v) OW.PU_SpeedValue = v end })
        puSection:AddToggle({ Title = "Skip End Screen", Default = false, Callback = function(v) OW.PU_SkipEnd = v end })
        puSection:AddToggle({ Title = "Shift Lock", Default = false, Callback = function(v) OW.PU_ShiftLock = v end })
        puSection:AddToggle({ Title = "Hide Survivor Icon", Default = false, Callback = function(v) OW.PU_HideSurvIcon = v end })
        puSection:AddToggle({ Title = "Show Ping & FPS", Default = false, Callback = function(v) OW.PU_PingFPS = v end })
        puSection:AddToggle({ Title = "Hide Name", Default = false, Callback = function(v) OW.PU_HideName = v end })
        puSection:AddToggle({ Title = "Unlimited Zoom", Default = false, Callback = function(v) OW.PU_UnlimitedZoom = v end })
        puSection:AddToggle({ Title = "Noclip", Default = false, Callback = function(v) OW.PU_Noclip = v end })

        local sbSection = MiscTab:AddSection("Speed Boost")
        sbSection:AddToggle({ Title = "Enable", Default = false, Callback = function(v) W.SpeedBoost_SetEnabled(v) end })
        sbSection:AddSlider({ Title = "Speed Value", Min = 16, Max = 100, Default = 30, Increment = 1, Callback = function(v) OW.SpeedBoost_Value = v end })

        local emoteSection = MiscTab:AddSection("Emote")
        emoteSection:AddToggle({ Title = "Enable", Default = false, Callback = function(v) W.EmoteSystem_SetEnabled(v) end })
        emoteSection:AddDropdown({ Title = "Select Emote", Options = W.EmoteSystem.Options, Default = "Friday Night", Multi = false,
            Callback = function(v)
                local val = type(v) == "table" and v[1] or v
                W.EmoteSystem_SelectEmote(val or "Friday Night")
            end })
        emoteSection:AddButton({ Title = "Stop Emote", Callback = function()
            W.EmoteSystem_Stop(); W.EmoteSystem.Enabled = false
        end })

        local faSection = MiscTab:AddSection("Fake Avatar")
        faSection:AddDropdown({ Title = "Fake Avatar Preset",
            Options = { "Self Avatar", "Random 1", "Random 2", "Random 3", "Random 4", "Random 5", "Random 6", "Random 7",
                "WoozyNate", "Nicholas", "yvlyf", "traevp", "J0LLY", "LucashDev", "CEOofIsaac", "Stealthy", "Wildes", "Talon",
                "Relukt", "Sammy", "Diesel", "S4ans03", "Aura", "iJava", "White Guy", "Purple King", "Kachaaaa Gay", "Mpruyyy" },
            Default = "Self Avatar",
            Callback = function(option)
                local ids = {
                    ["Self Avatar"] = LocalPlayer.UserId, ["Random 1"] = 2888298851, ["Random 2"] = 10074747755,
                    ["Random 3"] = 5209567453, ["Random 4"] = 8991982843, ["Random 5"] = 5796319029, ["Random 6"] = 9744452117,
                    ["Random 7"] = 8476755006, ["WoozyNate"] = 146089324, ["Nicholas"] = 909635, ["yvlyf"] = 181751703,
                    ["traevp"] = 471607078, ["J0LLY"] = 1073847038, ["LucashDev"] = 2525651744, ["CEOofIsaac"] = 63238912,
                    ["Stealthy"] = 56602747, ["Wildes"] = 40397833, ["Talon"] = 75974130, ["Relukt"] = 65042011,
                    ["Sammy"] = 2678001507, ["Diesel"] = 9123921576, ["S4ans03"] = 35439794, ["Aura"] = 2275806428,
                    ["iJava"] = 276557820, ["White Guy"] = 8843268357, ["Purple King"] = 9070758608,
                    ["Kachaaaa Gay"] = 8956318334, ["Mpruyyy"] = 8340163775
                }
                W.FakeAvatar_SetId(ids[option] or LocalPlayer.UserId)
            end })
        faSection:AddToggle({ Title = "Enable Fake Avatar", Default = false, Callback = function(v) W.FakeAvatar_SetEnabled(v) end })
        local UsernameInput = ""
        faSection:AddInput({ Title = "Fake Avatar Username", Placeholder = "username (tanpa @)",
            Callback = function(input) UsernameInput = (input or ""):gsub("^@", "") end })
        faSection:AddButton({ Title = "Apply From Username", Callback = function()
            if UsernameInput == "" then ForceNotify("Fake Avatar", "Masukkan username dulu!", 2); return end
            if W.FakeAvatar_ApplyFromUsername(UsernameInput) then
                ForceNotify("Fake Avatar", "Applied: @" .. UsernameInput, 2)
            else
                ForceNotify("Fake Avatar", "Username tidak ditemukan", 2)
            end
        end })

        local korlessSection = MiscTab:AddSection("Fake Korless")
        korlessSection:AddToggle({ Title = "Korless Morph", Default = false, Callback = function(v) W.Korless_SetEnabled(v) end })

        local headerSection = MiscTab:AddSection("Header Title")
        headerSection:AddInput({ Title = "Header Text", Default = "One W v2", Placeholder = "Nama header lo...",
            Callback = function(input) W.Header_SetText(input) end })
        headerSection:AddToggle({ Title = "Enable Header Title", Default = false, Callback = function(v) W.Header_SetEnabled(v) end })
        headerSection:AddColorPicker({ Title = "Header Color", Default = Color3.fromRGB(255, 255, 255), Save = false,
            Callback = function(c) W.Header_SetColor(c) end })

        local escapeSection = MiscTab:AddSection("Escape")
        escapeSection:AddToggle({ Title = "Enable Escape Button", Default = false, Callback = function(v)
            OW.Escape_Enabled = v
            if getgenv().OW_Escape_SetEnabled then getgenv().OW_Escape_SetEnabled(v) end
            if v then OW_Notify("Escape", "Shown", 2) end
        end })
        escapeSection:AddButton({ Title = "Teleport Now", Callback = function() W.Escape_Teleport() end })

        -- ============ CONFIG TAB ============
        local cfgSection = ConfigTab:AddSection("Config Manager")
        local currentName = ""
        local selectedConfig = nil
        local configList = nil
        local function ConfigFolderPath() return "OneW/Config" end
        local function EnsureConfigFolder()
            if isfolder and makefolder then
                if not isfolder("OneW") then makefolder("OneW") end
                if not isfolder(ConfigFolderPath()) then makefolder(ConfigFolderPath()) end
            end
        end
        EnsureConfigFolder()
        local function RefreshConfigList()
            local list = {}
            if listfiles then
                EnsureConfigFolder()
                local ok2, files = pcall(listfiles, ConfigFolderPath())
                if ok2 and files then
                    for _, f in ipairs(files) do
                        local n = string.match(f, "([^/\\]+)%.json$")
                        if n then table.insert(list, n) end
                    end
                end
            end
            if configList and configList.SetValues then configList:SetValues(list, selectedConfig, true) end
            return list
        end
        cfgSection:AddInput({ Title = "Config Name", Placeholder = "MyConfig", Save = false, Callback = function(text) currentName = text end })
        configList = cfgSection:AddDropdown({ Title = "Saved Configs", Multi = false, Options = {}, Save = false, Callback = function(v) selectedConfig = v end })
        RefreshConfigList()
        cfgSection:AddButton({ Title = "Save", SubTitle = "Load",
            Callback = function()
                if currentName == nil or currentName == "" then ForceNotify("Config", "Isi nama config dulu!", 2); return end
                if not writefile or not HttpService then ForceNotify("Config", "Executor gak support", 2); return end
                EnsureConfigFolder()
                local snapshot = {}
                for k, v in pairs(OW) do
                    if type(v) ~= "function" and type(v) ~= "userdata" and type(v) ~= "thread" then
                        snapshot[k] = v
                    end
                end
                local okEnc, encoded = pcall(function() return HttpService:JSONEncode(snapshot) end)
                if not okEnc or not encoded then ForceNotify("Config", "Gagal encode", 2); return end
                local okW = pcall(writefile, ConfigFolderPath() .. "/" .. currentName .. ".json", encoded)
                if not okW then ForceNotify("Config", "Gagal save", 2); return end
                ForceNotify("Config", "Saved: " .. currentName, 2)
                RefreshConfigList()
            end,
            SubCallback = function()
                if not selectedConfig or selectedConfig == "" then ForceNotify("Config", "Pilih config dulu!", 2); return end
                if not readfile or not isfile then ForceNotify("Config", "Executor gak support", 2); return end
                local path = ConfigFolderPath() .. "/" .. selectedConfig .. ".json"
                if not isfile(path) then ForceNotify("Config", "File gak ketemu", 2); return end
                local okR, raw = pcall(readfile, path)
                if not okR or not raw then ForceNotify("Config", "Gagal baca file", 2); return end
                local okD, dec = pcall(function() return HttpService:JSONDecode(raw) end)
                if not okD or type(dec) ~= "table" then ForceNotify("Config", "File corrupt", 2); return end
                for k, v in pairs(dec) do
                    OW[k] = v
                end
                ForceNotify("Config", "Loaded: " .. selectedConfig, 2)
            end
        })
        cfgSection:AddButton({ Title = "Delete", SubTitle = "Refresh List",
            Callback = function()
                if not selectedConfig or selectedConfig == "" then ForceNotify("Config", "Pilih config dulu!", 2); return end
                local path = ConfigFolderPath() .. "/" .. selectedConfig .. ".json"
                if isfile and delfile and isfile(path) then
                    pcall(delfile, path)
                    ForceNotify("Config", "Deleted: " .. selectedConfig, 2)
                    selectedConfig = nil; RefreshConfigList()
                end
            end,
            SubCallback = function()
                RefreshConfigList(); ForceNotify("Config", "List refreshed", 2)
            end
        })
        cfgSection:AddButton({ Title = "Export to Clipboard", Callback = function()
            if not setclipboard then ForceNotify("Config", "Clipboard gak support", 2); return end
            local snapshot = {}
            for k, v in pairs(OW) do
                if type(v) ~= "function" and type(v) ~= "userdata" and type(v) ~= "thread" then
                    snapshot[k] = v
                end
            end
            local okE, encoded = pcall(function() return HttpService:JSONEncode(snapshot) end)
            if okE and encoded then
                setclipboard(encoded)
                ForceNotify("Config", "Copied to clipboard!", 2)
            end
        end })
        local cfgInfoSection = ConfigTab:AddSection("Config Info")
        cfgInfoSection:AddParagraph({ Title = "Cara Pakai Config",
            Content = "• Save: tulis nama config, klik Save\n• Load: pilih dropdown, klik Load\n• Delete: pilih lalu klik Delete\n• Export: copy JSON ke clipboard" })
    end)

    if not uiOK then warn("[OneW] Gagal membuat UI:", uiErr) end

    print("[One W v2] Loaded!")
    print("  - One Window GUI")
    print("  - 6 Floating Buttons: Self Heal, Self Unhook, Escape, Invisible, Moonwalk, Spear Aimbot")
    ForceNotify("One W v2 Loaded", "6 Floating Buttons Ready - Premium", 6)
end

__OneW_Init_Main__()
