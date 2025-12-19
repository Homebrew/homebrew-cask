cask "firefox@developer-edition" do
  version "147.0b6"

  language "ca" do
    sha256 "42ae4d66d471b590ce1a46e07f562f9d23b38e94d4e0bbf5c4894c2b927e308f"
    "ca"
  end
  language "cs" do
    sha256 "0e36e800b0136819808ef0d8bad80b2b4e0f65e35efcd9201fd40a645d65a3ec"
    "cs"
  end
  language "de" do
    sha256 "69758950b53df62707c35beb9d1786360ac8415690da0bbf80d1768092070abd"
    "de"
  end
  language "en-CA" do
    sha256 "07d41585911587324071d3d91ba6d43b4471a71329b4a55af81368869183a324"
    "en-CA"
  end
  language "en-GB" do
    sha256 "754817ba5b6742e2ffe5bb83e8475b952367c133fa6caa319f69091ef07386b1"
    "en-GB"
  end
  language "en", default: true do
    sha256 "39d0e7918de2c07f94a1d614abb87f47b4a1df0c12fb026e26e30ea967524286"
    "en-US"
  end
  language "es" do
    sha256 "f8c91138ab98f1a0ce187697aab90dd41d6453535ba0ec1d8f0b999b2c77c7a0"
    "es-ES"
  end
  language "fr" do
    sha256 "e915dcb7f52db75b2c400fe6e615c19da84ba55332fa93dcf02555b7da800a82"
    "fr"
  end
  language "it" do
    sha256 "5d01d68038d0596782c6e49fed609f1bee3fc91ad17308e6a6ec525151ed1fc5"
    "it"
  end
  language "ja" do
    sha256 "66a8444c70601cc424f47b9609b98f36daa013544a68ee761c772b1018ce0478"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "4e0205efe2da05b2491bc81448c9f4cab1321fc8bd793d4ec725c972541efa97"
    "ko"
  end
  language "nl" do
    sha256 "4a7c621c2a2b6ff878459289b1b2de6cec1420f2dc89df78db8bebd198468b60"
    "nl"
  end
  language "pt-BR" do
    sha256 "f29796b1630ecd3449f95ef4ab6b7490e365a47a022dc292b203bb3e5f374372"
    "pt-BR"
  end
  language "ru" do
    sha256 "596d6cd8c84e81efa0deb1d310b402bb1eb15d37614be4b5f767cda4777aba51"
    "ru"
  end
  language "uk" do
    sha256 "472d44f6dd84534df46465f91a3948b2964946839be358b797a9d0f21fd4878b"
    "uk"
  end
  language "zh-TW" do
    sha256 "8f80da8ecf329846d47b8db672d50eb482a1ef29b29705ccfe2c492e66295fb6"
    "zh-TW"
  end
  language "zh" do
    sha256 "ad80c6328c618ff9797414d44070f5a4164e767cf40d92a7ec35e76ef77993ed"
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
