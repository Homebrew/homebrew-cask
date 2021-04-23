cask "modulair" do
  version "1.2.3"
  sha256 "fb43bc43d2c138d27171d8f117da79ba3e6ee9fd0da13139cb90179855a65f87"

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
