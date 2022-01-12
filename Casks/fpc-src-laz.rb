cask "fpc-src-laz" do
  version "3.2.0-2,2.0.12"
  sha256 "8f85c873c3a224961a98fd24e97320a2134bbcc7f91c6d8153e53b36beb7fe74"

  url "https://downloads.sourceforge.net/lazarus/Lazarus%20macOS%20x86-64/Lazarus%20#{version.csv.second}/fpc-src-#{version.csv.first}-laz.pkg",
      verified: "sourceforge.net/lazarus/"
  name "Pascal compiler source files for Lazarus"
  desc "Pascal compiler source files for Lazarus"
  homepage "https://www.lazarus-ide.org/"

  livecheck do
    url "https://sourceforge.net/projects/lazarus/rss"
    strategy :page_match do |page|
      match = page.match(%r{Lazarus%20(\d+(?:.\d+)*)/fpc-src-(\d+(?:.\d+)*)-laz\.pkg}i)
      next if match.blank?

      "#{match[2]},#{match[1]}"
    end
  end

  pkg "fpc-src-#{version.before_comma}-laz.pkg"

  uninstall pkgutil: [
    "org.freepascal.fpc.source",
    "org.freepascal.pkg.fpcsrc-320-laz",
  ]
end
