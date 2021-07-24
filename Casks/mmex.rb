cask "mmex" do
  version "1.5.4,2021-07-18"
  sha256 "66af898086ce6a89dfc03961ffadfa8309c8f3563600216362523a4c04a6a047"

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
