cask "moneymanager" do
  version "1.8.8"
  sha256 "ff30aa729e1d64a5271f4e232b1f517cafe05470dd11d08b7db29af0bd6946af"

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
