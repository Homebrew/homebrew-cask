cask "presentation" do
  version "2.3.0"
  sha256 "c186373817e2731eef670df3b9e923adfe0c29af894e2d1332f0f1a2ff3cceee"

  url "http://iihm.imag.fr/blanch/software/osx-presentation/releases/osx-presentation-#{version}.pkg"
  appcast "http://iihm.imag.fr/blanch/software/osx-presentation/"
  name "Présentation"
  homepage "http://iihm.imag.fr/blanch/software/osx-presentation/"

  pkg "osx-presentation-#{version}.pkg"

  uninstall pkgutil: "fr.imag.iihm.blanch.osx-presentation"
end
