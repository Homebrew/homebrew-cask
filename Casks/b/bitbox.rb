cask "bitbox" do
  version "4.42.0"
  sha256 "9be7fdd5a91061f9cce5696d839fa76f88f38b284aabdd834c2dec7c9b2fb644"

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
