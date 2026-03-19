cask "hytale" do
  version "2026.03.19-48afb7b"
  sha256 "062c54e29966f4911c13e806756f51eb91713b46936389fafba0826a93916429"

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
