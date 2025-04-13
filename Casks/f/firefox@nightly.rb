cask "firefox@nightly" do
  version "139.0a1,2025-04-12-21-12-21"

  language "ca" do
    sha256 "e146a736f6aa0466f14ebd7bc284a9f36c7a0de69a168cde1094eae070f0c5c1"
    "ca"
  end
  language "cs" do
    sha256 "3134b5388c71a798d6d1e6483f8a881087601e0aa58e2a5b3fe001eaa4e019af"
    "cs"
  end
  language "de" do
    sha256 "a1ec40cd5cddbb76c9b31350903b86d93d0dc2e3b6522607f67f852cf946de10"
    "de"
  end
  language "en-CA" do
    sha256 "4bea7e2849f988c424b989a4f8ec26384ae32485c0d7446ee96670410ff08e7b"
    "en-CA"
  end
  language "en-GB" do
    sha256 "b246ca6699cee6c264beeec09f24d086a7c8da0f7aafa0d924174313ec617c68"
    "en-GB"
  end
  language "en", default: true do
    sha256 "476cf489053cf046d778c94e41c41e994397c4f0d10deb361fefb1fe8b4ac821"
    "en-US"
  end
  language "es" do
    sha256 "f8d5b5b5c38bc2a4c9fec09d66f1a6f951f4dd7010e9ec9f43403deeb5b44f6a"
    "es-ES"
  end
  language "fr" do
    sha256 "5f523e49c20682be9fe1289aed0c005c39fc81be7bae53d945039b45e573d066"
    "fr"
  end
  language "it" do
    sha256 "4dd98de0aa660f9a7063d0b1055ea4b7d7f91eea477e8452164595c7b13a931b"
    "it"
  end
  language "ja" do
    sha256 "87af08368a3cf16c87b69ebacb487a64428e47c53ca91ee2c7654a0f2870e845"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "f1737dd63f2945dd94ce8fbd2ba7875e48831d794627e509d756c0c6e0e98a15"
    "ko"
  end
  language "nl" do
    sha256 "09f6820e3fbaf51623c0bf45ed924dd82a8bde2f9bce7e094ac78c03e36a60ca"
    "nl"
  end
  language "pt-BR" do
    sha256 "8a32adc123b418d86abde1d839c6839bd16cbc877ef23d6e3828f3acc4934334"
    "pt-BR"
  end
  language "ru" do
    sha256 "d59dc62665f57e54da6e9610369bae9bad2a3bbff0f09ad9db6673c9f2298ae7"
    "ru"
  end
  language "uk" do
    sha256 "409560a69c4077bd1e153ff456971bb1fc0c0f7ce7c1c8ceee5b934a0f79f882"
    "uk"
  end
  language "zh-TW" do
    sha256 "5be6bed802cd0dbbc31da4abcd558ae5ce5bf7b006d348036918d7ef1db99bed"
    "zh-TW"
  end
  language "zh" do
    sha256 "2c8fbf57740594544149b9af0030968d3844d0a63f07e101279d4f1a94037b87"
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
