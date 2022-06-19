cask "mmex" do
  version "1.5.15"
  sha256 "dcba1ec7373aa3acdc2d92147e4727ed5718d209f1d43bc095f4b8e29d14ce57"

  url "https://downloads.sourceforge.net/moneymanagerex/mmex-#{version}-Darwin.dmg",
      verified: "downloads.sourceforge.net/moneymanagerex/"
  name "Money Manager Ex"
  desc "Money management application"
  homepage "https://www.moneymanagerex.org/"

  livecheck do
    url :url
    regex(%r{url=.*?/mmex[._-]v?(\d+(?:\.\d+)+)[._-]?Darwin\.dmg}i)
  end

  app "MMEX.app"

  zap trash: [
    "~/Library/Application Support/MoneyManagerEx",
    "~/Library/Caches/com.yourcompany.MMEX",
    "~/Library/Preferences/com.yourcompany.MMEX.plist",
  ]
end
