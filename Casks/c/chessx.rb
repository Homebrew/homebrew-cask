cask "chessx" do
  version "1.6.10"
  sha256 "525927ea622b1834694a5582370a5883cc7bc7dd50e449be96c8c8d553fc9870"

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

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on macos: ">= :monterey"

  app "ChessX.app"

  zap trash: [
    "~/.config/chessx",
    "~/Library/Application Support/chessx",
    "~/Library/Preferences/net.sourceforge.chessx.plist",
    "~/Library/Saved Application State/net.sourceforge.chessx.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
