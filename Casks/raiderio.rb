cask "raiderio" do
  version "2.1.7"
  sha256 "c9522e472cc1a81fb85376f3df3a063ec800d8b3714a7b88b8418f9cfc904e9a"

  url "https://github.com/RaiderIO/raiderio-client-builds/releases/download/v#{version}/RaiderIO_Client.dmg",
      verified: "github.com/RaiderIO/raiderio-client-builds/"
  name "RaiderIO Client"
  desc "World of Warcraft rankings site client"
  homepage "https://raider.io/"

  app "RaiderIO.app"
end
