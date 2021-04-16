cask "modulair" do
  version "1.2.3"
  sha256 "9c5709ed34779175da6834606657e1c788017737f667b3ec392c3dee7d42852b"

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
