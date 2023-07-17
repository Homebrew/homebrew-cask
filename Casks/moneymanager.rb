cask "moneymanager" do
  version "1.8.0"
  sha256 "02df15a6a4e3ddc25cc02b74b09215635e303d1fedf01d1256ca0303735a7d7c"

  url "https://download.realbyteapps.com/MoneyManager-#{version}.dmg"
  name "MoneyManager"
  desc "Finance manager"
  homepage "https://realbyteapps.com/"

  livecheck do
    url "https://download.realbyteapps.com/latest-mac.yml"
    strategy :electron_builder
  end

  app "MoneyManager.app"

  zap trash: [
    "~/Library/Application Support/MoneyManager",
    "~/Library/Preferences/com.realbyteapps.moneymanagerpc.plist",
  ]
end
