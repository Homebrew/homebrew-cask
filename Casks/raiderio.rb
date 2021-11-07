cask "raiderio" do
  version "2.1.8"
  sha256 "b8ca6c2f6f9a2bd3e4710f8e718e91604d942eeb90649c7836f43ae4a30fa5f6"

  url "https://github.com/RaiderIO/raiderio-client-builds/releases/download/v#{version}/RaiderIO_Client.dmg",
      verified: "github.com/RaiderIO/raiderio-client-builds/"
  name "RaiderIO Client"
  desc "World of Warcraft rankings site client"
  homepage "https://raider.io/"

  app "RaiderIO.app"
end
