cask "lazarus" do
  version "2.2.6"
  sha256 "4b20da8d1771749ae7059f1e1e369baaae7d69134184a5deb23a6263c7984355"

  url "https://downloads.sourceforge.net/lazarus/Lazarus%20macOS%20x86-64/Lazarus%20#{version}/Lazarus-#{version}-0-x86_64-macosx.pkg",
      verified: "sourceforge.net/lazarus/"
  name "Lazarus"
  desc "IDE for rapid application development"
  homepage "https://www.lazarus-ide.org/"

  livecheck do
    url :homepage
    regex(%r{href=.*?macOS%20x86-64/Lazarus%20v?(\d+(?:\.\d+)+)/}i)
  end

  depends_on cask: "fpc-laz"
  depends_on cask: "fpc-src-laz"

  pkg "Lazarus-#{version}-0-x86_64-macosx.pkg"

  uninstall pkgutil: [
              "org.freepascal.pkg.fpcsrc-320-laz",
              "org.lazarus-ide.pkg.LazarusIDE",
            ],
            delete:  "/Applications/Lazarus.app"

  zap trash: "~/.lazarus"
end
