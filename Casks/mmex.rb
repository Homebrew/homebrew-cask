cask "mmex" do
  version "1.5.10"
  sha256 "c461b6d6ee8949b3ce5da2df47ecb30b9f57162b6286bad67e8cee7a6159aab5"

  url "https://downloads.sourceforge.net/moneymanagerex/mmex-#{version}-Darwin.dmg",
      verified: "downloads.sourceforge.net/moneymanagerex/"
  name "Money Manager Ex"
  desc "Money management application"
  homepage "https://www.moneymanagerex.org/"

  livecheck do
    url "https://sourceforge.net/projects/moneymanagerex/rss"
    strategy :page_match
    regex(/mmex[._-]?(\d+(?:\.\d+)+)[._-]?Darwin\.dmg/i)
  end

  app "MMEX.app"

  zap trash: [
    "~/Library/Application Support/MoneyManagerEx",
    "~/Library/Caches/com.yourcompany.MMEX",
    "~/Library/Preferences/com.yourcompany.MMEX.plist",
  ]
end
