cask "lazarus" do
  version "2.2.2"
  sha256 "0efbf6cfcf4777f49c3eb91a8268224e7cee8e640b1d3be88907d7a7c894845d"

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
