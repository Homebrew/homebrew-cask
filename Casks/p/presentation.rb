cask "presentation" do
  version "3.2.1"
  sha256 "05ff0391ab64ecd930b969d0b255c2431559d5a51a775a2be03484ddf7d24361"

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
