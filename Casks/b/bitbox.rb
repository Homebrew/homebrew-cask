cask "bitbox" do
  url_end = on_system_conditional macos: "macOS.dmg", linux: "x86_64.AppImage"

  version "4.51.4"

  on_macos do
    sha256 "b0acaacc07e25f0e6da6290133572c45c67c2267203863ceb98bddf70eb5ac6c"

    depends_on macos: :monterey

    app "BitBox.app"

    zap trash: [
      "~/Library/Preferences/ch.shiftcrypto.BitBoxApp.plist",
      "~/Library/Saved Application State/ch.shiftcrypto.wallet.savedState",
    ]
  end
  on_linux do
    sha256 "4a71cfeec7a42e95907dd08faad1032d6996364a10d77c3c06c9a6df4ebd3ba7"

    depends_on arch: :x86_64

    app_image "BitBox-#{version}-x86_64.AppImage", target: "BitBox.AppImage"
  end

  url "https://github.com/BitBoxSwiss/bitbox-wallet-app/releases/download/v#{version}/BitBox-#{version}-#{url_end}"
  name "BitBox"
  desc "Protect your coins with the latest Swiss made hardware wallet"
  homepage "https://bitbox.swiss/"

  livecheck do
    url "https://bitbox.swiss/download/"
    regex(/href=.*?BitBox[._-]v?(\d+(?:\.\d+)+)(?:[._-]macOS)?\.dmg/i)
  end
end
