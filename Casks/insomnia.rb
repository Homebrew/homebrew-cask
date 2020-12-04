cask "insomnia" do
  version "2020.5.1"
  sha256 "63aae00b618e45e70546d0647566ea51481eea3c5018f2972470008ce5c6c8a9"

  # github.com/Kong/insomnia/ was verified as official when first introduced to the cask
  url "https://github.com/Kong/insomnia/releases/download/core%40#{version}/Insomnia.Core-#{version}.dmg"
  appcast "https://api.insomnia.rest/changelog.json?app=com.insomnia.app"
  name "Insomnia"
  desc "Cross-platform HTTP and GraphQL Client"
  homepage "https://insomnia.rest/"

  auto_updates true

  app "Insomnia.app"

  zap trash: [
    "~/Library/Application Support/Insomnia",
    "~/Library/Caches/com.insomnia.app",
    "~/Library/Caches/com.insomnia.app.ShipIt",
    "~/Library/Cookies/com.insomnia.app.binarycookies",
    "~/Library/Preferences/ByHost/com.insomnia.app.ShipIt.*.plist",
    "~/Library/Preferences/com.insomnia.app.helper.plist",
    "~/Library/Preferences/com.insomnia.app.plist",
    "~/Library/Saved Application State/com.insomnia.app.savedState",
  ]
end
