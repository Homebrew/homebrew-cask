cask "citra" do
  version "1.0"
  sha256 "0eb056c9eff5cfcfa883b2bb72bedec819772b4cdbbd00ffa804fd40e9444021"

  url "https://github.com/citra-emu/citra-web/releases/download/#{version}/citra-setup-mac.dmg",
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
