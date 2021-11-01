cask "mmex" do
  version "1.5.8"
  sha256 "644df4b2512afd91b25859828b1af19dc4cfa1bed58bab9595e1dd3688b558f3"

  url "https://downloads.sourceforge.net/moneymanagerex/mmex-#{version}-Darwin.dmg",
      verified: "downloads.sourceforge.net/moneymanagerex/"
  name "Money Manager Ex"
  desc "Money management application"
  homepage "https://www.moneymanagerex.org/"

  livecheck do
    url "https://sourceforge.net/projects/moneymanagerex/rss"
    strategy :page_match
    regex(/mmex[._-]?(\d+(?:\.\d+)*)[._-]?Darwin\.dmg/i)
  end

  app "MMEX.app"

  zap trash: [
    "~/Library/Application Support/MoneyManagerEx",
    "~/Library/Caches/com.yourcompany.MMEX",
    "~/Library/Preferences/com.yourcompany.MMEX.plist",
  ]
end
