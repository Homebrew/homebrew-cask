cask "modulair" do
  version "1.2.1"
  sha256 "fe1818a43f1756e61054c9fcb054a285c0622a1342e1016f5996837b382d8460"

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
