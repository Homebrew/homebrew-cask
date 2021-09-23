cask "mmex" do
  version "1.5.7"
  sha256 "7831da3ff7f028011354a3a93c820e41050c79cece9214bc1f821f15a4a4b3fc"

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
