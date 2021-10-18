cask "mymonero" do
  version "1.2.0"
  sha256 "988e846323232020aed886f0050de78dcbcc2855107e11c168a3a24d56438081"

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
