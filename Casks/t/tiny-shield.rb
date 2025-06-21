cask "tiny-shield" do
  version "0.6.1,6010"
  sha256 "00e6c77bd5bee1faefd77bb3456ceb0e6f73b456b96c4796182a1297fcca59b5"

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
