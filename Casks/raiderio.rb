cask "raiderio" do
  version "2.1.4"
  sha256 "fa16789f0f4c49d7288445c31a155f1ce3391377524255f349bf52f598e2b275"

  url "https://github.com/RaiderIO/raiderio-client-builds/releases/download/v#{version}/RaiderIO_Client.dmg",
      verified: "github.com/RaiderIO/raiderio-client-builds/"
  name "RaiderIO Client"
  desc "World of Warcraft rankings site client"
  homepage "https://raider.io/"

  app "RaiderIO.app"
end
