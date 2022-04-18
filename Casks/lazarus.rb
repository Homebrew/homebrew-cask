cask "lazarus" do
  version "2.2.0"
  sha256 "daeca48a253fbf059a22cc31a246503f027da4b468274f327ea5418aabd53b54"

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
end
