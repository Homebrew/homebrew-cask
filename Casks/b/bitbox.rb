cask "bitbox" do
  version "4.48.8"
  sha256 "1b72b7eaec22aeeae0f6c0d650cf38fce0e1254214f1dbeb8677ad6e1b539309"

  url "https://github.com/BitBoxSwiss/bitbox-wallet-app/releases/download/v#{version}/BitBox-#{version}-macOS.dmg",
      verified: "github.com/BitBoxSwiss/bitbox-wallet-app/releases/download/"
  name "BitBox"
  desc "Protect your coins with the latest Swiss made hardware wallet"
  homepage "https://bitbox.swiss/"

  livecheck do
    url "https://bitbox.swiss/download/"
    regex(/href=.*?BitBox[._-]v?(\d+(?:\.\d+)+)(?:[._-]macOS)?\.dmg/i)
  end

  depends_on macos: ">= :monterey"

  app "BitBox.app"

  zap trash: [
    "~/Library/Preferences/ch.shiftcrypto.BitBoxApp.plist",
    "~/Library/Saved Application State/ch.shiftcrypto.wallet.savedState",
  ]
end
