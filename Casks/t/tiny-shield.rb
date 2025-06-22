cask "tiny-shield" do
  version "0.7.0,7000"
  sha256 "e953aa4d518e03f2a8ef5e17bb6ae6cdc444714656b0dfb63da412f142d59ebe"

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
