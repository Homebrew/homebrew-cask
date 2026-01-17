cask "hytale" do
  version "2026.01.16-2e2291a"
  sha256 :no_check

  url "https://launcher.hytale.com/builds/release/darwin/arm64/hytale-launcher-latest.dmg"
  name "Hytale"
  desc "Official Hytale Launcher"
  homepage "https://hytale.com/"

  livecheck do
    url :url
    strategy :extract_plist
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
