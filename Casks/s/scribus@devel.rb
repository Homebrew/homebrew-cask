cask "scribus@devel" do
  arch arm: "-arm64"

  version "1.7.2"
  sha256 arm:   "7455cc0f83880e08b97565d595ca678a1e463c07251fa72fdb137a5f520629de",
         intel: "44d31603ceaa0344fb23143484d1e0724cd6635141b13782dc2b62a368cd00ec"

  on_arm do
    depends_on macos: ">= :big_sur"
  end
  on_intel do
    depends_on macos: ">= :monterey"
  end

  url "https://downloads.sourceforge.net/scribus/scribus-devel/#{version.csv.first}/scribus-#{version.csv.second || version.csv.first}#{arch}.dmg",
      verified: "sourceforge.net/scribus/"
  name "Scribus"
  desc "Free and open-source page layout program"
  homepage "https://www.scribus.net/"

  livecheck do
    url "https://sourceforge.net/projects/scribus/rss?path=/scribus-devel"
    regex %r{url=.*?/v?(\d+(?:\.\d+)+)/scribus[._-]v?(\d+(?:[._]\d+)+)(?:#{arch})?\.(?:dmg|pkg)}i
    strategy :sourceforge do |page, regex|
      match = page.match(regex)
      next if match.blank?

      next match[1] if match[1] == match[2]

      "#{match[1]},#{match[2]}"
    end
  end

  app "Scribus-#{version}.app"

  zap trash: [
    "~/Library/Application Support/Scribus",
    "~/Library/Preferences/net.scribus.plist",
    "~/Library/Preferences/Scribus",
    "~/Library/Saved Application State/net.scribus.savedState",
  ]
end
