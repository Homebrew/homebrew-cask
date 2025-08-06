cask "firefox@beta" do
  version "142.0b8"

  language "cs" do
    sha256 "aca378c3e1f9c95fee165473207b4c34e8134c350c571fc31e8d7e9b09e1afc9"
    "cs"
  end
  language "de" do
    sha256 "32571aed0efd5f6ba54cf006ce827fec3f7b901dc6f1764a0de25ee5923d7f22"
    "de"
  end
  language "en-CA" do
    sha256 "4907f6fb3cc8070edf391b328530b40b18d3fc5e1602c793126b8d29909ceb8d"
    "en-CA"
  end
  language "en-GB" do
    sha256 "ac1c236c47a33352fd65bf80e3dc84be9d77cb622265c097dc6a7fc88a78b459"
    "en-GB"
  end
  language "en", default: true do
    sha256 "74c20a61fcc05fd69427f370a6a97ab660615299ef254d4cfaa617ec095dba98"
    "en-US"
  end
  language "es-AR" do
    sha256 "05df14dbd30f18c75aa5833e246ea73e76b57de42984a9ffa11e7b09ffa03c29"
    "es-AR"
  end
  language "es-CL" do
    sha256 "62f0aaaa7bddb26c91af9dace00ae0c9787e4f31f72bc9f94a15325eb7f971c2"
    "es-CL"
  end
  language "es-ES" do
    sha256 "8920d8fb85cdd713fd6714a275659567cfdc6ff11bc38aa3fb6eb692f1ec7032"
    "es-ES"
  end
  language "fi" do
    sha256 "4709a7f33066751f6536b9eef9c1f790fe9d35d896026353eba26986a72771cc"
    "fi"
  end
  language "fr" do
    sha256 "c48b3799cd173f21e90b597b9f01f31dd067ee598e2961bf929691a842db2d64"
    "fr"
  end
  language "gl" do
    sha256 "acfa65441f1bb9c01383656313459cfa558e5e1a2dce2700220c6809072a54b8"
    "gl"
  end
  language "in" do
    sha256 "7170ef3671c218866e196cab1ab20f35118a9cc63c640878d4f2e334bcd5a88f"
    "hi-IN"
  end
  language "it" do
    sha256 "7a69c57b8dd4ff94fcb63131b83f5299689dd78fe7e4adb91ba5e37686be2f97"
    "it"
  end
  language "ja" do
    sha256 "306a945606d8218fa8563d97d3ea977a9caa1cd8a6b57349f494915f5160c592"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "564743a75d5c1ceb21dd746b9a99b3d33032812574dbc061a484b8eff1691502"
    "nl"
  end
  language "pl" do
    sha256 "086e0410496bc1abd8d75d910f33a524bc855d82d4b2b929a9d558db948f292f"
    "pl"
  end
  language "pt-BR" do
    sha256 "f934aef2e8bae8708454063a3d5d45700380344304c406816ee9d4477c0aafc1"
    "pt-BR"
  end
  language "pt" do
    sha256 "5032e8294e7d4f262e2685eb562f9c9971bea920c3beeeedc6b027a3da4c04ef"
    "pt-PT"
  end
  language "ru" do
    sha256 "f4b8fb73ff36738e7fbd5fbb387f58063a1a332052fbad63c903e4748cdccc1c"
    "ru"
  end
  language "uk" do
    sha256 "df8379568f8197012ca261c980618f54f8905ea4b2c553b5869e3e0604476248"
    "uk"
  end
  language "zh-TW" do
    sha256 "46a88b3e097b1b573fc92cf435352043e83c302ec5640bd1e5e5c599959f2e4c"
    "zh-TW"
  end
  language "zh" do
    sha256 "c69e664e164f5926d34c8d1cf2e3364997ccebf6a25dd86af72f9aff2a859ec9"
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
