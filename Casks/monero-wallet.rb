cask "monero-wallet" do
  version "0.17.1.7"
  sha256 "1664860f4fae066695a74c04b55caa6421a8a10df5bbeb554c2e6dea89336710"

  url "https://downloads.getmonero.org/gui/monero-gui-mac-x64-v#{version}.dmg"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://downloads.getmonero.org/gui/mac64"
  name "Monero Wallet"
  desc "Untraceable cryptocurrency wallet"
  homepage "https://getmonero.org/"

  app "monero-wallet-gui.app"

  zap trash: [
    "~/.bitmonero",
    "~/Monero",
    "~/Library/Preferences/org.getmonero.monero-core.plist",
    "~/Library/Saved Application State/com.yourcompany.monero-wallet-gui.savedState",
  ]
end
