cask "presentation" do
  version "3.4.0"
  sha256 "6fb258e6eec0407f1fb1d99064a53418da2a9865f74f2298c876694e76fe4209"

  url "https://iihm.imag.fr/blanch/software/osx-presentation/releases/osx-presentation-#{version}.pkg"
  name "Présentation"
  desc "Tool for pdf slides"
  homepage "https://iihm.imag.fr/blanch/software/osx-presentation/"

  livecheck do
    url "https://iihm.imag.fr/blanch/software/osx-presentation/releases/version.txt"
    regex(/^(\d+(?:\.\d+)+)$/i)
  end

  depends_on :macos

  pkg "osx-presentation-#{version}.pkg"

  uninstall pkgutil: "fr.imag.iihm.blanch.osx-presentation"

  zap trash: "~/Library/Caches/com.apple.python/Applications/Présentation.app"
end
