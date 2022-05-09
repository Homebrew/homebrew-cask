cask "aethersx2" do
  version ""
  sha256 :no_check

  url "https://aethersx2.com/archive/desktop/mac/AetherSX2-alpha-1860-mac.zip"
  name "AetherSX2"
  desc "Sony PlayStation 2 emulator for ARM based Macs"
  homepage "https://aethersx2.com/"

  depends_on arch: :arm64

  app "AetherSX2.app"

  zap trash: [
    "~/Library/Application Support/AetherSX2",
    "~/Library/Preferences/com.aethersx2.mac.plist",
    "~/Library/Saved Application State/com.aethersx2.mac.savedState",
  ]
end
