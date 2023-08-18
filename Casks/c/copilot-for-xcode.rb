cask "copilot-for-xcode" do
  version "0.22.0"
  sha256 "2b00fa2640a3dd21d55204b4a9221deca9a7875717c9391e3aaf59377b524030"

  url "https://github.com/intitni/CopilotForXcode/releases/download/#{version}/Copilot.for.Xcode.app.zip"
  name "Copilot for Xcode"
  desc "Xcode extension for Github Copilot"
  homepage "https://github.com/intitni/CopilotForXcode"

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Copilot for Xcode.app"

  zap trash: [
    "~/Library/Application Scripts/*com.intii.CopilotForXcode*",
    "~/Library/Application Support/com.intii.CopilotForXcode",
    "~/Library/Containers/com.intii.CopilotForXcode.EditorExtension",
    "~/Library/Group Containers/*group.com.intii.CopilotForXcode*",
    "~/Library/LaunchAgents/com.intii.CopilotForXcode.XPCService.plist",
    "~/Library/Preferences/5YKZ4Y3DAW.group.com.intii.CopilotForXcode.plist",
  ]
end
