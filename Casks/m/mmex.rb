cask "mmex" do
  version "1.7.0"
  sha256 "84b8dc7e93cfeb216bf956ee6328e28ef4efefb2dec46a8b99ceb64b1c2cff05"

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
