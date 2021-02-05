cask "firefox" do
  version "85.0.1"

  language "cs" do
    sha256 "392e63a133d66ba09a97d013196b7764d4a40b8b20f3eb7eff015a4829c98d73"
    "cs"
  end
  language "de" do
    sha256 "632ad4ec7cd433b66f98c182ec60fd291b234c8615d2ec78dc36050fb7fe6931"
    "de"
  end
  language "en-CA" do
    sha256 "6da3a7edb6305e17f346cf2ac9d8ddf5ec9889a6737a9bad2eb9f6ea297d0ce4"
    "en-CA"
  end
  language "en-GB" do
    sha256 "b815d0080845f2c7c0d688baa990b854666487d3a147dab7a9c018a90ec05adc"
    "en-GB"
  end
  language "en", default: true do
    sha256 "728ea3f15d0737e59bfd8bee30b4ed947ec860d64cbe7b1cadb296e7934c632c"
    "en-US"
  end
  language "eo" do
    sha256 "4591ce0c080607da0ecf248ec44e5859fabf8955f8b18532d97a75db2e341e5a"
    "eo"
  end
  language "es-AR" do
    sha256 "e44763cc6738489275ea3d6013da34038093655a44eca727ad5b3fb1c1a7ec0d"
    "es-AR"
  end
  language "es-CL" do
    sha256 "bdec6efdf677acbb6c909bb337ac25c4a61dc0e890b690d8562173aec35c6565"
    "es-CL"
  end
  language "es-ES" do
    sha256 "d4a14fe85a01ee9b6721e8a45e37ada3b6d1576bdbfb2cb03f1a2745daf85634"
    "es-ES"
  end
  language "fi" do
    sha256 "b8baf478fbe332b86aab9f14c70216024fa7292facacf8b2fec7258438b21d8e"
    "fi"
  end
  language "fr" do
    sha256 "d2adfd4d6fea0adbdff6ba7b49a130572a857fc0b586cd1b713dc0ecae7103a8"
    "fr"
  end
  language "gl" do
    sha256 "de3dd8a8af01f4b36cbfa99c93d42939895fa202a8623bfdac300729ab7d51cc"
    "gl"
  end
  language "in" do
    sha256 "10ad566185ee518456929704fd2602a526158f812d0d7d62cc06d3f287c3090b"
    "hi-IN"
  end
  language "it" do
    sha256 "73c16a782a34592bd8fb987e700ebd414999beed59e0949fc782e3067070918c"
    "it"
  end
  language "ja" do
    sha256 "b42c1a5892c47432705f41c3dfe01d717aecce0951876b5bd5d285648bf1adb5"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "a55bcde7d646fa1574eaa95edcc717efd2ed39a596915b541a2186b5d3f4a54b"
    "ko"
  end
  language "nl" do
    sha256 "270aa5c4ec48c8d0985c3b23a11556685e502a354751fb687fe2b4295d496300"
    "nl"
  end
  language "pl" do
    sha256 "437c6998506e37ee7b4d6450bad2d1405ed9f7bcafa8605e4cc3cf2270eca816"
    "pl"
  end
  language "pt-BR" do
    sha256 "a67efe440cc1663f67ae912b4969bdde378e470593753547b5f6cec29ea45e67"
    "pt-BR"
  end
  language "pt" do
    sha256 "c48ba66bf2cbfe004bca1f1729a775e388754cd3d24255055bac87d17e3483d0"
    "pt-PT"
  end
  language "ru" do
    sha256 "66deeb8165e2c320e8c3b3374621c72a619e52cad38301664bc26921c2162c00"
    "ru"
  end
  language "sv" do
    sha256 "699f36bdf9c9a5e0a22f51a8a51e077a7fe625a7d765db37138dff9de7a5c79d"
    "sv-SE"
  end
  language "tr" do
    sha256 "a3466e1b632e9fe4cada631c1243a1c640942d3345b896023e4b5a04bbc64c56"
    "tr"
  end
  language "uk" do
    sha256 "3dbb4e03ea906766b0a9cffce88f9fc43b6421f117a21ffe911dad029d1be260"
    "uk"
  end
  language "zh-TW" do
    sha256 "9b8eadd8234c76956ff28117da10a6eef10d5e5bd6a41af482fe8ddfd347186b"
    "zh-TW"
  end
  language "zh" do
    sha256 "691f2befb8ec696354360bf1402d332df3c738d02f8874d7faf990d88fd69b72"
    "zh-CN"
  end

  url "https://download-installer.cdn.mozilla.net/pub/firefox/releases/#{version}/mac/#{language}/Firefox%20#{version}.dmg",
      verified: "download-installer.cdn.mozilla.net/pub/firefox/releases/"
  name "Mozilla Firefox"
  desc "Web browser"
  homepage "https://www.mozilla.org/firefox/"

  livecheck do
    url "https://download.mozilla.org/?product=firefox-latest-ssl&os=osx"
    strategy :header_match
  end

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
    "~/Library/Application Support/CrashReporter/firefox_*",
    "~/Library/Caches/Firefox",
    "~/Library/Caches/Mozilla/updates/Applications/Firefox",
    "~/Library/Caches/org.mozilla.firefox",
    "~/Library/Caches/org.mozilla.crashreporter",
    "~/Library/Preferences/org.mozilla.firefox.plist",
    "~/Library/Preferences/org.mozilla.crashreporter.plist",
    "~/Library/Saved Application State/org.mozilla.firefox.savedState",
    "~/Library/WebKit/org.mozilla.firefox",
  ],
      rmdir: [
        "~/Library/Application Support/Mozilla", #  May also contain non-Firefox data
        "~/Library/Caches/Mozilla/updates/Applications",
        "~/Library/Caches/Mozilla/updates",
        "~/Library/Caches/Mozilla",
      ]
end
