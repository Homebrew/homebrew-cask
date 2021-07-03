cask "modulair" do
  version "1.2.4"
  sha256 "bdeb3cc134cb77b26de5a43cf0af334bc0385cd1d98d50015b181896da911f0c"

  url "https://www.fullbucket.de/music/dl/modulair_#{version.dots_to_underscores}_mac.pkg"
  name "ModulAir"
  desc "Polyphonic modular synthesizer"
  homepage "https://www.fullbucket.de/music/modulair.html"

  livecheck do
    url :homepage
    strategy :page_match
    regex(/v(\d+(?:\.\d+)*)/)
  end

  pkg "modulair_#{version.dots_to_underscores}_mac.pkg"

  uninstall pkgutil: [
    "com.fullbucket.audiounit.pkg.ModulAir",
    "com.fullbucket.vst.pkg.ModulAir",
    "com.fullbucket.vst.pkg.ModulAirFX",
  ]

  caveats do
    reboot
  end
end
