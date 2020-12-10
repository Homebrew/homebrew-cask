cask "monero-wallet" do
  version "0.17.1.6"
  sha256 "dd3e909c2b2d61f6158def93ec544897ea5cd4c22fa9a8a8398a6c511ba5ec47"

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
