cask "hytale" do
  version "2026.02.06-975622e"
  sha256 "f22e106b8221248fa14ede164c1ecb9997663948329130e86d1064fd231a470c"

  url "https://launcher.hytale.com/builds/release/darwin/arm64/hytale-launcher-#{version}.dmg"
  name "Hytale"
  desc "Official Hytale Launcher"
  homepage "https://hytale.com/"

  livecheck do
    url "https://launcher.hytale.com/version/release/launcher.json"
    strategy :json do |json|
      json["version"]
    end
  end

  auto_updates true
  depends_on arch: :arm64

  app "Hytale Launcher.app"

  zap trash: [
    "~/Library/Caches/com.hypixel.hytale-launcher",
    "~/Library/Preferences/com.hypixel.hytale-launcher.plist",
    "~/Library/WebKit/com.hypixel.hytale-launcher",
  ]
end
