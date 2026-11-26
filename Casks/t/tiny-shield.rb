cask "tiny-shield" do
  version "1.21.0,12100"
  sha256 "799568b63fbdb74fc2a7e786f91ef1c827592a4042ba6db52b83462160fd33a3"

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
