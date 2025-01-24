cask "firefox@beta" do
  version "135.0b9"

  language "cs" do
    sha256 "40500c29b666388ec81ed6b2758612178971e25a47b6c03cc462c75d22699eb3"
    "cs"
  end
  language "de" do
    sha256 "3301eb4400e78f6a7ff535ab0948727fe326ae260ae91f782c8ca7e3bcef1245"
    "de"
  end
  language "en-CA" do
    sha256 "5343ba02b6b8d11387f423cdf8718ce61aec2c60e8eb7434cc52db92601294e9"
    "en-CA"
  end
  language "en-GB" do
    sha256 "43add796d4d09b381d0da77dd193878b8215db5a08c4c9e525b02152c0a82497"
    "en-GB"
  end
  language "en", default: true do
    sha256 "31d395ddc49b5f18863c2e060610d3a7089a4af46df12d73f1d56d5afe78baa3"
    "en-US"
  end
  language "es-AR" do
    sha256 "2123afb3d787fb9c95ec228bf159216eccc270f7f987ea246942d43a428ad76c"
    "es-AR"
  end
  language "es-CL" do
    sha256 "ad185919ddd12af914cc522eb40ec74339f79669ca64ef5421ff29746bf58e6b"
    "es-CL"
  end
  language "es-ES" do
    sha256 "2b1f3e0c31d9d7259faca87aac0350a5595772d4f2d819d56c001334308b8d6b"
    "es-ES"
  end
  language "fi" do
    sha256 "283dca4bd8e7cfbe67123061b6c71df157dc82ff5e556cfd2fc0a9cfa2775293"
    "fi"
  end
  language "fr" do
    sha256 "9606df0ce500f1ca8ac583b7d6b85a1b0e98cf7deeee81e9ffa983635d47da14"
    "fr"
  end
  language "gl" do
    sha256 "ac3737f0702f6607abf1287e3d898b1bc76d168f4865dc37d30898912f627b33"
    "gl"
  end
  language "in" do
    sha256 "f1ff1d9df7c204e4883f74bca25ab965d7f5a5c2ff800663d0b0179d8f86ae16"
    "hi-IN"
  end
  language "it" do
    sha256 "7406018c296e644a30c420bbf8cb2d73b55457354368676eb7cce22dbc3fe46b"
    "it"
  end
  language "ja" do
    sha256 "81a3991dbdfb13219eb50692db4b482d1f7824b4d252f1f96462da97a99f7917"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "e87c2960f9d505389a274c8b6babbdb516fcfe332fbb9d3fb7e84707677fe06f"
    "nl"
  end
  language "pl" do
    sha256 "6e81f3b03f809bb39b167fbc87e57ed4930d77eef406247566fed3d75bae4d28"
    "pl"
  end
  language "pt-BR" do
    sha256 "58a21cc287c6828f6e7c54b57d8fea53cbb0839faba7df1788ff467984aeb74c"
    "pt-BR"
  end
  language "pt" do
    sha256 "34461224c9709ebf0d6de3165a7262e576a722b8f51b0799a4554a43df74de2b"
    "pt-PT"
  end
  language "ru" do
    sha256 "63399a96310c055564bb72db7800a00e228117924944535b9b62ac7dfb6e9ac7"
    "ru"
  end
  language "uk" do
    sha256 "f2c92098aadc69b96c26a67f9ac75d5010f0e8d6bc0ab4ef7e028c3593d30b26"
    "uk"
  end
  language "zh-TW" do
    sha256 "afe2d6a9640e49e91414e9289cad44233d6eb93b030881193a66cbcd9d5b765c"
    "zh-TW"
  end
  language "zh" do
    sha256 "8aeeb742de52e0290ea06a2c896668960f566273a2c2e57b476d6df662370ae2"
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
