cask "mymonero" do
  version "1.3.2"
  sha256 "77719a53fe8b5ab19d632ce512836a4caad0e01f9f08ca56fed03ae094264755"

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
