cask "crypto-native-app-ng" do
  version "26.1.20433"
  sha256 "00664a9d0084a3e23a17e730c2737d5bea1bda0345fe4a488add83a039e34588"

  url "https://download.tescosw.cz/crypto/files/cryptong/Crypto-Native-App-NG-v#{version}-x64-MUI.dmg"
  name "Crypto Native App NG"
  desc "Encrypts and signs data on your computer and communicates with browser extension"
  homepage "https://download.tescosw.cz/crypto/en/"

  livecheck do
    url "https://download.tescosw.cz/crypto/files/cryptong/"
    regex(/href=.*?Crypto-Native-App-NG-v?(\d+(?:\.\d+)+)-x64-MUI\.dmg/i)
  end

  depends_on macos: ">= :sonoma"

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
