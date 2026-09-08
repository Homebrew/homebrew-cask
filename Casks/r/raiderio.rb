cask "raiderio" do
  version "5.0.5"
  sha256 "3d22ce06ec69884ab367c8e11e8540708708b3de276e65092dfc0e6d06e1f60d"

  url "https://github.com/RaiderIO/raiderio-client-builds/releases/download/v#{version}/RaiderIO_Client.dmg"
  name "Raider.io Client"
  desc "World of Warcraft client to track Mythic+ and Raid Progression"
  homepage "https://raider.io/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :monterey

  app "RaiderIO.app"

  zap trash: [
    "~/Library/Application Support/RaiderIO",
    "~/Library/Logs/RaiderIO",
  ]
end
