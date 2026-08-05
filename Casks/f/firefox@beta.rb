cask "firefox@beta" do
  version "154.0b7"

  language "cs" do
    sha256 "0571f15d7ea99d7b316ef82d6cd2cbf2d4300918781ee92026f60f55c6b9d4ab"
    "cs"
  end
  language "de" do
    sha256 "3d271420bd8297fa363cfda64ee6be6639fa9d6a9ccc5dd8dc66e49f4003e268"
    "de"
  end
  language "en-CA" do
    sha256 "f72e539700e3f1fde5680b793ec142c01db2390e1fceeba21e24216b31049f73"
    "en-CA"
  end
  language "en-GB" do
    sha256 "e8d106c9043822f59e59bec4388d5a7d111032885b2413e6cb20f9ab538a7227"
    "en-GB"
  end
  language "en", default: true do
    sha256 "862a59be3e0c454f40ba8b50877288ab46a860a97378657f392a587d8e768417"
    "en-US"
  end
  language "es-AR" do
    sha256 "57e749dfc373b9ade8daf13ecddfff6d33235e8e0a1ebf8f011a062f15498d44"
    "es-AR"
  end
  language "es-CL" do
    sha256 "ccf05e2fffb3fc9172130f12ee158ab25b19d8ee03c71c5085b996a843edcbea"
    "es-CL"
  end
  language "es-ES" do
    sha256 "faadd503a927bf119dd8389258d784e227be16039f19a808c18f0379883817b0"
    "es-ES"
  end
  language "fi" do
    sha256 "7d2860e9e3c6e15afe9b06364eb6f6a0dafb07a4e8f7f48d76705c84cf8f09d2"
    "fi"
  end
  language "fr" do
    sha256 "823269d8010eeb0889b47c849d1c889938b82951c5f710404b35340c7f4fa8e8"
    "fr"
  end
  language "gl" do
    sha256 "6cac76324449e537da742ca4b23fb6beb1f19b86f34b78c90764a0f1388f8908"
    "gl"
  end
  language "in" do
    sha256 "0185bc489e48c8cb4843a891ae0726f0fe2c889c21db0a73b6e7ddb1e7a989f2"
    "hi-IN"
  end
  language "it" do
    sha256 "c15812f2f09d1f57df4582c50aec9a6dab877313283cf88af41e0e2f03df7d3e"
    "it"
  end
  language "ja" do
    sha256 "b0b5a54d9882aa62fe33ebf349561c069215fbfa5bb6059307f3e69022275ade"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "15905a019e6c94af9fda1412087fbf1bad25f1c22224f18fc7d291cce2f3cddc"
    "nl"
  end
  language "pl" do
    sha256 "74262c2912462a576b048daabcb41104ff15ca1bfc29b65605095f4cc8e763fb"
    "pl"
  end
  language "pt-BR" do
    sha256 "15e7eec119cbb40711feadbdd50b022fdaeefc74367ea3f6bac7a88af122a0d5"
    "pt-BR"
  end
  language "pt" do
    sha256 "391465fa5c609c8bb2c544fca33be6605831d6517478dd08cd625b20113da4f9"
    "pt-PT"
  end
  language "ru" do
    sha256 "ba8307d5ffb12cf60c8354ebc04ab3c15d32c16671bd11eaee580b5f3e6634fa"
    "ru"
  end
  language "uk" do
    sha256 "c3e93f9ae5ce010d4b22282fc6edea8b623980cd61e7a97a644672bb741c77ea"
    "uk"
  end
  language "zh-TW" do
    sha256 "2d9495decb8fc284eb3f2c5b2e0fcc665d203a6baf3b578efe7287f0489f78cb"
    "zh-TW"
  end
  language "zh" do
    sha256 "6e495ec7c48fa3e40d4e873cbbcae200297f54bd4f505abbc0392d63f9ba15d0"
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
