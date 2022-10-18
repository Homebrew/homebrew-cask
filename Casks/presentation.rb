cask "presentation" do
  version "3.1.1"
  sha256 "345e50bc3046515a777b13e586964139db3e9b6cad0bae3658c2aaf8e7d03b91"

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
end
