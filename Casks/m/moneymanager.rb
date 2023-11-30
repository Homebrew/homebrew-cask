cask "moneymanager" do
  version "1.8.5"
  sha256 "96eb89129b8b26ba11a377630008c15d5b9c5ffd1113260f3973b3644df8657e"

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
