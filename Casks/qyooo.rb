cask "qyooo" do
  version "1.1.3"
  sha256 "75a85ca2f53b859d2cb09c02db18162481a71ce07ae80a25b043ed836e30e0bb"

  url "https://www.fullbucket.de/music/dl/qyooo_#{version.dots_to_underscores}_mac.pkg"
  appcast "https://www.fullbucket.de/music/qyooo.html"
  name "the qyooo"
  desc "Complex modulation synthesizer"
  homepage "https://www.fullbucket.de/music/qyooo.html"

  pkg "qyooo_#{version.dots_to_underscores}_mac.pkg"

  uninstall pkgutil: [
    "com.fullbucket.audiounit.pkg.qyooo",
    "com.fullbucket.vst.pkg.qyooo",
  ]

  caveats do
    reboot
  end
end
