cask "openinterminal" do
  version "2.3.2"
  sha256 "83cca9ec957b82eac3f026cbacf966285dd1127e5707a1833db727569c01c821"

  url "https://github.com/Ji4n1ng/OpenInTerminal/releases/download/v#{version}/OpenInTerminal.app.zip"
  appcast "https://github.com/Ji4n1ng/OpenInTerminal/releases.atom"
  name "OpenInTerminal"
  desc "Finder Toolbar app to open the current directory in Terminal or Editor"
  homepage "https://github.com/Ji4n1ng/OpenInTerminal"

  depends_on macos: ">= :sierra"

  app "OpenInTerminal.app"
end
