cask "firefox@nightly" do
  version "143.0a1,2025-07-23-15-50-40"

  language "ca" do
    sha256 "a6d40b63b56469b3cf3d27ab1cf4da61782d2d464a9b46c84893930ba7c49fe5"
    "ca"
  end
  language "cs" do
    sha256 "6e478d6ff1ca542422486ce203b3f030372d18f70d1fc5c3ec3c286895e3bf08"
    "cs"
  end
  language "de" do
    sha256 "5ab090824ea500a082a1e30745be4996bb4d5a01821c9d7d146724b87af3b5ca"
    "de"
  end
  language "en-CA" do
    sha256 "a9f2cbf63d3d8d7f734a0cc16a9e12be6b4f224a45a3bb0ae8a442eec65281c4"
    "en-CA"
  end
  language "en-GB" do
    sha256 "a3fc2c384098d0ada2ea3b7f557d9839c40170bc12a120785bc6f594a7af291f"
    "en-GB"
  end
  language "en", default: true do
    sha256 "54a709e58487a6f23161ac3e4c1322ad1161f274cea97fecb0a6c63a7da55615"
    "en-US"
  end
  language "es" do
    sha256 "8897e00694a168b836d977deec35c30dcdc010e08e6db73573b66ee7ca8e44ed"
    "es-ES"
  end
  language "fr" do
    sha256 "078d79f56a6ce7994065c46b4bf388a17d3b7b8c300fa004570a8489c4f1b7d6"
    "fr"
  end
  language "it" do
    sha256 "8a3803c3c13d04940e3dbdc771f58ee136bc3bb5455e9c6d06820d53926d5ffa"
    "it"
  end
  language "ja" do
    sha256 "6208fd76228d7e4d3a20e5b33c2f607cf56e44277cd7540c133e5288e08eee86"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "9d03966145bc6a5d59306fe2f076507f8e734da581bebefbe2596580d6a73186"
    "ko"
  end
  language "nl" do
    sha256 "f59b8bed9cfe6592a05912c2c1ab811a4f9ef887ae81bc9270f489f673b40896"
    "nl"
  end
  language "pt-BR" do
    sha256 "ca6294a71f6b50f9b61d418511025686f71c3fd2ab7bce7d986c01b681ae1857"
    "pt-BR"
  end
  language "ru" do
    sha256 "3398efb89145b94c543c6d22cde3cb40902a817c08cf16ff3ebf60acaf465cd9"
    "ru"
  end
  language "uk" do
    sha256 "93a1af7fe945e67993e25a872f198ab7c5cc582d346b5d8653e04bfa3d9ba6e0"
    "uk"
  end
  language "zh-TW" do
    sha256 "8925193abedec0c091addf7a991e2c833e51b675cbab4a8e77963314dd02b5ca"
    "zh-TW"
  end
  language "zh" do
    sha256 "4c009d699a4ac59c919c9961d1272aa9abba58cb7cac1ddca49f4062a1c8a8a5"
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
