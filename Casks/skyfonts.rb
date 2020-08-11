cask "skyfonts" do
  version "5.9.5.6"
  sha256 "b2526d96898895db1c3f2caf3b1ab825898408b097e1efd88fbf33dd6bf9515f"

  url "https://cdn1.skyfonts.com/client/Monotype_SkyFonts_Mac64_#{version}.dmg"
  appcast "https://api.skyfonts.com/api/SkyFontsAppCast?osid=3"
  name "SkyFonts"
  desc "Font manager"
  homepage "https://skyfonts.com/"

  installer manual: "Install SkyFonts.app"

  uninstall quit:      [
    "com.mti.Monotype-SkyFonts",
    "com.mti.Monotype-SkyFontsHelper",
  ],
            launchctl: "com.mti.Monotype-SkyFontsHelper",
            delete:    "/Applications/Skyfonts"
end
