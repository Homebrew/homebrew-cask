cask "firefox@nightly" do
  version "153.0a1,2026-05-25-09-29-03"

  language "ca" do
    sha256 "e71d602129da07021e797f5dd05559b842ae129af739f481a0f7a9131239f68c"
    "ca"
  end
  language "cs" do
    sha256 "ee31dd00e8f5507a1d4a7ad58d6d1be787f40168e8e175ae6f6978ec8cb97005"
    "cs"
  end
  language "de" do
    sha256 "417106fd46137cf9ab093d2c70e7ed53dd11dd1ef633ddbbe8f3047885456b90"
    "de"
  end
  language "en-CA" do
    sha256 "bb338b6b73d8c1dbf3b154c70ee16473d90f43680e9cd89da772d452142882be"
    "en-CA"
  end
  language "en-GB" do
    sha256 "a7ee8c66e1014ea56282e1d59bba5e63b807a0efdbf8e89ddf2d6edb5062e765"
    "en-GB"
  end
  language "en", default: true do
    sha256 "6dbfa20add4cc3983b45ab9b37f74e4b2815ec835b08819d85639a777a58e289"
    "en-US"
  end
  language "es" do
    sha256 "29a606647830d95fa53cb3578d53f5f4165bb514d5f5ccdcdaf099ba9b7f5de6"
    "es-ES"
  end
  language "fr" do
    sha256 "9e3f0b3b48c763bd5761a96745edc8c5d39364d3a20d79fca5030ee84c9c3a25"
    "fr"
  end
  language "it" do
    sha256 "651cb5728105f818520276e63fbcd10419e7fbdc7142e98c73ce919febedda90"
    "it"
  end
  language "ja" do
    sha256 "55001a62a913bf455f6ff92b33aa9686723fcf7f356cb98f0b759068639dcc47"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "c3e93e883027dd28ad7f48dd0f1d636b5c290861fc88a39491cc94cb27b28400"
    "ko"
  end
  language "nl" do
    sha256 "63978462e75ebcf7a129f83e70ca920d6bca22d22314b74c3af42327675566b4"
    "nl"
  end
  language "pt-BR" do
    sha256 "e62b9380bd3616e45b0a6af93907a964c9b091bb7e976960a8c15032367d0a67"
    "pt-BR"
  end
  language "ru" do
    sha256 "6cb60154f290522dfeea5155c1662f96512af094cac279c112fd10ef4cfec387"
    "ru"
  end
  language "uk" do
    sha256 "ecfb552bb720c936233d303d68a376d14e38255fe5ff425fa076802cb13cd875"
    "uk"
  end
  language "zh-TW" do
    sha256 "b682b1efc65dcfa65e16c8979f7ef1ca107598c2f83a3284c7050539abcf9917"
    "zh-TW"
  end
  language "zh" do
    sha256 "8752f11d72ea146e53f379646b6c2eb23cf64ad60b6b46c57c11f7e3eb697b7b"
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
  depends_on :macos

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
