cask "firefox@beta" do
  version "147.0b3"

  language "cs" do
    sha256 "68a488199d2a1b002df9e4d257c32e7e8c1e1a968c0cfb56fc11394c2dfbff9c"
    "cs"
  end
  language "de" do
    sha256 "dec6d46eebff51154a238339a3260dbc4004f6397392a45f8b7a4085d222cb5e"
    "de"
  end
  language "en-CA" do
    sha256 "179136c34b2377c01536da19f357d30949575344e0090231a5cd86b32d445a28"
    "en-CA"
  end
  language "en-GB" do
    sha256 "9dfd3dc6d2d0e5afec342bd17f41c1a2c6993e3494996f766f67c7842eb26dbc"
    "en-GB"
  end
  language "en", default: true do
    sha256 "fdb2e82e97ceecb8df769c5eeb2800c04fb403431feafec36af94199b2139b11"
    "en-US"
  end
  language "es-AR" do
    sha256 "6d71446eba50a631a21a7b8f07112efe802753696d2287aeb88984cda683f67a"
    "es-AR"
  end
  language "es-CL" do
    sha256 "1b901e798db04a83dbfc435fffd7ac8ba680d0397036fe45933ac9847620575d"
    "es-CL"
  end
  language "es-ES" do
    sha256 "59d4ce755c6b29a5b601c24de23ec23e0cb5c99b8d17a6654a6e907c05ec663e"
    "es-ES"
  end
  language "fi" do
    sha256 "0a3d28f02267d4df9bfaa6611d2cf4b5d3c4334e7273fd677b2ca06120bfccf8"
    "fi"
  end
  language "fr" do
    sha256 "3f85f40f1d3c84d64bcacb5e619f364f600b8419d2682bad8854af6a149b2241"
    "fr"
  end
  language "gl" do
    sha256 "dca5a69d2e35812aec76ef383809390d849662e00fbbc8c289d05b4229e50cf4"
    "gl"
  end
  language "in" do
    sha256 "d95efc3086e6bb3d6f62eb9b4c31fa9ff18f9d1fe4cfb2005551cacce8683906"
    "hi-IN"
  end
  language "it" do
    sha256 "af68abaeb8054e437e86ff2ec51693ad8cc1ff456ec17c08ce2000bbc5c2e92b"
    "it"
  end
  language "ja" do
    sha256 "97d1e889e718ff4ad843a34a4a11136ea68ed737a4e602bdc9c0a3c9d2df46bc"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "6b6ceeae8231d424f957c2b96f02644d3d8dc8254733037df7a525d748b5a978"
    "nl"
  end
  language "pl" do
    sha256 "6f96c12665e09e7953e5f067e51d5d40b030744e06cadabf60774cab22cc7795"
    "pl"
  end
  language "pt-BR" do
    sha256 "9f99ef61285227fa7a782014e509577330a8729e05dfc6e65bf93c97fdbe03d4"
    "pt-BR"
  end
  language "pt" do
    sha256 "af0aa4a99f1a50466b91cd5acd2d0a4a13205653012edd2abe1a5fe11b1d66e1"
    "pt-PT"
  end
  language "ru" do
    sha256 "003d5c4b715467d927a94ee5d09d074a26579c286dc1d3b2a786e3d1bb538a8b"
    "ru"
  end
  language "uk" do
    sha256 "532003d3900625ce4f53aadbafed6d0cfdc6aea9391f1098c4c563ae03c4906e"
    "uk"
  end
  language "zh-TW" do
    sha256 "95ad8787a36277256aff6389a3aed1db237a607aa41f0fb24251a28fb7c061cc"
    "zh-TW"
  end
  language "zh" do
    sha256 "11ac8e4767218a5c5d9ccffc3d2629bd0db563b31753f8fb90c4a35dc95da263"
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
