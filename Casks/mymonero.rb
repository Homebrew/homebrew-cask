cask "mymonero" do
  version "1.1.17"
  sha256 "ba0ea5d9c08747527582a2c2b0a3902db06c602372903c971e718eb4c79234ec"

  # github.com/mymonero/mymonero-app-js/ was verified as official when first introduced to the cask
  url "https://github.com/mymonero/mymonero-app-js/releases/download/v#{version}/MyMonero-#{version}.dmg"
  appcast "https://github.com/mymonero/mymonero-app-js/releases.atom"
  name "MyMonero"
  desc "Wallet for the Monero cryptocurrency"
  homepage "https://mymonero.com/"

  app "MyMonero.app"

  zap trash: [
    "~/Library/Application Support/MyMonero",
    "~/Library/Saved Application State/com.mymonero.mymonero-desktop.savedState",
    "~/Library/Preferences/com.mymonero.mymonero-desktop.plist",
    "~/Library/Logs/MyMonero",
  ]
end
