cask "chessx" do
  version "1.6.6"
  sha256 "536dd977aeaba8be924a3aaac92a82fbba7ca0ede9de0735222a4bf0e8248012"

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
