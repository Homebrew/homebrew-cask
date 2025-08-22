cask "firefox@developer-edition" do
  version "143.0b3"

  language "ca" do
    sha256 "61d0df865857ecf0d449b038c63737bdc4caa9ea40ea06059e7c69af649d351b"
    "ca"
  end
  language "cs" do
    sha256 "65435d9a633e1257442ed049dfe65734b148add88ad5696359133b6f118f33ca"
    "cs"
  end
  language "de" do
    sha256 "7e2a2325f28afa4baacd5fa126b464f83d96752e893d1efd22adcf29a8595625"
    "de"
  end
  language "en-CA" do
    sha256 "8c31251d9be6117b643e29a984d841acd2f12488cdb34ca1c807bd5d06bb01d4"
    "en-CA"
  end
  language "en-GB" do
    sha256 "6ffbb91a716c5f38d9edf580c4e5917ae929fe3cecd64cdb20ca442c03ab975b"
    "en-GB"
  end
  language "en", default: true do
    sha256 "f18906b6579559e2638be36572b7b0000bf5907b737bfb2a341e08e975f3b12f"
    "en-US"
  end
  language "es" do
    sha256 "4b7d6d604dbfdfd8d46f384ec62284793f0898f80909a411b26c7f574baca4ed"
    "es-ES"
  end
  language "fr" do
    sha256 "613207ac597e8ff3b505f186955048710210cc758a15dd0c8897061f8630b22d"
    "fr"
  end
  language "it" do
    sha256 "21ff07ab0488f3356e245ca4b15a83b9fecb8fd31a1facd6a716e870c11e0f70"
    "it"
  end
  language "ja" do
    sha256 "c50a85bee03db755c020dc260c42053709bbd9e93d0c6bd085d0ed005ed83716"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "1da602e6b5ba5278b38fda16fa0a72f2744d9e8a2364cd32b0200353e6ffff50"
    "ko"
  end
  language "nl" do
    sha256 "42c52f31a7f8cd3a2aecc60f8b11379024bf6bab7907e4309864a6eb2faf861f"
    "nl"
  end
  language "pt-BR" do
    sha256 "7b6c478798396bc152c5a28735e94d799389fca7b94be19879cb0ebf58d5e37c"
    "pt-BR"
  end
  language "ru" do
    sha256 "79969e9154ca15edb0d11f52acc9ab35163537bfb0198e60ccbe40ca4b1aa692"
    "ru"
  end
  language "uk" do
    sha256 "3e7cd02040e0543d569cd65d74f2b9ce5f3deff41e888eb5f538436350ea23c1"
    "uk"
  end
  language "zh-TW" do
    sha256 "b44925db194416fde5aeca663ca2266c876a06f9a8e2920e2e78172b224bf119"
    "zh-TW"
  end
  language "zh" do
    sha256 "0ad2c5858763f68ea7ab9b770a78263d3656513b54033a39667e7473286ed696"
    "zh-CN"
  end

  url "https://download-installer.cdn.mozilla.net/pub/devedition/releases/#{version}/mac/#{language}/Firefox%20#{version}.dmg",
      verified: "download-installer.cdn.mozilla.net/pub/devedition/releases/"
  name "Mozilla Firefox Developer Edition"
  desc "Web browser"
  homepage "https://www.mozilla.org/firefox/developer/"

  livecheck do
    url "https://product-details.mozilla.org/1.0/firefox_versions.json"
    strategy :json do |json|
      json["FIREFOX_DEVEDITION"]
    end
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Firefox Developer Edition.app"

  zap trash: [
        "/Library/Logs/DiagnosticReports/firefox_*",
        "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.firefox.sfl*",
        "~/Library/Application Support/CrashReporter/firefox_*",
        "~/Library/Application Support/Firefox",
        "~/Library/Caches/Firefox",
        "~/Library/Caches/Mozilla/updates/Applications/Firefox",
        "~/Library/Caches/org.mozilla.firefox",
        "~/Library/Preferences/org.mozilla.firefox.plist",
        "~/Library/Saved Application State/org.mozilla.firefox.savedState",
        "~/Library/WebKit/org.mozilla.firefox",
      ],
      rmdir: [
        "~/Library/Application Support/Mozilla", #  May also contain non-Firefox data
        "~/Library/Caches/Mozilla",
        "~/Library/Caches/Mozilla/updates",
        "~/Library/Caches/Mozilla/updates/Applications",
      ]
end
