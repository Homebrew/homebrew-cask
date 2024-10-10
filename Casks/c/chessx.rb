cask "chessx" do
  version "1.6.4a,1.6.4"
  sha256 "a452933f0862ecf7df29d3f5018ef0ac554de95eefd3c1114d7984a85c66b324"

  url "https://downloads.sourceforge.net/chessx/chessx/#{version.csv.second || version.csv.first}/chessx-#{version.csv.first}.dmg",
      verified: "downloads.sourceforge.net/chessx/"
  name "ChessX"
  desc "Chess database"
  homepage "https://chessx.sourceforge.io/"

  livecheck do
    url "https://sourceforge.net/projects/chessx/rss?path=/chessx"
    regex(%r{url=.*?/v?(\d+(?:\.\d+)+)/chessx[._-]v?(\d+(?:\.\d+)+[a-z]?)\.dmg}i)
    strategy :page_match do |page, regex|
      match = page.match(regex)
      next if match.blank?

      (match[1] == match[2]) ? match[2] : "#{match[2]},#{match[1]}"
    end
  end

  pkg "chessx-installer.mpkg"

  uninstall pkgutil: "net.sourceforge.chessx"

  zap trash: [
    "~/.config/chessx",
    "~/Library/Application Support/chessx",
    "~/Library/Preferences/net.sourceforge.chessx.plist",
    "~/Library/Saved Application State/net.sourceforge.chessx.savedState",
  ]
end
