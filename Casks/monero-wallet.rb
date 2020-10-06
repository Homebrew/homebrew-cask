cask "monero-wallet" do
  version "0.17.0.1"
  sha256 "1796d266e7bffed1803531b2aab18ff2162f3925d2d42fbe8c8c98bd687c1bcc"

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
