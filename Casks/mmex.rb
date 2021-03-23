cask "mmex" do
  version "1.3.6"
  sha256 "90aa96bf55dde10f19b8dd9b9cc1645ac088c526843848d6202c97109c4714d2"

  url "https://downloads.sourceforge.net/moneymanagerex/v#{version}/mmex%20v#{version}-macOS-fix.dmg",
      verified: "downloads.sourceforge.net/moneymanagerex/"
  name "Money Manager Ex"
  desc "Money management application"
  homepage "https://www.moneymanagerex.org/"

  livecheck do
    url "https://github.com/moneymanagerex/moneymanagerex"
    strategy :git
    regex(/^v?(\d+(?:\.\d+)*)$/)
  end

  app "MMEX.app"

  zap trash: [
    "~/Library/Application Support/MoneyManagerEx",
    "~/Library/Caches/com.yourcompany.MMEX",
    "~/Library/Preferences/com.yourcompany.MMEX.plist",
  ]
end
