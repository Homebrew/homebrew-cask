cask "mymonero" do
  version "1.2.7"
  sha256 "ce78ddffcabd0914ea0bf841a1e18c125f64a553cb9fc9266fa634fe21fa862a"

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
