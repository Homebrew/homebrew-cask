cask "mmex" do
  version "1.3.6"
  sha256 "90aa96bf55dde10f19b8dd9b9cc1645ac088c526843848d6202c97109c4714d2"

  url "https://downloads.sourceforge.net/moneymanagerex/v#{version}/mmex-#{version}-macos10.9-wx3.1.3.dmg",
      verified: "downloads.sourceforge.net/moneymanagerex/"
  appcast "https://github.com/moneymanagerex/moneymanagerex/releases.atom"
  name "Money Manager Ex"
  desc "Money management application"
  homepage "https://www.moneymanagerex.org/"

  app "MMEX.app"

  zap trash: [
    "~/Library/Application Support/MoneyManagerEx",
    "~/Library/Caches/com.yourcompany.MMEX",
    "~/Library/Preferences/com.yourcompany.MMEX.plist",
  ]
end
