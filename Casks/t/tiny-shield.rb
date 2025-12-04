cask "tiny-shield" do
  version "1.6.0,10600"
  sha256 "b2e737c1c7cb5dcda2ef97357d2fed804f41bb57b4438c514b6add1366827f83"

  url "https://download.proxyman.io/tinyshield/#{version.csv.second}/Tiny_Shield_#{version.csv.first}.dmg",
      verified: "download.proxyman.io/tinyshield/"
  name "Tiny Shield"
  desc "Control and monitor network connections"
  homepage "https://tinyshield.proxyman.com/"

  livecheck do
    url "https://api-tinyshield.proxyman.com/api/releases/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :sequoia"

  app "Tiny Shield.app"

  zap trash: [
    "/Library/Application Support/com.proxyman.ProxymanGuard",
    "~/Library/Application Support/com.proxyman.ProxymanGuard",
    "~/Library/Caches/com.proxyman.ProxymanGuard",
    "~/Library/HTTPStorages/com.proxyman.ProxymanGuard",
    "~/Library/Preferences/com.proxyman.ProxymanGuard.plist",
  ]
end
