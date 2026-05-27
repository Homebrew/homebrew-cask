cask "firefox@nightly" do
  version "153.0a1,2026-05-26-21-29-48"

  language "ca" do
    sha256 "82915093036e7118045d1ab4068417b4e88bf313397c22209b3cecbb1a4e71b6"
    "ca"
  end
  language "cs" do
    sha256 "d22c958fc00fe640f858e9515346b095b71fd99b4df4a5f791b5c788406c1a6f"
    "cs"
  end
  language "de" do
    sha256 "ece2030aec31fda9f9d13e3256171a2bd1c0f016018c411ccc0872e6c8b740a1"
    "de"
  end
  language "en-CA" do
    sha256 "be96de8bfeaf2e6a31b0369c15ff28495650552a732c11a7dc236102d510c04b"
    "en-CA"
  end
  language "en-GB" do
    sha256 "829ee042dfb04c313d074b1cf91ecd12113f8383eb6c9ab0114f4dd56d2acdce"
    "en-GB"
  end
  language "en", default: true do
    sha256 "4ed41fbc889c473651f2a17e6cefc24f25b6f6311f48edf0d3312e4185b445f8"
    "en-US"
  end
  language "es" do
    sha256 "f16075aa62fda5a2cf109bcd737750d79e93a8cb7b672bc3db851eda326cbb7e"
    "es-ES"
  end
  language "fr" do
    sha256 "a67c5c6da6140f3d023df9751ffa835145b41505ee99acc747c1cb10af786281"
    "fr"
  end
  language "it" do
    sha256 "ab5aa2a9461135cb3b1cdd1623c80221f5368f70355a8761b8dffbda56ddb6a5"
    "it"
  end
  language "ja" do
    sha256 "f725bd4709fa6c402e13571871c43c2abad2ce06920b868c6bba3df695ab84a1"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "fd4f60d19aa1221dd6a4e778bf7647c978026986d95f99daf5e2b05407199d7e"
    "ko"
  end
  language "nl" do
    sha256 "18ed1261105d5bd7993b9da3bb5aa199b6305e79cb87ddea924af93060024f50"
    "nl"
  end
  language "pt-BR" do
    sha256 "8a57c3d1dcb5b6437a30cce3a163a4c0a5cb9be71be7353f780216625b20c28a"
    "pt-BR"
  end
  language "ru" do
    sha256 "93e6f8fa107968e811cc805d1e00b7fed8e2f781ad2d630121d6d35f7db08aaf"
    "ru"
  end
  language "uk" do
    sha256 "af12c2404309aa2ddc043833da6f5d1b8fdac5d83e441ef7ff9297ad83e4a9b2"
    "uk"
  end
  language "zh-TW" do
    sha256 "4ec0611e55b2c700a8ceb7cc5b2346f026ac7600d2ecb8b27d298f9ef2bf13b8"
    "zh-TW"
  end
  language "zh" do
    sha256 "df9b5819a035c8d82133fe848dce70a0bce17c6bb8171099358a653317918599"
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
