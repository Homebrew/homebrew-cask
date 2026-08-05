cask "bitbox" do
  url_end = on_system_conditional macos: "macOS.dmg", linux: "x86_64.AppImage"

  version "4.51.3"

  on_macos do
    sha256 "cbc6c336a20a91d01fe530a966a130e6c1452ac01269134917d0d1d207044f30"

    depends_on macos: :monterey

    app "BitBox.app"

    zap trash: [
      "~/Library/Preferences/ch.shiftcrypto.BitBoxApp.plist",
      "~/Library/Saved Application State/ch.shiftcrypto.wallet.savedState",
    ]
  end
  on_linux do
    sha256 "b336263fb66ece1b17f0a22e42f5e565f4bb788ce30575d546ef5435bd502e9a"

    depends_on arch: :x86_64

    app_image "BitBox-#{version}-x86_64.AppImage", target: "BitBox.AppImage"
  end

  url "https://github.com/BitBoxSwiss/bitbox-wallet-app/releases/download/v#{version}/BitBox-#{version}-#{url_end}",
      verified: "github.com/BitBoxSwiss/bitbox-wallet-app/releases/download/"
  name "BitBox"
  desc "Protect your coins with the latest Swiss made hardware wallet"
  homepage "https://bitbox.swiss/"

  livecheck do
    url "https://bitbox.swiss/download/"
    regex(/href=.*?BitBox[._-]v?(\d+(?:\.\d+)+)(?:[._-]macOS)?\.dmg/i)
  end
end
