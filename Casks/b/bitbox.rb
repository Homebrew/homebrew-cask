cask "bitbox" do
  version "4.43.0"
  sha256 "6c35993d51a905fd75c8c331693289630e6323efa99ac952d37da6d638b73146"

  url "https://github.com/BitBoxSwiss/bitbox-wallet-app/releases/download/v#{version}/BitBox-#{version}-macOS.dmg",
      verified: "github.com/BitBoxSwiss/bitbox-wallet-app/releases/download/"
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

  caveats do
    requires_rosetta
  end
end
