cask "moneymanager" do
  version "1.5.6"
  sha256 "6fc3b4d8a8057426348adfafbcf164b3cba6ce4896b535310efe84cbec379a61"

  url "https://download.realbyteapps.com/MoneyManager-#{version}.dmg"
  name "MoneyManager"
  desc "Easy Money Manager Mac Version"
  homepage "https://realbyteapps.com/"

  livecheck do
    url "https://download.realbyteapps.com/mac.html"
    strategy :page_match
    regex(%r{href =.*?/MoneyManager-(\d+(?:\.\d+)*)\.dmg}i)
  end

  app "MoneyManager.app"

  zap trash: [
    "~/Library/Application Support/MoneyManager",
    "~/Library/Preferences/com.realbyteapps.moneymanagerpc.plist",
  ]
end
