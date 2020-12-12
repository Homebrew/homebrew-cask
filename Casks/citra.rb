cask "citra" do
  version :latest
  sha256 :no_check

  # github.com/citra-emu/citra-web/ was verified as official when first introduced to the cask
  url "https://github.com/citra-emu/citra-web/releases/download/1.0/citra-setup-mac.dmg"
  name "Citra"
  homepage "https://citra-emu.org/"

  installer manual: "citra-setup-mac.app"

  uninstall delete: "/Applications/Citra"

  zap trash: [
    "~/Library/Preferences/com.citra-emu.citra.plist",
    "~/Library/Saved Application State/com.citra-emu.citra.savedState",
  ]
end
