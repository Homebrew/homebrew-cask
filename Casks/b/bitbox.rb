cask "bitbox" do
  version "4.48.1"
  sha256 "2adb6f20da41c8d44647ac0597450e34817308ba23d6e3e8bc2b61a3f78ad498"

  url "https://github.com/BitBoxSwiss/bitbox-wallet-app/releases/download/v#{version}/BitBox-#{version}-macOS.dmg",
      verified: "github.com/BitBoxSwiss/bitbox-wallet-app/releases/download/"
  name "BitBox"
  desc "Protect your coins with the latest Swiss made hardware wallet"
  homepage "https://bitbox.swiss/"

  livecheck do
    url "https://bitbox.swiss/download/"
    regex(/href=.*?BitBox[._-]v?(\d+(?:\.\d+)+)(?:[._-]macOS)?\.dmg/i)
  end

  app "BitBox.app"

  zap trash: [
    "~/Library/Preferences/ch.shiftcrypto.BitBoxApp.plist",
    "~/Library/Saved Application State/ch.shiftcrypto.wallet.savedState",
  ]
end
