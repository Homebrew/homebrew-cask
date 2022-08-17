cask "aethersx2" do
  version "1.1-2596"
  sha256 "bb97a8c29edd80430d813889455c2d745b522d4b0f73caa6d0eca37d94d35f3c"

  url "https://aethersx2.com/archive/desktop/mac/AetherSX2-v#{version}-mac.zip"
  name "AetherSX2"
  desc "Sony PlayStation 2 emulator for ARM based Macs"
  homepage "https://aethersx2.com/"

  livecheck do
    url "https://www.aethersx2.com/archive/?dir=desktop/mac"
    regex(/AetherSX2[._-]v?(\d+(?:\.\d+)[._-]\d+)[._-]mac\.zip/i)
  end

  depends_on arch: :arm64

  app "AetherSX2.app"

  zap trash: [
    "~/Library/Application Support/AetherSX2",
    "~/Library/Preferences/com.aethersx2.mac.plist",
    "~/Library/Saved Application State/com.aethersx2.mac.savedState",
  ]
end
