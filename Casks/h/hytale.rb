cask "hytale" do
  version "2026.06.08-c407342"
  sha256 "7221deb893cfd971dbd964f31f13076d40bee619b0d30584303c0ea6950a0b8f"

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
  depends_on :macos
  depends_on arch: :arm64

  app "Hytale Launcher.app"

  zap trash: [
    "~/Library/Caches/com.hypixel.hytale-launcher",
    "~/Library/Preferences/com.hypixel.hytale-launcher.plist",
    "~/Library/WebKit/com.hypixel.hytale-launcher",
  ]
end
