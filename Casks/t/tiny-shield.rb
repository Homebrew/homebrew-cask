cask "tiny-shield" do
  version "1.20.0,12000"
  sha256 "c5bbe11439d8690983ec7b22791b0f2a7abd13158bfbbed6ccf6a7df7ecd6503"

  url "https://download.proxyman.io/tinyshield/#{version.csv.second}/Tiny_Shield_#{version.csv.first}.dmg"
  name "Tiny Shield"
  desc "Control and monitor network connections"
  homepage "https://tinyshield.proxyman.com/"

  livecheck do
    url "https://api-tinyshield.proxyman.com/api/releases/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :sequoia

  app "Tiny Shield.app"

  zap trash: [
    "/Library/Application Support/com.proxyman.ProxymanGuard",
    "~/Library/Application Support/com.proxyman.ProxymanGuard",
    "~/Library/Caches/com.proxyman.ProxymanGuard",
    "~/Library/HTTPStorages/com.proxyman.ProxymanGuard",
    "~/Library/Preferences/com.proxyman.ProxymanGuard.plist",
  ]
end
