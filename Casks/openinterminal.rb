cask "openinterminal" do
  version "2.3.3"
  sha256 "54dfbe8d21b4cb46885ed5ebc34fedf8382acfeb50040828d52b0a0b8a7c885b"

  url "https://github.com/Ji4n1ng/OpenInTerminal/releases/download/v#{version}/OpenInTerminal.app.zip"
  appcast "https://github.com/Ji4n1ng/OpenInTerminal/releases.atom"
  name "OpenInTerminal"
  desc "Finder Toolbar app to open the current directory in Terminal or Editor"
  homepage "https://github.com/Ji4n1ng/OpenInTerminal"

  depends_on macos: ">= :sierra"

  app "OpenInTerminal.app"
end
