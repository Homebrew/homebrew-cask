cask "kern" do
  version "1.1.5"
  sha256 "3b0420f5673227f20a16973208a434ab7c6faa7ec26161dc1c7d6f36dcc86ad7"

  url "https://www.fullbucket.de/music/dl/kern_#{version.dots_to_underscores}_mac.pkg"
  name "Kern"
  desc "Performance synthesizer"
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
  end
end
