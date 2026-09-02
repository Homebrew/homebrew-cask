cask "openinterminal" do
  version "2.3.9"
  sha256 "14df8720783492fb430237e221604ac332f1025b1d51019e230b796daa387765"

  url "https://github.com/Ji4n1ng/OpenInTerminal/releases/download/v#{version}/OpenInTerminal.zip"
  name "OpenInTerminal"
  desc "Finder Toolbar app to open the current directory in Terminal or Editor"
  homepage "https://github.com/Ji4n1ng/OpenInTerminal"

  depends_on :macos

  app "OpenInTerminal.app"

  zap trash: [
    "~/Library/Application Scripts/group.wang.jianing.app.OpenInTerminal",
    "~/Library/Application Scripts/wang.jianing.app.OpenInTerminal",
    "~/Library/Application Scripts/wang.jianing.app.OpenInTerminal.OpenInTerminalFinderExtension",
    "~/Library/Application Scripts/wang.jianing.app.OpenInTerminalHelper",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/wang.jianing.app.openinterminalhelper.sfl*",
    "~/Library/Containers/wang.jianing.app.OpenInTerminal.OpenInTerminalFinderExtension",
    "~/Library/Containers/wang.jianing.app.OpenInTerminalHelper",
    "~/Library/Group Containers/group.wang.jianing.app.OpenInTerminal",
    "~/Library/Logs/OpenInTerminal",
    "~/Library/Preferences/wang.jianing.app.OpenInTerminal.plist",
  ]
end
