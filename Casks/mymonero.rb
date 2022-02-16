cask "mymonero" do
  version "1.2.4"
  sha256 "805dc1b709fd3d0919da1404ee69b37e1d64f8ebf2342a817283a194ffa9c4eb"

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
