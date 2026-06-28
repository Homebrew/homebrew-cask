cask "firefox@nightly" do
  version "154.0a1,2026-06-28-08-39-49"

  language "ca" do
    sha256 "63e16d3dc0527d628c77c45e43f15227a9def865488c23e7219228ee5234f346"
    "ca"
  end
  language "cs" do
    sha256 "19c848589d8b5c3e94147394affbd7bc30f2b379bca95617564eaf2b7f16794a"
    "cs"
  end
  language "de" do
    sha256 "ac4da0003cdb30ea05752cc805b7be973f8c99b8e1cab73de9e1eecb5f8697ef"
    "de"
  end
  language "en-CA" do
    sha256 "02024ea6e9d6407a634e70507b6d34c15fccde9a185c0c4c28309c6e114b6b4d"
    "en-CA"
  end
  language "en-GB" do
    sha256 "3df9ca950fce4632fc3f5d8f42d3fef1afd9a3b861535a8a453fe62712bc3f08"
    "en-GB"
  end
  language "en", default: true do
    sha256 "bc2684fbad25bef41211276422688e78827ab66d6c8948cbe8c7c1fea8911a1b"
    "en-US"
  end
  language "es" do
    sha256 "bcaaf1454934e86e0ac81b5a77d4feeb73e00754a12d1b5de42ca95022b6e183"
    "es-ES"
  end
  language "fr" do
    sha256 "e1bc4b0f79caa32a90ef05af5cf35b7f363a585ccbba2a21d00075f04cc9dec6"
    "fr"
  end
  language "it" do
    sha256 "a2b4ba2e83b89a0a795f0cd2ad929d126619e8e5bca94014a2b6bf2213c60224"
    "it"
  end
  language "ja" do
    sha256 "e397983d58b910b4caba469d454ecdac849ac1be62960ce76e0ff50c55ebd6b9"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "21d20734b873c0f2ffa59bdd153a30b9092f81d5d97b1a6b6c2e3031868ce4fd"
    "ko"
  end
  language "nl" do
    sha256 "cde5acefb6b1e1368ce92cb2e688dd52248ae88c316e5401e09740006ac27fa1"
    "nl"
  end
  language "pt-BR" do
    sha256 "8b70136b650e79d1e9daaa3607dffc51fc42ff26077e4e32162874e28f3c3894"
    "pt-BR"
  end
  language "ru" do
    sha256 "f444f2af4efaa39818e4c5854e7c95b35799dc830771d8e2f2c58fa6b31baa0f"
    "ru"
  end
  language "uk" do
    sha256 "bc93134dbe7276e9bd5bc8de2d52ae17ba1fd8ad92a6754f175abcf588d4fc4f"
    "uk"
  end
  language "zh-TW" do
    sha256 "f26c4ab2b87e8c0cf698bd0a6a115b6866a6ccaf9812231486e8f9042a9e15b0"
    "zh-TW"
  end
  language "zh" do
    sha256 "5943bb5673429d13031fab78a2434a902f090d1c19388ce425c297693137f9e0"
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
