cask "hytale" do
  version "2026.05.07-8c147f8"
  sha256 "270cb1a233cc7e07c56728af0edda1cf54ba980da41af2d55f114dbdef605cc7"

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
