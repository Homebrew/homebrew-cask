cask "skyfonts" do
  version "5.9.5.7"
  sha256 "bfdd1e920e0c6871909fbc9ce441d7b1eba9be04fb30af32892649b131ff05ad"

  url "https://cdn1.skyfonts.com/client/Monotype_SkyFonts_Mac64_#{version}.dmg"
  name "SkyFonts"
  desc "Font manager"
  homepage "https://skyfonts.com/"

  livecheck do
    url "https://api.skyfonts.com/api/SkyFontsAppCast?osid=3"
    strategy :page_match
    regex(%r{href=.*?/Monotype_SkyFonts_Mac64_(\d+(?:\.\d+)*)\.dmg}i)
  end

  installer manual: "Install SkyFonts.app"

  uninstall quit:      [
    "com.mti.Monotype-SkyFonts",
    "com.mti.Monotype-SkyFontsHelper",
  ],
            launchctl: "com.mti.Monotype-SkyFontsHelper",
            delete:    "/Applications/Skyfonts"
end
