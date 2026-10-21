cask "crypto-native-app-ng" do
  arch arm: "arm64", intel: "x64"

  version "26.2.20745"
  sha256  arm:   "ac270c50e0568debaf55937712d73d368fc4e36eee83574fc2a8e8113f6ab9e6",
          intel: "30f6d254ef58f925dc47b0ed6e2479c9201d929bdfd6cc2c8252723b93b5d8bb"

  url "https://download.tescosw.cz/crypto/files/cryptong/Crypto-Native-App-NG-v#{version}-#{arch}-MUI.dmg"
  name "Crypto Native App NG"
  desc "Encrypts and signs data on your computer and communicates with browser extension"
  homepage "https://download.tescosw.cz/crypto/en/"

  livecheck do
    url "https://download.tescosw.cz/crypto/files/cryptong/"
    regex(/href=.*?Crypto-Native-App-NG[._-]v?(\d+(?:\.\d+)+)[._-]#{arch}[._-]MUI\.dmg/i)
  end

  depends_on macos: :monterey

  pkg "Installer Crypto Native App NG.pkg"

  uninstall pkgutil: [
              "cz.tescosw.extension.cryptong",
              "cz.tescosw.extension.cryptong.safari",
              "cz.tescosw.nativeapp.cryptong.installer",
              "cz.tescosw.nativeapp.cryptong.uninstaller",
            ],
            trash:   [
              "/Library/Application Support/Chromium/NativeMessagingHosts/cz.tescosw.nativeapp.crypto.json",
              "/Library/Application Support/Google/Chrome/External Extensions/pjohlogcennenjhkfclfgaganagadkkm.json",
              "/Library/Application Support/Microsoft/Edge/External Extensions/mhhmkoogppocgeaedlcikkhenhagbmnj.json",
              "/Library/Application Support/Mozilla/NativeMessagingHosts/cz.tescosw.nativeapp.crypto.json",
              "/Library/Google/Chrome/NativeMessagingHosts/cz.tescosw.nativeapp.crypto.json",
              "/Library/Microsoft/Edge/NativeMessagingHosts/cz.tescosw.nativeapp.crypto.json",
              "~/Library/Application Support/Chromium/NativeMessagingHosts/cz.tescosw.nativeapp.crypto.json",
              "~/Library/Application Support/Google/Chrome/External Extensions/pjohlogcennenjhkfclfgaganagadkkm.json",
              "~/Library/Application Support/Google/Chrome/NativeMessagingHosts/cz.tescosw.nativeapp.crypto.json",
              "~/Library/Application Support/Microsoft Edge/External Extensions/mhhmkoogppocgeaedlcikkhenhagbmnj.json",
              "~/Library/Application Support/Microsoft Edge/NativeMessagingHosts/cz.tescosw.nativeapp.crypto.json",
              "~/Library/Application Support/Mozilla/NativeMessagingHosts/cz.tescosw.nativeapp.crypto.json",
            ]

  zap trash: [
    "~/Library/Containers/cz.tescosw.nativeapp.cryptong",
    "~/Library/Group Containers/L9LZD3W636.group.cz.tescosw.cryptong",
  ]
end
