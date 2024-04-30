cask "mmex" do
  version "1.8.0"
  sha256 "d8e7e7ec61abf21dff7f1b2d11fdde4ad2ffddc34a01be139922e0a672d9b6f9"

  url "https://github.com/moneymanagerex/moneymanagerex/releases/download/v#{version}/mmex-#{version}-Darwin.dmg",
      verified: "github.com/moneymanagerex/moneymanagerex/"
  name "Money Manager Ex"
  desc "Money management application"
  homepage "https://moneymanagerex.org/"

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
