cask "openinterminal" do
  version "2.3.7"
  sha256 "1b8453c8e10345d9e74b395e15115c870b42b2d055c28f50f9844908e7b690d3"

  url "https://github.com/Ji4n1ng/OpenInTerminal/releases/download/v#{version}/OpenInTerminal.zip"
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
