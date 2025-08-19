cask "bitbox" do
  version "4.48.4"
  sha256 "bb2320fb3385ffdd10822c652d46bef9ec9db1973e3ee424ee7623d132cf1695"

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
