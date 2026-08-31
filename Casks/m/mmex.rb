cask "mmex" do
  version "1.9.3"
  sha256 "8ee9338c435ea7e23efb7fd46daabd8723e69445a7ebdf934ee3d61dcaf1aed5"

  url "https://github.com/moneymanagerex/moneymanagerex/releases/download/v#{version}/mmex-#{version}-Darwin.dmg"
  name "Money Manager Ex"
  desc "Money management application"
  homepage "https://moneymanagerex.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "mmex.app"

  zap trash: [
    "~/Library/Application Support/MoneyManagerEx",
    "~/Library/Caches/org.moneymanagerex.mmex",
    "~/Library/Preferences/org.moneymanagerex.mmex.plist",
    "~/Library/Saved Application State/org.moneymanagerex.mmex.savedState",
    "~/Library/WebKit/org.moneymanagerex.mmex",
  ]
end
