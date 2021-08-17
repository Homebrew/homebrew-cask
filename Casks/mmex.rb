cask "mmex" do
  version "1.5.5,2021-07-31"
  sha256 "53589e5cff0c962f9223b485e007fa395c6b70424e5fc50f424ebed0cc4a6878"

  url "https://downloads.sourceforge.net/moneymanagerex/mmex-#{version.before_comma}-Darwin-#{version.after_comma}.dmg",
      verified: "downloads.sourceforge.net/moneymanagerex/"
  name "Money Manager Ex"
  desc "Money management application"
  homepage "https://www.moneymanagerex.org/"

  livecheck do
    url "https://sourceforge.net/projects/moneymanagerex/rss"
    strategy :page_match do |page|
      match = page.match(%r{/mmex[._-](\d+(?:\.\d+)*)[._-]Darwin[._-](\d+(?:-\d+)*)\.dmg}i)
      "#{match[1]},#{match[2]}"
    end
  end

  app "MMEX.app"

  zap trash: [
    "~/Library/Application Support/MoneyManagerEx",
    "~/Library/Caches/com.yourcompany.MMEX",
    "~/Library/Preferences/com.yourcompany.MMEX.plist",
  ]
end
