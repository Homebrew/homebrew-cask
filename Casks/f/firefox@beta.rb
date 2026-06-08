cask "firefox@beta" do
  version "152.0b9"

  language "cs" do
    sha256 "dbdae0f405260f04ad87b8a39923cc9ecfbacbf65c261212baee5db6310acd5b"
    "cs"
  end
  language "de" do
    sha256 "7c9bc86504fcf7c498af01be51ca4bf4c0f6859803a2dcf1406e52527f8a8e08"
    "de"
  end
  language "en-CA" do
    sha256 "e73f07eb4b42eb2daa7ef04655cd4d0c341bbf018f09e106b25f7c9b73ff8851"
    "en-CA"
  end
  language "en-GB" do
    sha256 "376b8ce489672a15ebcb644b06806ae2076da5da92b5a6cdc418225324d0ebc9"
    "en-GB"
  end
  language "en", default: true do
    sha256 "9fd319bb27407bc95a455700fac3a72ba56b94c42195ea26b3398a7a3a973e19"
    "en-US"
  end
  language "es-AR" do
    sha256 "b0fbab50c70d070996c72fffa20a675a13bcc49b09d94d15682200ce504cf007"
    "es-AR"
  end
  language "es-CL" do
    sha256 "8761563858d072271fae31de3ec7f70b73081604f1cca1427f033e3e222c31a5"
    "es-CL"
  end
  language "es-ES" do
    sha256 "961896d4119bdd911255eda88f7eed0403f42f746eab831ee165e097e00a251b"
    "es-ES"
  end
  language "fi" do
    sha256 "d6cfef179217202300d4ff34ae49d2e19f38e7bc56987953f4716392cb490746"
    "fi"
  end
  language "fr" do
    sha256 "5586ac7e6bb72fbcfcb3c95b082162a30c188ac6ab20d06d72938f12e5f7b055"
    "fr"
  end
  language "gl" do
    sha256 "09df5a30e99136c585ea5458202c8a4745ac03988a555c349af8b4c77da83668"
    "gl"
  end
  language "in" do
    sha256 "85bf1138a2ec910d6d4d5571dba949638c6f0dad323803f31d031f144d9a110c"
    "hi-IN"
  end
  language "it" do
    sha256 "1bc5c694267ff42ca70fd66d03af0878a27a0caf00325ef4cb25c795256efa3a"
    "it"
  end
  language "ja" do
    sha256 "294971418e5df04532556570d5252c019bc33d611cac95f79e1081b4ebdcecfd"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "e0e6289f639e169c3e65fc8ea6befafdb371fb0434f5305aefc5c7aa190972c2"
    "nl"
  end
  language "pl" do
    sha256 "b629e4ebdc4c7a24c27b3313929244f5d3eb513abf037ab2bdb695336be5ee22"
    "pl"
  end
  language "pt-BR" do
    sha256 "4344cbe7ae3a989c5e2a0117261a6ba4bb5c9540b3162ea718d0e8d93d692d8c"
    "pt-BR"
  end
  language "pt" do
    sha256 "a9ddbfbbfa03c8cc8777111a37e0eadff063378b2383fb6bdcfcbdb5ec886921"
    "pt-PT"
  end
  language "ru" do
    sha256 "09ecc9e0338ce24ac540264f4c35ded6898f13b3226f6dc372fc8b3e623a133b"
    "ru"
  end
  language "uk" do
    sha256 "23f62bc1b9138bcff97a43b9d4de49ffbe48679a230c935f9e377bbb75463924"
    "uk"
  end
  language "zh-TW" do
    sha256 "ced4d2229f10331d5180429987a2c2b183ed276bfb1a905a6573da22d5875504"
    "zh-TW"
  end
  language "zh" do
    sha256 "7da72581ec87e24e27952786ebee12ad61cf75058440c1479ca3dd40106a4ea8"
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
  depends_on :macos

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
