cask "openinterminal-lite" do
  version "1.2.1"
  sha256 "76b7db05ddac30b1487cff72bf41b914ad6c4bdebebf6ab354e1c9bdb8f2fcd1"

  url "https://github.com/Ji4n1ng/OpenInTerminal/releases/download/v#{version}/OpenInTerminal-Lite.app.zip"
  appcast "https://github.com/Ji4n1ng/OpenInTerminal/releases.atom"
  name "OpenInTerminal-Lite"
  desc "Finder Toolbar app to open the current directory in Terminal"
  homepage "https://github.com/Ji4n1ng/OpenInTerminal"

  app "OpenInTerminal-Lite.app"
end
