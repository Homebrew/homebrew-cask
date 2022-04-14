cask "presentation" do
  version "3.0.0"
  sha256 "a5aa9d60746eefbe94667ea23dab450e3c604d0033578bb8b746494e86ef78bc"

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
