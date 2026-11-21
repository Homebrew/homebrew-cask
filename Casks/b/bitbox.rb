cask "bitbox" do
  url_end = on_system_conditional macos: "macOS.dmg", linux: "x86_64.AppImage"

  version "4.53.0"
  sha256 arm:          "add5933b807fde91b6d7a8c24f9cc7f176e5e64d8b4826b55715c9a26156443b",
         intel:        "add5933b807fde91b6d7a8c24f9cc7f176e5e64d8b4826b55715c9a26156443b",
         x86_64_linux: "a2bebc2584eff6f2a0454950b51150bc41ce3526f3a5fd5cc9475518bca961c1"

  on_macos do
    depends_on macos: :monterey

    app "BitBox.app"

    zap trash: [
      "~/Library/Application Support/bitbox",
      "~/Library/Preferences/ch.shiftcrypto.BitBoxApp.plist",
      "~/Library/Preferences/ch.shiftcrypto.wallet.plist",
      "~/Library/Saved Application State/ch.shiftcrypto.wallet.savedState",
    ]
  end
  on_linux do
    depends_on arch: :x86_64

    app_image "BitBox-#{version}-x86_64.AppImage", target: "BitBox.AppImage"

    zap trash: [
          "~/.cache/Shift Crypto/BitBoxApp",
          "~/.config/bitbox",
          "~/.local/share/Shift Crypto/BitBoxApp",
        ],
        rmdir: [
          "~/.cache/Shift Crypto",
          "~/.local/share/Shift Crypto",
        ]
  end

  url "https://github.com/BitBoxSwiss/bitbox-wallet-app/releases/download/v#{version}/BitBox-#{version}-#{url_end}"
  name "BitBox"
  desc "Protect your coins with the latest Swiss made hardware wallet"
  homepage "https://bitbox.swiss/"

  livecheck do
    url :url
    strategy :github_latest
  end
end
