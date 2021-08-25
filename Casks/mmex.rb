cask "mmex" do
  version "1.5.6"
  sha256 "fde4e88adc6f56effd9f547ab4edc3566604c7f3c0d2f7babe88ad382f8c6d06"

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
