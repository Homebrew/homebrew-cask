cask "openinterminal" do
  version "2.3.4"
  sha256 "899a40674ccfcdb640e504a93623a14b88e7b17d238718b33eb77f50c4a78ed3"

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
