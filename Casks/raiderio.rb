cask "raiderio" do
  version "2.1.5"
  sha256 "8bd8cd3f880bb5b5daee9f2dc9a2f66c8063c0118066bd63ab67b81afa868831"

  url "https://github.com/RaiderIO/raiderio-client-builds/releases/download/v#{version}/RaiderIO_Client.dmg",
      verified: "github.com/RaiderIO/raiderio-client-builds/"
  name "RaiderIO Client"
  desc "World of Warcraft rankings site client"
  homepage "https://raider.io/"

  app "RaiderIO.app"
end
