cask "firefox@nightly" do
  version "140.0a1,2025-05-17-21-30-57"

  language "ca" do
    sha256 "7313c7b253df608e1dbc23dfe8dc315b5dce961797a12bde1d329616c02d8d62"
    "ca"
  end
  language "cs" do
    sha256 "1a4be0089db31db6659a46fa9800265f09d68ad26f066eb73cc7948605b52abd"
    "cs"
  end
  language "de" do
    sha256 "a825437032c7a25cfe75f4d44c6fa1fb2e39ca24ccf61b9467e986dbc20563cd"
    "de"
  end
  language "en-CA" do
    sha256 "0b193ec56d99f2f63fd8f7b136a058ef6ac03976a0e12eb2ba0a7acf877eb87f"
    "en-CA"
  end
  language "en-GB" do
    sha256 "d70e8b2ef95c03e1bb0f0e791a8390d26b1317125d2e62a745307198a7def9c1"
    "en-GB"
  end
  language "en", default: true do
    sha256 "903183b1908ca11189d38dd691a2c31cce7ca581e759fd6a8324b75003c9a4bf"
    "en-US"
  end
  language "es" do
    sha256 "220bbf085c3743dbb0200184bcc5a86c8f14d042a9ad1f36cbf9d777298cd87e"
    "es-ES"
  end
  language "fr" do
    sha256 "c045060170ed308377f57bbff4e2c20dfa176b580b75fce13aa624c66249df35"
    "fr"
  end
  language "it" do
    sha256 "28bcaaa31f2e26be86f5f4973f9ffffe66967eb885b9db17b3feb4b23cb253e0"
    "it"
  end
  language "ja" do
    sha256 "d85d5ac8e90c4829a253752e6a7aa67d3c6ebf4d034b47bfaece5a197cba35d4"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "c69f2fed31a6681bfb9d5129eb4f223472fa5a748b894cd06dcef40e1de7ea13"
    "ko"
  end
  language "nl" do
    sha256 "cd640833683fb4ef81074fd528610ee75ede8cd1a1e1559ae24d1f5ae70248f0"
    "nl"
  end
  language "pt-BR" do
    sha256 "659bb7e2a7f5be048e2209db1e7be0e1a62e5d0f978990ee3207820d340623e9"
    "pt-BR"
  end
  language "ru" do
    sha256 "6499747ecfae12cb56b3e598795315917cbad886ff75d878d5dbc082f5d1c174"
    "ru"
  end
  language "uk" do
    sha256 "f16785444d2aa81801c838de7c291e59f7f8ac84f48566935e709ff6f1177474"
    "uk"
  end
  language "zh-TW" do
    sha256 "fee13a78dd46d27a56ec298709487debbfba82fa0d603315d021a3e9e4e15558"
    "zh-TW"
  end
  language "zh" do
    sha256 "f3c50bcac9ac1dc797ab93b926649080a47358be2e9d090342a98c87badf3bf7"
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
