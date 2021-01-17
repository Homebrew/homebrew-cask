cask "presentation" do
  version "2.3.0"
  sha256 "c186373817e2731eef670df3b9e923adfe0c29af894e2d1332f0f1a2ff3cceee"

  url "http://iihm.imag.fr/blanch/software/osx-presentation/releases/osx-presentation-#{version}.pkg"
  name "Présentation"
  homepage "http://iihm.imag.fr/blanch/software/osx-presentation/"

  livecheck do
    url :homepage
    strategy :page_match
    regex(%r{href=.*?/osx-presentation-(\d+(?:\.\d+)*)\.pkg}i)
  end

  pkg "osx-presentation-#{version}.pkg"

  uninstall pkgutil: "fr.imag.iihm.blanch.osx-presentation"
end
