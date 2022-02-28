cask "mmex" do
  version "1.5.13"
  sha256 "7fe8d1940da19f35bbc8fe9693dc582826f11f30dea5fb69481d6a041619aea2"

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
