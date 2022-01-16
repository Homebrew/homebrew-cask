cask "fpc-laz" do
  version "3.2.0,2.0.12"
  sha256 "77a55f4ab985124bb550e6fa80dfbb2c3ee449c41261325f2623e01a6afd13ad"

  url "https://downloads.sourceforge.net/lazarus/Lazarus%20macOS%20x86-64/Lazarus%20#{version.csv.second}/fpc-#{version.csv.first}.intel-macosx.dmg",
      verified: "sourceforge.net/lazarus/"
  name "Pascal compiler for Lazarus"
  desc "Pascal compiler for Lazarus"
  homepage "https://www.lazarus-ide.org/"

  livecheck do
    url "https://sourceforge.net/projects/lazarus/rss"
    strategy :page_match do |page|
      match = page.match(%r{Lazarus%20(\d+(?:.\d+)*)/fpc-(\d+(?:.\d+)*)\.intel-macosx\.dmg}i)
      next if match.blank?

      "#{match[2]},#{match[1]}"
    end
  end

  conflicts_with formula: "fpc"

  pkg "fpc-#{version.csv.first}-intel-macosx.pkg"

  uninstall pkgutil: [
    "org.freepascal.freePascalCompiler320.fpcinst386",
    "org.freepascal.fpc",
  ]
end
