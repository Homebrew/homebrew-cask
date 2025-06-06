cask "firefox@nightly" do
  version "141.0a1,2025-06-06-08-54-16"

  language "ca" do
    sha256 "e8a2d3ebc344df51966e9b67461f980cd67bc945203ad274c0f4d78bd220ecf4"
    "ca"
  end
  language "cs" do
    sha256 "7735b40dadde87e1dd246b26500e623f346a23b482749398409a2733be71e9b6"
    "cs"
  end
  language "de" do
    sha256 "c1396afe88d53a69be32ffedce6044d892bde494a74c5d2dd0f7d75b8e3ffb0f"
    "de"
  end
  language "en-CA" do
    sha256 "043c0c787b5af7de7ff59f07bbf571ad273d7357310aa88b2b1045610280791f"
    "en-CA"
  end
  language "en-GB" do
    sha256 "8e3468ad8f7c848bfcfb36665c769a114e45ba6279d2c7e921f926e5b686a347"
    "en-GB"
  end
  language "en", default: true do
    sha256 "abcb643e50d3ab6cfdf1aeb8fe8c63e085e70ffc1d7d00ce8b1b40bc4c2aee26"
    "en-US"
  end
  language "es" do
    sha256 "901dabeab0b46a09cc4617f4312acdf1bf79f95ba5dd69f5af784ae4b703a6fe"
    "es-ES"
  end
  language "fr" do
    sha256 "e7307e4c99bff50780affd0dc4085074a50981dbb0562bb6e3c93eb195926dc4"
    "fr"
  end
  language "it" do
    sha256 "400e7e6f3f4713d39aeb63b5d96899287a3026aa70f6fcff5fface5ef786e08d"
    "it"
  end
  language "ja" do
    sha256 "7bf5713057b7996841f1f75187eaeeca574ac2a2f8bd82eec36feb2dfa862657"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "62e30daa1a332e77a488dc252104d9c6e2ca0ff83a396145ba918579893925fe"
    "ko"
  end
  language "nl" do
    sha256 "5b13504f4817f326d7ac5bd7efb10e509fe5024d96c8d1049192c89b5e41f8ce"
    "nl"
  end
  language "pt-BR" do
    sha256 "fae33facd2c5536f0d9b68861fd33754dc3b5d353557b86e87024fab22371c66"
    "pt-BR"
  end
  language "ru" do
    sha256 "60c73207a7f44693b48e7508715685e7272b2de4db5a156c85cc7ccd5a6740ba"
    "ru"
  end
  language "uk" do
    sha256 "9f1d31cbddb9b8811e8ab5f4d3c992830f8e2881e8e903dd1739fd735285ec0b"
    "uk"
  end
  language "zh-TW" do
    sha256 "a5efe948e7cacb0edc11740b3f92a0cfa5ab9e2d5da16a4e95fe8872df71cee8"
    "zh-TW"
  end
  language "zh" do
    sha256 "bcaf85c194cb3ef07fb53e6e3d3af4d3d74735b72c8357834ba2d3c7f79ba347"
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
