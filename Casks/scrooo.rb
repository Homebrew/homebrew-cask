cask "scrooo" do
  version "1.3.0"
  sha256 "dbd99b4a8f6f7d9701d01f18d4e29bc5597a1686de6a82070b5f68162d25e3ec"

  url "https://www.fullbucket.de/music/dl/scrooo_#{version.dots_to_underscores}_mac.pkg"
  appcast "https://www.fullbucket.de/music/scrooo.html"
  name "the scrooo"
  desc "Spectral formant synthesizer"
  homepage "https://www.fullbucket.de/music/scrooo.html"

  pkg "scrooo_#{version.dots_to_underscores}_mac.pkg"

  uninstall pkgutil: [
    "com.fullbucket.audiounit.pkg.Scrooo",
    "com.fullbucket.vst.pkg.Scrooo",
  ]

  caveats do
    reboot
  end
end
