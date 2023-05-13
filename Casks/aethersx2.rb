cask "aethersx2" do
  version "1.5-3939"
  sha256 "55178a1fbdca463750c5b13dbc972de290a7dce0795291d81e9c76594bc08150"

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
