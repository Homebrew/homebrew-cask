cask "mmex" do
  version "1.6.4"
  sha256 "51991878cd5bf2741743d499f15ed8fc1201d23f9dbe4a98e704ff66a710cf1f"

  url "https://github.com/moneymanagerex/moneymanagerex/releases/download/v#{version}/mmex-#{version}-Darwin.dmg",
    verified: "github.com/moneymanagerex/moneymanagerex"
  name "Money Manager Ex"
  desc "Easy to use, money management application built with wxWidgets"
  homepage "https://moneymanagerex.org"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "MMEX.app"

  zap trash: [
    "~/Library/Application Support/MoneyManagerEx",
    "~/Library/Caches/org.moneymanagerex.mmex",
    "~/Library/Preferences/org.moneymanagerex.mmex.plist",
    "~/Library/Saved Application State/org.moneymanagerex.mmex.savedState",
    "~/Library/WebKit/org.moneymanagerex.mmex",
  ]
end
