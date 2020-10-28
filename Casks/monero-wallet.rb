cask "monero-wallet" do
  version "0.17.1.1"
  sha256 "ebaecd3b4072c1ef22009dd69290208b5c83b9b597de1a1116bc05564a08a916"

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
