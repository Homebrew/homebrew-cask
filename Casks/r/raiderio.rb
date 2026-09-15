cask "raiderio" do
  version "5.0.9"
  sha256 "fb6701c28cf881ed6d92a9e9eceae7d3338ff4f98ed825f2682a9bb7e22e9be9"

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
