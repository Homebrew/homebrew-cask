cask "mmex" do
  version "1.9.2"
  sha256 "0d94e4df830f70b20f1a4cedb176d36716a5b0497ff98b370a9a490bfeb76f41"

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
