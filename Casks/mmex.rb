cask "mmex" do
  version "1.5.1,2021.04.24"
  sha256 "36dda3d0177dddc71fd3ed29fc43a64783f2e2d2637dc473ebfc2f89d4351a1d"

  url "https://downloads.sourceforge.net/moneymanagerex/mmex%20v#{version.before_comma}-macOS.#{version.after_comma}.dmg",
      verified: "downloads.sourceforge.net/moneymanagerex/"
  name "Money Manager Ex"
  desc "Money management application"
  homepage "https://www.moneymanagerex.org/"

  livecheck do
    url "https://sourceforge.net/projects/moneymanagerex/rss"
    strategy :page_match do |page|
      match = page.match(%r{/mmex\s*v?(\d+(?:\.\d+)*)[._-]macOS[._-](\d+(?:\.\d+)*)\.dmg}i)
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
