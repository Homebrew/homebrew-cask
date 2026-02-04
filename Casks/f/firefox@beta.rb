cask "firefox@beta" do
  version "148.0b11"

  language "cs" do
    sha256 "75a367845dfa75d5bc1cad4cdc610ef27de9be8b0031fe3fc9cb6d579254d074"
    "cs"
  end
  language "de" do
    sha256 "f464bd86b0635c0fcfded03bffb5c53c830a7731a1bf978ba764de47ffee816c"
    "de"
  end
  language "en-CA" do
    sha256 "61f0482ed49e565bb9792cf8bee47528c288e100b7964cb1903657e4f538fbab"
    "en-CA"
  end
  language "en-GB" do
    sha256 "e4f765b0c6eec21963a2d47405b7d4d5eb68e97a4f95f908c7c9a8205bb4fba4"
    "en-GB"
  end
  language "en", default: true do
    sha256 "d5d59d86282f68822c2e9fa0b2d79879dd7c94da70799cb376650ec423ec40c9"
    "en-US"
  end
  language "es-AR" do
    sha256 "fee50d0cbf0f3a1a0768d1440101e90f4cefd3e16be2cf3f426f1e1595457614"
    "es-AR"
  end
  language "es-CL" do
    sha256 "873ab8d4598dd4936ddadd6e66adbb63fa4c3bb468401faed05d2751ba4cb514"
    "es-CL"
  end
  language "es-ES" do
    sha256 "57391c79e32f2e170dc649c7388710774775d97c0524e8dce0edd842c348c3c5"
    "es-ES"
  end
  language "fi" do
    sha256 "3f6c45dbb1cdbe842191e0ba6bed4ff4945b85b5f7d2adbbc01221c78e019b92"
    "fi"
  end
  language "fr" do
    sha256 "0c47e0206f64c77afe22de6d95bf5627e13736ca80bd8dcf0a0825318b2dd89f"
    "fr"
  end
  language "gl" do
    sha256 "3fb74bc08a2be47623e73aa0f3bcc435abea639c6eec9b82c4ca14e87d664999"
    "gl"
  end
  language "in" do
    sha256 "910285e33281a93fb31399ebf05342e1a6a43a87f09440b6e318d43baf075e23"
    "hi-IN"
  end
  language "it" do
    sha256 "88aaeeb3064d078dad8c8b49bd6cff9cf3f16b24e7fd110f6f2d40293a802fca"
    "it"
  end
  language "ja" do
    sha256 "d6b752de090c806cfbfe168f02f1034cdd6cbd5bd29eb7e8801f2b39992dd694"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "0d4b1e7440185feb50ed33f733e914e9da22a6f5b8b03d47644b7f249736be44"
    "nl"
  end
  language "pl" do
    sha256 "9a4cb015412fdf3b661f3add2f16719fc00bf80c974e73411ea787432feb7d82"
    "pl"
  end
  language "pt-BR" do
    sha256 "a79231b5b999be1f09e87ba8c3d96bc7a3d106bc855eaf2a845b0743ca1da4b8"
    "pt-BR"
  end
  language "pt" do
    sha256 "9355721caf39034a379cfd12a3a2b1a7b28a93aef9e1eda282e88adbc968db02"
    "pt-PT"
  end
  language "ru" do
    sha256 "751e832f233be14a1356c2fb839f053bd702f0dcde8b420527f9a30ba58f6302"
    "ru"
  end
  language "uk" do
    sha256 "eb5b919cf321eaf5be2f968a079cf0c8f3f59bc6ebda36beabdbfd25b911f161"
    "uk"
  end
  language "zh-TW" do
    sha256 "a978c998ce40cae0bbb7a81bba966c4a8edf915b51328666d9fdf3be5d327d33"
    "zh-TW"
  end
  language "zh" do
    sha256 "6f04fef564e588b65bd4a268e94fbda0517774a5592823c1ba19e32cba441e61"
    "zh-CN"
  end

  url "https://download-installer.cdn.mozilla.net/pub/firefox/releases/#{version}/mac/#{language}/Firefox%20#{version}.dmg",
      verified: "download-installer.cdn.mozilla.net/pub/firefox/releases/"
  name "Mozilla Firefox Beta"
  desc "Web browser"
  homepage "https://www.mozilla.org/firefox/channel/desktop/#beta"

  livecheck do
    url "https://product-details.mozilla.org/1.0/firefox_versions.json"
    strategy :json do |json|
      json["LATEST_FIREFOX_RELEASED_DEVEL_VERSION"]
    end
  end

  auto_updates true
  conflicts_with cask: [
    "firefox",
    "firefox@cn",
    "firefox@esr",
  ]

  app "Firefox.app"

  zap trash: [
        "/Library/Logs/DiagnosticReports/firefox_*",
        "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.firefox.sfl*",
        "~/Library/Application Support/CrashReporter/firefox_*",
        "~/Library/Application Support/Firefox",
        "~/Library/Caches/Firefox",
        "~/Library/Caches/Mozilla/updates/Applications/Firefox",
        "~/Library/Caches/org.mozilla.crashreporter",
        "~/Library/Caches/org.mozilla.firefox",
        "~/Library/Preferences/org.mozilla.crashreporter.plist",
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
