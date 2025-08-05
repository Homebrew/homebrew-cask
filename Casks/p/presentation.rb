cask "presentation" do
  version "3.3.1"
  sha256 "09584b4aa5b8f5afc9f498287211fee66c0a601e3a47066e128ab9e26c44e23a"

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
