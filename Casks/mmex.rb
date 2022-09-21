cask "mmex" do
  version "1.5.21"
  sha256 "3011ae583606fa0e90d36fed42f19d6a75abb4106a67f4330b3fe600eeb32b91"

  url "https://github.com/moneymanagerex/moneymanagerex/releases/download/v#{version}/mmex-#{version}-Darwin.dmg",
      verified: "github.com/moneymanagerex/moneymanagerex/"
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
