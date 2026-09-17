cask "bitbox" do
  url_end = on_system_conditional macos: "macOS.dmg", linux: "x86_64.AppImage"

  version "4.52.0"
  sha256 arm:          "fc3e13bf8aedf2df375a4d63a8b8af38651b70835be691928e6b796156c4809d",
         intel:        "fc3e13bf8aedf2df375a4d63a8b8af38651b70835be691928e6b796156c4809d",
         x86_64_linux: "2f963f03c76a9757601a487bf36549468efe5d513c350362fb437dee61005990"

  on_macos do
    depends_on macos: :monterey

    app "BitBox.app"

    zap trash: [
      "~/Library/Preferences/ch.shiftcrypto.BitBoxApp.plist",
      "~/Library/Saved Application State/ch.shiftcrypto.wallet.savedState",
    ]
  end
  on_linux do
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
