cask "firefox@beta" do
  version "137.0b8"

  language "cs" do
    sha256 "4c98fa09f10e34835367b063e288222c479f9d57e5aa743b1a8bf0ee9eaf2fd6"
    "cs"
  end
  language "de" do
    sha256 "792d7916979a7f2077db5a41b6b0299d4924ea411ae2c0ad102f98d54acd4c46"
    "de"
  end
  language "en-CA" do
    sha256 "b53c4a944fe84e5e506511c6027b2571043c18a80e6dcf3b705d624227fb3f03"
    "en-CA"
  end
  language "en-GB" do
    sha256 "3f63f657db8c67a106cadca1dd50db8364eecce57e93376796c22fa6e30c091b"
    "en-GB"
  end
  language "en", default: true do
    sha256 "1783388e740355ffaf215bf10d32ce0d4aaf65183a9eeef64bee3c0dcce2a6e2"
    "en-US"
  end
  language "es-AR" do
    sha256 "0b26c4c7e7f5ece22f52f86008af64f42babbdff644defda60a8571bcc0de1e7"
    "es-AR"
  end
  language "es-CL" do
    sha256 "641d8cc3765ede78f2cb7fb3c7fe5d8e888a449a2f42c194aef7af545e29b635"
    "es-CL"
  end
  language "es-ES" do
    sha256 "d7749f55ff5a291859b2b00d209eb736a066dc25316246c4cccbbd3f2a8da9ab"
    "es-ES"
  end
  language "fi" do
    sha256 "8695db94adfe8bb6627ebfb191fdfc9ffb5783fcdd16ecb0678b5c0f8fbdeceb"
    "fi"
  end
  language "fr" do
    sha256 "4a10b721d010bd65097bb26f0a96b54a364b0072e8de4b279ee13a74a9df20c8"
    "fr"
  end
  language "gl" do
    sha256 "1a204be962a58b1081ab9569b36cd0eace4134e19bc438cd33703687540d9213"
    "gl"
  end
  language "in" do
    sha256 "0ba28ca4b89a2ad6b9c8ec04c5cfdda0b1fa31baa48fe3d2db3fa06b7735cd68"
    "hi-IN"
  end
  language "it" do
    sha256 "455c3255f61dfee9296941f74327f422b1a042edc60fc1ed033faa3ca2c87528"
    "it"
  end
  language "ja" do
    sha256 "e9c863af4734e41f08fe2b445a010c8495b014bdb7040b8c67e28e01c737fc01"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "022b0a504518f0a69a7b826cb75116a8b87eb3ec91a1369a7f4006611ff1beeb"
    "nl"
  end
  language "pl" do
    sha256 "fa8eb9d27d04894c30b968e66c50457f61da5954a9cfb6137586e3e3a3b8e14c"
    "pl"
  end
  language "pt-BR" do
    sha256 "6a33007965fb59e6fbdc327bd793feb754edb583e40257a86e1baf9a1c6dfc24"
    "pt-BR"
  end
  language "pt" do
    sha256 "92e9d13c34635ca26448fb06c926ace8e23b9d82eb25b60ecca13b44ace19d08"
    "pt-PT"
  end
  language "ru" do
    sha256 "780c646f548b97caff61654bf19c05d8da535a5051cbd2e22128b39e01945386"
    "ru"
  end
  language "uk" do
    sha256 "bf26c223a63a6da237429343ff712fdb1d9d97217bbd0f5401980d7370098035"
    "uk"
  end
  language "zh-TW" do
    sha256 "0f237d858e1415b5dbeaba1935d9c9775538e17d80052f38fd8b39c644757da4"
    "zh-TW"
  end
  language "zh" do
    sha256 "a187e637b57c01459aadda40cf7d7d8af7b0deff416e9b4c25dd8201e434617f"
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
  depends_on macos: ">= :catalina"

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
