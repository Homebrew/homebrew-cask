cask "firefox@nightly" do
  version "142.0a1,2025-07-13-09-04-17"

  language "ca" do
    sha256 "4f38e19881f78878a6478279142cea024e255f8ea21a59abe325a5aa40eca547"
    "ca"
  end
  language "cs" do
    sha256 "362daceac3886e4b86cae5cc6a998fc996990c16c2767446f190dc24bbb80a5b"
    "cs"
  end
  language "de" do
    sha256 "a280b5ad762786fd94d2885d16bc771ccb58b58e6455c1eb99113e1f437102b5"
    "de"
  end
  language "en-CA" do
    sha256 "baea76e71008d3f4771ac0cf12887edee2ecfa01af6e99856c2ec77733500811"
    "en-CA"
  end
  language "en-GB" do
    sha256 "21189a9667b5efd2adef7a378c11c9c1aed2b0e5a284eefde3017ba72fdde71b"
    "en-GB"
  end
  language "en", default: true do
    sha256 "966b5d6d7f6722c3832317097973d2e7edc71db260206b134650302a544abbc8"
    "en-US"
  end
  language "es" do
    sha256 "b00ce6ba4eb8ed0352b27afc3b6e9bfb6c691a6a85215d4b33d31f67b35fc8d2"
    "es-ES"
  end
  language "fr" do
    sha256 "a85945a10529c34853c2c31c7014fae6d1378c12e8ad0facfff94074e0a8ed9c"
    "fr"
  end
  language "it" do
    sha256 "4fb72691c2e66d299fca7f7f5c0ceba97b8330407e8cdacf5c0ed8fd0f4e609c"
    "it"
  end
  language "ja" do
    sha256 "1f1da40dc6cd12bfe3e47dbfb651d11e72e1cbca8f67cf069d725673a27fa945"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "7723fca3e9b437f4dea7a97b467d08e6c72a50f22f5977aca91b3f1390684e0f"
    "ko"
  end
  language "nl" do
    sha256 "5c55faba59824340dfe1806ad41ab417f17aee910c9f1e74b2a51b95b8324c2f"
    "nl"
  end
  language "pt-BR" do
    sha256 "188fbf3e11b96d1f7aa31eac7514bb7915554ecdc490d36e2379d9883a51b8b4"
    "pt-BR"
  end
  language "ru" do
    sha256 "9f2bae54bedd87463a2bd265045d9602f347a93c0f3031022d4c4f7fa0a60c2a"
    "ru"
  end
  language "uk" do
    sha256 "e73a9883fe2ff13900f67d322a720b1024d72ce8460319112d12ac5cf7e12d00"
    "uk"
  end
  language "zh-TW" do
    sha256 "d2da925ae04e102d0a2c4578ed75b557ee87a2dbe18c0f851a29848f87bf126b"
    "zh-TW"
  end
  language "zh" do
    sha256 "c16f0ad8c1ebbdee44bf2949435a9a883b0ca6bfeb3dd7200345c1a83d993e3e"
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
  depends_on macos: ">= :catalina"

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
