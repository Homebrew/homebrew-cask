cask "fpcsrc" do
  version "3.2.0-2,2.0.10"
  sha256 "8f85c873c3a224961a98fd24e97320a2134bbcc7f91c6d8153e53b36beb7fe74"

  url "https://downloads.sourceforge.net/lazarus/Lazarus%20macOS%20x86-64/Lazarus%20#{version.after_comma}/fpc-src-#{version.before_comma}-laz.pkg",
      verified: "sourceforge.net/lazarus/"
  appcast "https://sourceforge.net/projects/lazarus/rss"
  name "Free Pascal Compiler Source"
  homepage "https://www.freepascal.org/"

  pkg "fpc-src-#{version.before_comma}-laz.pkg"

  uninstall pkgutil: "org.freepascal.fpc.source"
end
