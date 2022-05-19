cask "aethersx2" do
  version "1860"
  sha256 "37728c0ac7b9e14722a4bdb1e2df2c54353a9f8379243faeddaacacbae29e40b"

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
