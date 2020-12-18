cask "insomnia" do
  version "2020.5.2"
  sha256 "300845e30bc88fc2b9ed00cceb4b0f33a50b75bdd4247c41676aabe89e4588d2"

  url "https://github.com/Kong/insomnia/releases/download/core%40#{version}/Insomnia.Core-#{version}.dmg",
      verified: "github.com/Kong/insomnia/"
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
