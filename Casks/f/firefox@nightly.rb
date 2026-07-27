cask "firefox@nightly" do
  version "155.0a1,2026-07-27-08-17-24"

  language "ca" do
    sha256 "35ce4c8f4bb691cd08eda8ad512d6cb4fa32cecd068003ec98d1f55da8ef3880"
    "ca"
  end
  language "cs" do
    sha256 "56468e1104de507080a8c6e4f40b323a33f14d074850698c454998dfbb724ebb"
    "cs"
  end
  language "de" do
    sha256 "477ddda20029558a64978144a196f4f01367018c6b324530815b58c0210e11b5"
    "de"
  end
  language "en-CA" do
    sha256 "8ecde13fd5d98aa732b492130e7e66191b50d8851481bd43e68d8d082488bfe3"
    "en-CA"
  end
  language "en-GB" do
    sha256 "563cd1ca1c6cdb1eaab88549fe0d2a10eac10b09692821fcffa08d0a7bdf6ad4"
    "en-GB"
  end
  language "en", default: true do
    sha256 "b779975727c58406a06be9a97719c8b376a2aaf57c169ee68f285a42d003493c"
    "en-US"
  end
  language "es" do
    sha256 "d38e2e62a5e9f72f6e02546b6d460cc904ee5f8a588ab69f053fc523f913e6a6"
    "es-ES"
  end
  language "fr" do
    sha256 "1f5e9f9428e9d89261916bd9601f53abde479a808faeaaf2f8750b41c6d72208"
    "fr"
  end
  language "it" do
    sha256 "6295fb5778efd3912b297d2352d721606c4dedd14bbc6cb2658fb2cb3a7bd15f"
    "it"
  end
  language "ja" do
    sha256 "77bf2a0ea1151998153e83774dc480b961bd081ae533bcad82b381e631b8863b"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "bbad2d6772c4c8322f9e5fe02fefcbaf370ee6598ea705dab0ce525f2235ad51"
    "ko"
  end
  language "nl" do
    sha256 "9d8aa38c7d0bb643ce07b2ddccb749ca864b513c3dc2f89222a198a1d900a223"
    "nl"
  end
  language "pt-BR" do
    sha256 "b48165598fed4b4555a336289a2a66effc5ffa832ebbf9eb97c41b041ce37680"
    "pt-BR"
  end
  language "ru" do
    sha256 "1e3913c4e61815ead0a4491f1482661baa7dcfb338c17d61b9a35ca4dab3a15c"
    "ru"
  end
  language "uk" do
    sha256 "af6001c64c4be87eeec86ff85f352ce09bfad049e1c6713b77466f8e5e798e3f"
    "uk"
  end
  language "zh-TW" do
    sha256 "e33b8b5186656ec79d6c140026462b3165bcee7cbedaeef99d7f8178f28e2bda"
    "zh-TW"
  end
  language "zh" do
    sha256 "c0961bb6b0cd8fddcfea9b0adb035bc8cb2e11392a0eadb2bcc4acca862e5475"
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
        "~/Library/Preferences/org.mozilla.nightly.plist",
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
