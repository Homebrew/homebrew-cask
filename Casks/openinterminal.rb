cask "openinterminal" do
  version "2.3.5"
  sha256 "4271d793bb2f3cfe55189ca4aea5117551dc8c58a3abc06eec058630d47e3785"

  url "https://github.com/Ji4n1ng/OpenInTerminal/releases/download/v#{version}/OpenInTerminal.app.zip"
  name "OpenInTerminal"
  desc "Finder Toolbar app to open the current directory in Terminal or Editor"
  homepage "https://github.com/Ji4n1ng/OpenInTerminal"

  depends_on macos: ">= :sierra"

  app "OpenInTerminal.app"

  zap trash: [
    "~/Library/Application Scripts/wang.jianing.app.OpenInTerminal",
    "~/Library/Application Scripts/wang.jianing.app.OpenInTerminal.OpenInTerminalFinderExtension",
    "~/Library/Application Scripts/wang.jianing.app.OpenInTerminalHelper",
    "~/Library/Containers/wang.jianing.app.OpenInTerminal.OpenInTerminalFinderExtension",
    "~/Library/Containers/wang.jianing.app.OpenInTerminalHelper",
    "~/Library/Group Containers/group.wang.jianing.app.OpenInTerminal",
    "~/Library/Logs/OpenInTerminal",
  ]
end
