cask "modulair" do
  version "1.2.2"
  sha256 "8a16fc3ce0756811e623edfa34e3cade7e69f3d4bbeb5343c32a6e1a4a93d173"

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
