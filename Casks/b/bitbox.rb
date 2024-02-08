cask "bitbox" do
  version "4.40.0"
  sha256 "6a1e899e2976075b302c8f579d8cb72a0ca67f3a7e199cbb044df573493675a1"

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
