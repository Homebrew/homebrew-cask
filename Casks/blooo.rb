cask "blooo" do
  version "2.1.5"
  sha256 "4cccc39bda99f85da00567b151f4090ce46b78a2366428110f2464fc643fd316"

  url "https://www.fullbucket.de/music/dl/blooo_#{version.dots_to_underscores}_mac.pkg"
  appcast "https://www.fullbucket.de/music/blooo.html"
  name "the blooo"
  desc "Polyphonic synthesizer"
  homepage "https://www.fullbucket.de/music/blooo.html"

  pkg "blooo_#{version.dots_to_underscores}_mac.pkg"

  uninstall pkgutil: [
    "com.fullbucket.audiounit.pkg.Blooo",
    "com.fullbucket.vst.pkg.Blooo",
  ]

  caveats do
    reboot
  end
end
