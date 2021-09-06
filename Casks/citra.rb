cask "citra" do
  version :latest
  sha256 :no_check

  url "https://github.com/citra-emu/citra-web/releases/download/1.0/citra-setup-mac.dmg",
      verified: "github.com/citra-emu/citra-web/"
  name "Citra"
  desc "Nintendo 3DS emulator"
  homepage "https://citra-emu.org/"

  installer manual: "citra-setup-mac.app"

  uninstall delete: "/Applications/Citra"

  zap trash: [
    "~/Library/Preferences/com.citra-emu.citra.plist",
    "~/Library/Saved Application State/com.citra-emu.citra.savedState",
  ]
end
