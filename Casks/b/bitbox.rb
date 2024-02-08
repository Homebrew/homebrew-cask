cask "bitbox" do
  version "4.41.0"
  sha256 "3439bbac6921d992fe78b780b7ae123d5d2b658903369df375974275bb7db5d6"

  url "https://github.com/digitalbitbox/bitbox-wallet-app/releases/download/v#{version}/BitBox-#{version}-macOS.zip",
      verified: "github.com/digitalbitbox/bitbox-wallet-app/releases/download/"
  name "BitBox"
  desc "Protect your coins with the latest Swiss made hardware wallet"
  homepage "https://bitbox.swiss/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "BitBox.app"

  zap trash: [
    "~/Library/Preferences/ch.shiftcrypto.BitBoxApp.plist",
    "~/Library/Saved Application State/ch.shiftcrypto.wallet.savedState",
  ]
end
