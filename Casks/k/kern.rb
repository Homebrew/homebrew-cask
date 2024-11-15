cask "kern" do
  version "1.1.5"
  sha256 "f52a4ec22637a66044d6e88e525e36f2a06cbd4a232086ee5532f3fdd75c10da"

  url "https://www.fullbucket.de/music/dl/kern_#{version.dots_to_underscores}_mac.pkg"
  name "Kern"
  desc "Performance synthesiser"
  homepage "https://www.fullbucket.de/music/kern.html"

  livecheck do
    url :homepage
    regex(/v(\d+(?:\.\d+)+)/i)
  end

  pkg "kern_#{version.dots_to_underscores}_mac.pkg"

  uninstall pkgutil: [
    "com.fullbucket.audiounit.pkg.Kern",
    "com.fullbucket.vst.pkg.Kern",
  ]

  caveats do
    reboot
    requires_rosetta
  end
end
