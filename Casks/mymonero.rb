cask "mymonero" do
  version "1.2.1"
  sha256 "837c01ff997120d6e3abe53bc5f2b1c9364674763826285ca2bd403d148aabae"

  url "https://github.com/mymonero/mymonero-app-js/releases/download/v#{version}/MyMonero-#{version}.dmg",
      verified: "github.com/mymonero/mymonero-app-js/"
  name "MyMonero"
  desc "Wallet for the Monero cryptocurrency"
  homepage "https://mymonero.com/"

  app "MyMonero.app"

  zap trash: [
    "~/Library/Application Support/MyMonero",
    "~/Library/Logs/MyMonero",
    "~/Library/Preferences/com.mymonero.mymonero-desktop.plist",
    "~/Library/Saved Application State/com.mymonero.mymonero-desktop.savedState",
  ]
end
