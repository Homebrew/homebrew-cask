cask "firefox@beta" do
  version "149.0b9"

  language "cs" do
    sha256 "ff190c8f0f866b70db22a49bbbb090f74f615a7189481dd2a06ea5d1c3d04e1c"
    "cs"
  end
  language "de" do
    sha256 "f1b8e6c337c0ffb2694edb996a613cc81fe275ed46b527dc514cb02102247318"
    "de"
  end
  language "en-CA" do
    sha256 "09c6389d5123e6e2b12c14264e71558c6ed80fdec180cae80528d52b4e1b5558"
    "en-CA"
  end
  language "en-GB" do
    sha256 "eca0923b7a3fdcb93115b5b51e396e1b0e58d472515407bababdcbcfcce87445"
    "en-GB"
  end
  language "en", default: true do
    sha256 "801de59140fb32e76bca75eb1c30f2cc9846b47b5cf7ac5c37494ff1a36dbc60"
    "en-US"
  end
  language "es-AR" do
    sha256 "10a7d3a7a1e47d27f4803117ea23149be8df47e941b823cfa7a542c20a3aadfe"
    "es-AR"
  end
  language "es-CL" do
    sha256 "5b7e0acc0bf09bf03e6ba7d3f3f6c6d335c65b12277df99b2420338edfdd85f3"
    "es-CL"
  end
  language "es-ES" do
    sha256 "3bae2f51e48e47bfc8c81aa44132bfd854c8804e11f5fdf6a448f7e2929c8cd9"
    "es-ES"
  end
  language "fi" do
    sha256 "966649e683944377ea481e441ae38c498981449c0db4f48402349dd21108b38e"
    "fi"
  end
  language "fr" do
    sha256 "2196e1ddb00d7dfe72932a04e68ec21b126f4a0b18001091271cde1c36ce02bb"
    "fr"
  end
  language "gl" do
    sha256 "470489ebaa9b1cdda771ee49c503254131fbf62895667673f98bb7aa49d4d322"
    "gl"
  end
  language "in" do
    sha256 "e03429d05d4c5b0c672206ec076d2b7f47e59bc53ede496761767a2d484dc041"
    "hi-IN"
  end
  language "it" do
    sha256 "223d005654342113ce87792e3160779da67c2de2be64e778ca49fde27cd4e5ca"
    "it"
  end
  language "ja" do
    sha256 "ba10576e48c7a9d84d26fd59f407c9fdf9ac9bea1d9d6dccca146fde62cd3015"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "d1cee449c8df5905802d25ae94d3248275daabc87e07c206f8dd449bfa11a224"
    "nl"
  end
  language "pl" do
    sha256 "55eb94c836e4b0a738ba1afd7b2c8d689c55011f4001878b03c5783ffd31852e"
    "pl"
  end
  language "pt-BR" do
    sha256 "6ddbdf8be13de5a79eedc3537bb4f8104c871cc323d43b6e23dbd909a55a901f"
    "pt-BR"
  end
  language "pt" do
    sha256 "c7e7527d7cce67f2ed50e57379c22c898b705bc312ed781f2b144aadf61d2c78"
    "pt-PT"
  end
  language "ru" do
    sha256 "8cf86f8784f248edd9b834b88ba1730a198af3f6fd167f88d7d7d3051f6e8e4f"
    "ru"
  end
  language "uk" do
    sha256 "f88ce15187e85ce1439211b5519fa8e22fc2eab8c79e40a6be7f352de507e6cf"
    "uk"
  end
  language "zh-TW" do
    sha256 "abdc67648f5daa018cb79ea5c139556affdd79f0be88dbe4c59a4ed0b70c0952"
    "zh-TW"
  end
  language "zh" do
    sha256 "3399761b3f946db61f432e3a2149bf1301ea40472fb80d883eeddff3549b59b8"
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
