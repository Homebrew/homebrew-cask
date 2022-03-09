cask "mymonero" do
  version "1.2.5"
  sha256 "81ac68169468d4df826cfcae1a23d44010b5803a29bedc50ad52421bca0b4fef"

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
