cask "mymonero" do
  version "1.1.18"
  sha256 "be2f9f2452263f3084b82f94f39947994549fe98b03a29590d2604b3fabd990a"

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
