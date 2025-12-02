cask "firefox@nightly" do
  version "147.0a1,2025-12-01-21-35-46"

  language "ca" do
    sha256 "bd237b1396068ad5de0ed7ffbd5ecae8510ea50bdc529d1a2904ce5647ed7bc8"
    "ca"
  end
  language "cs" do
    sha256 "ec773314b754052ba6579e9e74a493ea1018163350e4f09f226e2087a2119fba"
    "cs"
  end
  language "de" do
    sha256 "10a197bf8c425d19b10189f7595055f582396519ee933a3de63fb32e84b2e5e6"
    "de"
  end
  language "en-CA" do
    sha256 "41f4617bd9fec97c13ba1e2005897a4b5e1d0fb74f7b0bf8e75b7874aa40897b"
    "en-CA"
  end
  language "en-GB" do
    sha256 "4554df6d6a39867f42a46833fc5852fdfc5b753aa74cdc160a8fca5a19b15c44"
    "en-GB"
  end
  language "en", default: true do
    sha256 "b1ed723a77c15445a2a995c98f5d45a67c17ba3a57de13bf947aa5af8bc861cb"
    "en-US"
  end
  language "es" do
    sha256 "c89bd67c3064da169f82e17ec1f42848200e7aefa4c5914be4e33f064914888c"
    "es-ES"
  end
  language "fr" do
    sha256 "d2e0a7a68f4d4442a40a8d5fc38cbb5dac49e388800fe2e61c3bfc62c2b6d45b"
    "fr"
  end
  language "it" do
    sha256 "356a2b7fc29bcb26a5c123e83f68243048660979f8bb1a012affa152fa50a9d0"
    "it"
  end
  language "ja" do
    sha256 "e0df93f5ae2634290119d3234e8c3403da5a17fe1d7e37675b0c2d103ac29635"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "a185fcacae7802035a1024eada12868b7dbae77121a38fe4f792446b84ea1280"
    "ko"
  end
  language "nl" do
    sha256 "61722935cc866286b4b9d86f63152b8189368c7c69ddbefc737f35b9986ef137"
    "nl"
  end
  language "pt-BR" do
    sha256 "3c584d336e960a555f60799e9a62eb0d7d48e5ab9d17639989459c7c8791b056"
    "pt-BR"
  end
  language "ru" do
    sha256 "39c0604226aca31a95cc0b0b4b6c3303909beb17ba20b99ab071480147aedf95"
    "ru"
  end
  language "uk" do
    sha256 "793a332a8ea6931477e8f73f12e910086ccc45b5507e9433313b52ede32ea31d"
    "uk"
  end
  language "zh-TW" do
    sha256 "aed29158b2d331c5c6a3bbf471e013fe93197e3bb84ebab77f89174ed594d682"
    "zh-TW"
  end
  language "zh" do
    sha256 "2e4c12358cf98416c910e7c7146bce968e113a74dea289860d881dae2fe8b5d3"
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
