cask "presentation" do
  version "3.3.0"
  sha256 "ec168fe4ea3268573920792b70cc2faa76668e0ca11c180ed4068994fc88ff65"

  url "http://iihm.imag.fr/blanch/software/osx-presentation/releases/osx-presentation-#{version}.pkg"
  name "Présentation"
  desc "Tool for pdf slides"
  homepage "http://iihm.imag.fr/blanch/software/osx-presentation/"

  livecheck do
    url "http://iihm.imag.fr/blanch/software/osx-presentation/releases/version.txt"
    regex(/^(\d+(?:\.\d+)+)$/i)
  end

  pkg "osx-presentation-#{version}.pkg"

  uninstall pkgutil: "fr.imag.iihm.blanch.osx-presentation"

  zap trash: "~/Library/Caches/com.apple.python/Applications/Présentation.app"
end
