cask "mmex" do
  version "1.3.5"
  sha256 "ed27e39373c0e74ea856e2cb91b3b6f99fb745b8ec8b83424f7e406e8428fa7d"

  # downloads.sourceforge.net/moneymanagerex/ was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/moneymanagerex/v#{version}/mmex-#{version}-macos10.9-wx3.1.3.dmg"
  appcast "https://github.com/moneymanagerex/moneymanagerex/releases.atom"
  name "Money Manager Ex"
  desc "Money management application"
  homepage "https://www.moneymanagerex.org/"

  app "MMEX.app"

  zap trash: [
    "~/Library/Application Support/MoneyManagerEx",
    "~/Library/Caches/com.yourcompany.MMEX",
    "~/Library/Preferences/com.yourcompany.MMEX.plist",
  ]
end
