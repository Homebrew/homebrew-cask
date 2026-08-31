cask "mmex" do
  version "1.9.4"
  sha256 "f5eb148c931025e1e49ee3e5f82c24d9157930b2bab0c237e0e37ac5fcd5c965"

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
