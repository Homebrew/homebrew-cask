cask "monero-wallet" do
  version "0.17.1.4"
  sha256 "4e319a9dfb5e1caa42b52f6503480af3b44403f3bf4691da523880c6a6ec38a9"

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
