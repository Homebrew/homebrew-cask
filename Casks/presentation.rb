cask "presentation" do
  version "2.3.1"
  sha256 "1b25a24a898f7d51436846f3d59cb8095a8c28f30a1b4d924c3de085e0005f08"

  url "http://iihm.imag.fr/blanch/software/osx-presentation/releases/osx-presentation-#{version}.pkg"
  name "Présentation"
  desc "Tool for pdf slides"
  homepage "http://iihm.imag.fr/blanch/software/osx-presentation/"

  livecheck do
    url :homepage
    regex(%r{href=.*?/osx[._-]presentation[._-]v?(\d+(?:\.\d+)+)\.pkg}i)
  end

  pkg "osx-presentation-#{version}.pkg"

  uninstall pkgutil: "fr.imag.iihm.blanch.osx-presentation"
end
