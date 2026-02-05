cask "copilot-for-xcode" do
  version "0.38.0"
  sha256 "66b05b0af7444bc13d04d68cd1e0bb5a23690e5e8ddb6e7879cc5f27ec8e541a"

  url "https://github.com/intitni/CopilotForXcode/releases/download/#{version}/Copilot.for.Xcode.app.zip"
  name "Copilot for Xcode"
  desc "Xcode extension for GitHub Copilot"
  homepage "https://github.com/intitni/CopilotForXcode"

  livecheck do
    url "https://copilotforxcode.intii.com/appcast.xml"
    strategy :sparkle, &:short_version
  end

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
