cask "fpc-src-laz" do
  version "3.2.2-20210709,2.2.0"
  sha256 "c0ed6b9261679ba040cdf07f4f5d13d915184a4164b1addf5a81e19b0738e87a"

  url "https://downloads.sourceforge.net/lazarus/Lazarus%20macOS%20x86-64/Lazarus%20#{version.csv.second}/fpc-src-#{version.csv.first}-macosx.dmg",
      verified: "sourceforge.net/lazarus/"
  name "Pascal compiler source files for Lazarus"
  desc "Pascal compiler source files for Lazarus"
  homepage "https://www.lazarus-ide.org/"

  livecheck do
    url "https://sourceforge.net/projects/lazarus/rss?path=/Lazarus%20macOS%20x86-64"
    regex(%r{url=.*?/Lazarus(?:%20|[._-])v?(\d+(?:\.\d+)+)/fpc-src[._-]v?(\d+(?:[.-]\d+)+)[^"' >]+?\.(?:dmg|pkg)}i)
    strategy :sourceforge do |page, regex|
      page.scan(regex).map { |match| "#{match[1]},#{match[0]}" }
    end
  end

  pkg "fpcsrc-#{version.csv.first}.pkg"

  uninstall pkgutil: [
    "org.freepascal.fpc.source",
    "org.freepascal.pkg.fpcsrc-320-laz",
  ]
end
