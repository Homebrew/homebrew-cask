cask "kern" do
  version "1.2.0"
  sha256 "16b5cc1a323d8d089e97c58246d68558a66f986a9576d528e8621ebd2cf37816"

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
    "de.fullbucket.audiounit.pkg.Kern",
    "de.fullbucket.vst.pkg.Kern",
    "de.fullbucket.vst3.pkg.Kern",
  ]

  zap trash: "~/Music/FullBucketMusic/kern.ini"

  caveats do
    reboot
  end
end
