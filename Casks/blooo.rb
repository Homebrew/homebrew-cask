cask "blooo" do
  version "2.1.6"
  sha256 "e795e71ac0d33f9c4dfa5d96a113ddc5376a88ddab598751cd625003578c5fbd"

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
