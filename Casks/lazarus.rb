cask "lazarus" do
  version "2.0.12"
  sha256 "2411f014a9d0a259346f5d51ee55e593ef21bd4877dc6ecc9f53c9b1f82d8b56"

  url "https://downloads.sourceforge.net/lazarus/Lazarus%20macOS%20x86-64/Lazarus%20#{version}/Lazarus-#{version}-x86_64-macosx.pkg",
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

  pkg "Lazarus-#{version}-x86_64-macosx.pkg"

  uninstall pkgutil: [
    "org.freepascal.pkg.fpcsrc-320-laz",
    "org.lazarus-ide.pkg.LazarusIDE",
  ],
            delete:  "/Applications/Lazarus.app"
end
