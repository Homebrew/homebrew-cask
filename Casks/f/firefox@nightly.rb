cask "firefox@nightly" do
  version "149.0a1,2026-02-03-21-08-13"

  language "ca" do
    sha256 "114dc3ae0cab092ad80664a98e78bf4a653321a246a313675daf90ebb0ee3628"
    "ca"
  end
  language "cs" do
    sha256 "4569683d39a5dcc8583c341fd3ebe202bfcd22febb090f13100429cd410b147a"
    "cs"
  end
  language "de" do
    sha256 "448b92e7f5c6c2d5f14ddd3c3fc3391ea55165998d7b16a009fdc31e1ab1cc9c"
    "de"
  end
  language "en-CA" do
    sha256 "487e0f6e8903ab4055400d970e27b2f5b6519e9ca734b1ffea287b03e614b17d"
    "en-CA"
  end
  language "en-GB" do
    sha256 "3774ee96e5c0decd4954ca9a7464b1b74d7ad562125835d82daa82fa17f20b93"
    "en-GB"
  end
  language "en", default: true do
    sha256 "ffd9b8bc7580d611878a003a8de8583f3405776420796e3e96a4448fa67b742e"
    "en-US"
  end
  language "es" do
    sha256 "ab57d5fab4a8604115c86a147087eec046a95575f7e11bdc9b8cbf593629593e"
    "es-ES"
  end
  language "fr" do
    sha256 "40707c8195be39f77b10ae7c6cd4128ad02b8890e2f439424835570bd06fed96"
    "fr"
  end
  language "it" do
    sha256 "70b9dcaeabb8075b12018cb79058e78f9974bf095589a29cd8abff9fa3fa39c3"
    "it"
  end
  language "ja" do
    sha256 "db1f8c0cb7e944ba8a912abbee16a16733de7351dc86e6f6fe6b1ecfda8ad851"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "0284c83db93b3e64cb19f0dd8d244f6a24f1fa0bc1fd9a499ad85d830a1bb2bd"
    "ko"
  end
  language "nl" do
    sha256 "32e606ab1fa89257360af9cc14268043c02c6488722222b7ea3ec2616eca59c7"
    "nl"
  end
  language "pt-BR" do
    sha256 "5d296436a2816db1e400027e29c2a5d6e0be4da2b5a413efae7d69e3968ac6ca"
    "pt-BR"
  end
  language "ru" do
    sha256 "377361f507e0dc42316a4f5b874c574abcdcd80a64e3e7da2851d36b88cff1ae"
    "ru"
  end
  language "uk" do
    sha256 "2f422c8f40bcd5f1d0c23f3b112e0daad31557c85fe38d63d269747154d066f3"
    "uk"
  end
  language "zh-TW" do
    sha256 "3f3f61498a5380d9718e5d95a948023878ed61923ffe6879806e551b1f0ebb2e"
    "zh-TW"
  end
  language "zh" do
    sha256 "e6b6053d8dd7272c81636184ad509e413d9f82850b4ed5ada37568a47b228454"
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
