cask "firefox" do
  version "80.0.1"

  language "cs" do
    sha256 "92bb627c954edeadebd151cf59909b283bff928942a72a003184b4263068a693"
    "cs"
  end
  language "de" do
    sha256 "ec340d9de59741eab4a9367b0305e1042f79bf0e44bc403ff32b480f02d56dab"
    "de"
  end
  language "en-GB" do
    sha256 "1e435c46000cf10c0db3930ad55a0b4aa75031224ec6a7e6e9826a5650447d29"
    "en-GB"
  end
  language "en", default: true do
    sha256 "282cbb2ccfc93608f6668fd6fcf7d30848919798776d66c5b1f2bfd5eb9c6fd0"
    "en-US"
  end
  language "eo" do
    sha256 "577113e67415437f5b1ce19b6f4f31a2c709bb98b61107d5ff4565330d250769"
    "eo"
  end
  language "es-AR" do
    sha256 "68f75d3dbf0ee57bc62c6e5443e5da07be441f044817b79de687017a543907c9"
    "es-AR"
  end
  language "es-CL" do
    sha256 "66603153b7631c19673e9d144397ff106af42bfc5a56352fb16e70a3b67bf704"
    "es-CL"
  end
  language "es-ES" do
    sha256 "63807ec4fa60553bdeef365b23b28839ee8aafd0c079363d91eda9c6ad8369a5"
    "es-ES"
  end
  language "fi" do
    sha256 "fb63b82f6feeef6342e7ac3a2b2ffc9b64c552736194fe757530f149f5aa5e4f"
    "fi"
  end
  language "fr" do
    sha256 "f2c2ba9b0bd61c65a5231a74df36ebf29d906693aa937abe58932eae724c90a3"
    "fr"
  end
  language "gl" do
    sha256 "0fc8e273a8869c86ec18e19da1120283ffabbf071440a7f81f1f0dcf71012023"
    "gl"
  end
  language "in" do
    sha256 "6de5b88dc1a4276d0486b63792e2021e6850364a4cd9ea537b8cbac855182760"
    "hi-IN"
  end
  language "it" do
    sha256 "e6c18a01ac9e975672729b7e0fd687b08c5908336efc287b3fa2372800739685"
    "it"
  end
  language "ja" do
    sha256 "42bef55483b456b4ec4fff0e5173de0eb158c816b371ca0d8fe60c7194d611df"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "ec26076d975c8d22637f65f1c92d66cae17993a72020c45c5913c4871b7ccc51"
    "ko"
  end
  language "nl" do
    sha256 "9937873f8842f8b0db1d67115c2f6a7417f2e7a09c8c657e3169ddb5bfde163c"
    "nl"
  end
  language "pl" do
    sha256 "7eeda259368a24f3e654bfd732547626aaea456e11a9e445916198a24c374223"
    "pl"
  end
  language "pt-BR" do
    sha256 "d1ae836ad921ed7f59f714dc9a8aec81833b35b7d42c42789ff436db42b4a924"
    "pt-BR"
  end
  language "pt" do
    sha256 "b049b3c4480cb1d0f6b7817cb5803a70b938685a17701da394df11887331dc7e"
    "pt-PT"
  end
  language "ru" do
    sha256 "a028e2a1947ee7bb10096fd04d1278c3555c5a72bc913534e3bdb791c5eeea5b"
    "ru"
  end
  language "tr" do
    sha256 "696c4aa7f82a4a30b37c863e96d87c0a98b97a274b68a956895fe3240e9f0805"
    "tr"
  end
  language "uk" do
    sha256 "536915c1589e0624095337fb53f70a1acef8d06ed16c56d4b0de7ffba50eeab9"
    "uk"
  end
  language "zh-TW" do
    sha256 "814f8501bf5df2bf9bc7a5b604ff7916d18d8007ddf69c295fd32608c216fa4d"
    "zh-TW"
  end
  language "zh" do
    sha256 "b6d46a8d83ce3b590a36fe7d7250a51ef4670e011d037e6b1df78b9acf53227e"
    "zh-CN"
  end

  # download-installer.cdn.mozilla.net/pub/firefox/releases/ was verified as official when first introduced to the cask
  url "https://download-installer.cdn.mozilla.net/pub/firefox/releases/#{version}/mac/#{language}/Firefox%20#{version}.dmg"
  appcast "https://www.macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://download.mozilla.org/%3Fproduct=firefox-latest-ssl%26os=osx"
  name "Mozilla Firefox"
  desc "Cross-platform web browser"
  homepage "https://www.mozilla.org/firefox/"

  auto_updates true
  conflicts_with cask: [
    "firefox-beta",
    "firefox-esr",
  ]
  depends_on macos: ">= :sierra"

  app "Firefox.app"

  zap trash: [
    "/Library/Logs/DiagnosticReports/firefox_*",
    "~/Library/Application Support/Firefox",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.firefox.sfl*",
    "~/Library/Caches/Firefox",
    "~/Library/Caches/Mozilla/updates/Applications/Firefox",
    "~/Library/Preferences/org.mozilla.firefox.plist",
  ],
      rmdir: [
        "~/Library/Application Support/Mozilla", #  May also contain non-Firefox data
        "~/Library/Caches/Mozilla/updates/Applications",
        "~/Library/Caches/Mozilla/updates",
        "~/Library/Caches/Mozilla",
      ]
end
