cask "raiderio" do
  version "2.1.1"
  sha256 "8f02ea2a1416830b7bb98f10212ab4b31845f70988babf2499735634c80fdc34"

  url "https://github.com/RaiderIO/raiderio-client-builds/releases/download/v#{version}/RaiderIO_Client.dmg",
      verified: "github.com/RaiderIO/raiderio-client-builds/"
  appcast "https://github.com/RaiderIO/raiderio-client-builds/releases.atom"
  name "RaiderIO Client"
  homepage "https://raider.io/"

  app "RaiderIO.app"
end
