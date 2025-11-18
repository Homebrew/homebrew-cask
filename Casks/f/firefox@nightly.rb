cask "firefox@nightly" do
  version "147.0a1,2025-11-17-21-56-21"

  language "ca" do
    sha256 "f9e038fd621019c8e2fe340803e6e2aca636d23bc4e8e9277e28b7cd5090ba93"
    "ca"
  end
  language "cs" do
    sha256 "c9d8f15fc614fb9a569976e76e683a14fab7567be98b343a77b2e7a5cc8151ec"
    "cs"
  end
  language "de" do
    sha256 "ae5c7ae88b57310e0d9490213fb387b39217e359fa2475a93b04c383516464ce"
    "de"
  end
  language "en-CA" do
    sha256 "2a0802f3796954084e331d2492a3399a1e99bdb29e130b1a70c4da3ccac1321f"
    "en-CA"
  end
  language "en-GB" do
    sha256 "c50b7fcd660900fab6310fe90505089e960ba8434d3a29196bf1ffce7e3aeb49"
    "en-GB"
  end
  language "en", default: true do
    sha256 "4a7621c5e97896c06989e0b70d0e742dfc380816c1da7bd6625d8e11d2418ece"
    "en-US"
  end
  language "es" do
    sha256 "a1e217c20917515c896e797868130237465dbc39c3fae638a598d49097f7f0b1"
    "es-ES"
  end
  language "fr" do
    sha256 "b4682386a3e0b23703ca7a78c0c6d40069736dd63533c8f07d3cdc912bcaf911"
    "fr"
  end
  language "it" do
    sha256 "54315daffe1a18655f9eca6e11074fb03ca491564956e133408ea0b39b0c86f5"
    "it"
  end
  language "ja" do
    sha256 "faf0daea88e43a9c3e2fdd3f73bf3e1693899682d87de114f10f118e0d9c6ab3"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "ae06551833aaaff0d5fd6ba0432a905f062402f4396fbfbc1892b388b5ceaa80"
    "ko"
  end
  language "nl" do
    sha256 "73b78001bff46ed585ddc6ba44fd1db7a90f4e1ba17b3217f5ea370ab92347bc"
    "nl"
  end
  language "pt-BR" do
    sha256 "b7cb4530e1464e3deb7b8f46e45eb432faac1cb8a1e5f51865aa25dc11e5152c"
    "pt-BR"
  end
  language "ru" do
    sha256 "dd74cfaf687f10cbc0342f3862beff6b51b1130dc67f91df4ce9ebdeb1d5b632"
    "ru"
  end
  language "uk" do
    sha256 "c9bd20705f2403809275d7c27b06071061678ff81f4ca34f8e749d9a760a2dcb"
    "uk"
  end
  language "zh-TW" do
    sha256 "60a940a8d41abc7ecd4e6cefa00e287cc554ceb9f2310c044d56f7a43889d881"
    "zh-TW"
  end
  language "zh" do
    sha256 "53cc10d4d1a3179285c0a35edb01bcf3df50ecdef6e38da814bd70bd83857a43"
    "zh-CN"
  end

  url "https://ftp.mozilla.org/pub/firefox/nightly/#{version.csv.second.split("-").first}/#{version.csv.second.split("-").second}/#{version.csv.second}-mozilla-central#{"-l10n" if language != "en-US"}/firefox-#{version.csv.first}.#{language}.mac.dmg"
  name "Mozilla Firefox Nightly"
  desc "Web browser"
  homepage "https://www.mozilla.org/firefox/channel/desktop/#nightly"

  livecheck do
    url "https://product-details.mozilla.org/1.0/firefox_versions.json"
    regex(%r{/(\d+(?:[._-]\d+)+)[^/]*/firefox}i)
    strategy :json do |json, regex|
      version = json["FIREFOX_NIGHTLY"]
      next if version.blank?

      content = Homebrew::Livecheck::Strategy.page_content("https://ftp.mozilla.org/pub/firefox/nightly/latest-mozilla-central/firefox-#{version}.en-US.mac.buildhub.json")
      next if content[:content].blank?

      build_json = Homebrew::Livecheck::Strategy::Json.parse_json(content[:content])
      build = build_json.dig("download", "url")&.[](regex, 1)
      next if build.blank?

      "#{version},#{build}"
    end
  end

  auto_updates true

  app "Firefox Nightly.app"

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
