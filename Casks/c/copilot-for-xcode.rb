cask "copilot-for-xcode" do
  version "0.22.1"
  sha256 "e3efab0e03b1881e996097fe8928be1534521ac6b8ea2622edcd2cee080722c9"

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
