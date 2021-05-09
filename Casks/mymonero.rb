cask "mymonero" do
  version "1.1.21"
  sha256 "c55601da0fcba72e512d11b8c2b3ebd6917037f8767b471790f154e9bf495f19"

  url "https://github.com/mymonero/mymonero-app-js/releases/download/v#{version}/MyMonero-#{version}.dmg",
      verified: "github.com/mymonero/mymonero-app-js/"
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
