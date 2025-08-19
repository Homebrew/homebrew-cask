cask "firefox@nightly" do
  version "144.0a1,2025-08-18-21-39-14"

  language "ca" do
    sha256 "b295e4c190c1fa58d693a28e78eacc37763c7d5c05a76ff09afd53aa732b7131"
    "ca"
  end
  language "cs" do
    sha256 "9f7799684ed3e93acc54296ded7511fa52dd689a3e047725223f2b0745adc725"
    "cs"
  end
  language "de" do
    sha256 "8221f60eaf00b04127ba56c3e39658de0050a353481585b8a7832fa889dbaaca"
    "de"
  end
  language "en-CA" do
    sha256 "96c290279d5bb5c12fac919ac4c6736bdbc7183a0c477765e3292f7f4234e7b7"
    "en-CA"
  end
  language "en-GB" do
    sha256 "387432cda20679e1184bc10533047422ac1c86a0fb98976cd0369662ba59ffde"
    "en-GB"
  end
  language "en", default: true do
    sha256 "597abef879ff55207fa090d9012767113fa50a9a5303003a6e5668d6660f7274"
    "en-US"
  end
  language "es" do
    sha256 "6553511e5f6e238a63e807c41ff3b9ad7ab134ee1f9a740453e6f8bcae197e47"
    "es-ES"
  end
  language "fr" do
    sha256 "ef88c53221930f810a6ac41ba9df75ced2b7a978896be5183c167bd6d7d96eab"
    "fr"
  end
  language "it" do
    sha256 "383565b250f480138eda69522413e326b2f16fe433699b46363c5b3cc8c16c82"
    "it"
  end
  language "ja" do
    sha256 "bfefb55fef9284883e7d0cad5eb3c35a4eaa8311a511e9dfd7e86d63d65dbe2b"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "29b1bee6c88e008b08e9e366000460def90ca0f69c22403a619efb1d38b7bfb6"
    "ko"
  end
  language "nl" do
    sha256 "1b1fa9cd5c5268c8049b6b97b115b818faeabcbf53166d2600eadce2b6d3ec73"
    "nl"
  end
  language "pt-BR" do
    sha256 "0750fd80337240f7a70d1d2a40f2f7fea8ad62173e77346b0c31f725ac1d762d"
    "pt-BR"
  end
  language "ru" do
    sha256 "39e6bee57db6ac0a6be7b3df807df7d008d62c950c6e1810638ae7f808da69e9"
    "ru"
  end
  language "uk" do
    sha256 "12760e607d124f6f1fc99253d95f79529ad078008b867287c276271ad63df3a8"
    "uk"
  end
  language "zh-TW" do
    sha256 "2ec187e10d24aa5ea952f5a6429775f47633f6e5b084b5f8772f67fea646b2a2"
    "zh-TW"
  end
  language "zh" do
    sha256 "7ff4f64411a1b08d04ee2fbaeadf82d017125e24eaf48ee690ac5978dc49274f"
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
