cask "moneymanager" do
  version "1.8.1"
  sha256 "17ab3982cb5132b6b3a3458a3cde41d1e2487233cd4943854ab2a7756309d08c"

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
