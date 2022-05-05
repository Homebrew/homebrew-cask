cask "skyfonts" do
  version "5.9.5.8"
  sha256 "65a914edce60c0110d4ad4ff371389059ff6ab77b6e0a4b7135c9f3097d8565d"

  url "https://cdn1.skyfonts.com/client/Monotype_SkyFonts_Mac64_#{version}.dmg"
  name "SkyFonts"
  desc "Font manager"
  homepage "https://skyfonts.com/"

  livecheck do
    url "https://api.skyfonts.com/api/SkyFontsAppCast?osid=3"
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
