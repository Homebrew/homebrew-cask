cask "mmex" do
  version "1.5.16"
  sha256 "664be47534cafaacb75819279941e0839b28cf294b688e01e305c8199086d125"

  url "https://github.com/moneymanagerex/moneymanagerex/releases/download/v#{version}/mmex-#{version}-Darwin.dmg",
      verified: "github.com/moneymanagerex/moneymanagerex/releases/download"
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
