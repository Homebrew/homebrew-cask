cask "aethersx2" do
  version "2278"
  sha256 "717764c8a76f48315d4c880b32dfb815cc3538e7947a53a8c76e027fda881168"

  url "https://aethersx2.com/archive/desktop/mac/AetherSX2-alpha-#{version}-mac.zip"
  name "AetherSX2"
  desc "Sony PlayStation 2 emulator for ARM based Macs"
  homepage "https://aethersx2.com/"

  livecheck do
    url "https://www.aethersx2.com/archive/?dir=desktop/mac"
    regex(/AetherSX2[._-]alpha[._-](\d+)[._-]mac\.zip/i)
  end

  depends_on arch: :arm64

  app "AetherSX2.app"

  zap trash: [
    "~/Library/Application Support/AetherSX2",
    "~/Library/Preferences/com.aethersx2.mac.plist",
    "~/Library/Saved Application State/com.aethersx2.mac.savedState",
  ]
end
