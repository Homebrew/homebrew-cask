cask "firefox@nightly" do
  version "152.0a1,2026-05-11-09-02-15"

  language "ca" do
    sha256 "1946ec560e76883a8af25e4f93fbdefc1b49164754d7fe0e011a6a7375ec7831"
    "ca"
  end
  language "cs" do
    sha256 "d15ce41b641499e62e37cbc6e193d45e4c828f1a72cea26fe902d7030426a33a"
    "cs"
  end
  language "de" do
    sha256 "8ce65c49c031a88c0c43d2bc16e78508eb29006ef58219f0e8dc03c4fb0299ce"
    "de"
  end
  language "en-CA" do
    sha256 "0b3a4739b9ca09ea58a5747d31dd39a61a1e22ddb153722fbbd96fbf79b4db7b"
    "en-CA"
  end
  language "en-GB" do
    sha256 "633f5b6f0cef55000cf0623f0a3cbfaec0ae4251c2d1b9b59b3ce79f395744e7"
    "en-GB"
  end
  language "en", default: true do
    sha256 "b01e93dbb574ebdcc82a30fc48d38706707ea959c98453718736514f659d2b02"
    "en-US"
  end
  language "es" do
    sha256 "dab6e1d62ff745e9bf668416fb25b80c52e6a54225a3bf745dd6175d0588437c"
    "es-ES"
  end
  language "fr" do
    sha256 "32376b90b0ee27ea88212a64fcac6fe43a17e713c7efc9b2233c69ab33522231"
    "fr"
  end
  language "it" do
    sha256 "a55344411561eb8adf46dc00501ec41ab6dad8b991e86f821be21d02c7d89259"
    "it"
  end
  language "ja" do
    sha256 "68bc49be0a2133431cad545a7097216e7e082c7593f5bac527de53b1e103eacb"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "0e0551529d77a8f02a86d0343812abd5945749811fcb870e229a2ebdc5f90179"
    "ko"
  end
  language "nl" do
    sha256 "0edecf9aa51e79e666eb3e79789adce2cc7781c7733f35f93d46b37a2a5a56d4"
    "nl"
  end
  language "pt-BR" do
    sha256 "33833bbbfc773993ebe937706203c9ceec92074595564501d851694f071dbbb7"
    "pt-BR"
  end
  language "ru" do
    sha256 "ab10d00abcd480831cf074717cc6ee8339d50bc5b0b334b2bad39dfd29db81c7"
    "ru"
  end
  language "uk" do
    sha256 "8e62c39dfe90209c2abfd4aa9d121887040732e0d50a4c27c8331ea4d1a07c30"
    "uk"
  end
  language "zh-TW" do
    sha256 "34a2ef0ce9f217bf8357f3028bbdba7c26722b12e64e3359894ee6c9d129adf4"
    "zh-TW"
  end
  language "zh" do
    sha256 "87c1587a8621511c7f21007e5cad03e198b0e18f71177cd704565e607919a31f"
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
