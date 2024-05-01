cask "copilot-for-xcode" do
  version "0.32.3"
  sha256 "b628928e83b13a8682ba53964c8c21dd1dd1e79ddb3e7b55829ddc26d0e84899"

  url "https://github.com/intitni/CopilotForXcode/releases/download/#{version}/Copilot.for.Xcode.app.zip"
  name "Copilot for Xcode"
  desc "Xcode extension for Github Copilot"
  homepage "https://github.com/intitni/CopilotForXcode"

  livecheck do
    url :url
    strategy :github_latest
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
