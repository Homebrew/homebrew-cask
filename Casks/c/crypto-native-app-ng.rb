cask "crypto-native-app-ng" do
  version "26.1.20490"
  sha256 "f9aa8ca1431776e9e91c3bfa3fee4a54dcc43082df59705f22945856fa010939"

  url "https://download.tescosw.cz/crypto/files/cryptong/Crypto-Native-App-NG-v#{version}-x64-MUI.dmg"
  name "Crypto Native App NG"
  desc "Encrypts and signs data on your computer and communicates with browser extension"
  homepage "https://download.tescosw.cz/crypto/en/"

  # The JSON file has a UTF-8 BOM and incorrect content-type, so we use
  # page_match with manual JSON parsing instead of the json strategy.
  livecheck do
    url "https://download.tescosw.cz/crypto/files/cryptong_updates.json"
    strategy :page_match do |page|
      json = Homebrew::Livecheck::Strategy::Json.parse_json(page.delete_prefix("\xEF\xBB\xBF"))
      json.select { |item| item["Platform"] == "Darwin" }.map { |item| item["Version"] }
    end
  end

  depends_on macos: ">= :monterey"

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
