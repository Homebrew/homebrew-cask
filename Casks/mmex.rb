cask "mmex" do
  version "1.5.14"
  sha256 "5ba182cba4d1fa2e4fd08979c07495a049e404e6446579d2581274463a2ea517"

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
