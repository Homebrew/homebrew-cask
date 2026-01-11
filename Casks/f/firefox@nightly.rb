cask "firefox@nightly" do
  version "148.0a1,2026-01-10-21-54-29"

  language "ca" do
    sha256 "28cca79c537c1ac5d85c334f0c71661f4aa497c3a198e44c833413383c00c00b"
    "ca"
  end
  language "cs" do
    sha256 "e6d1bdb77b1ac218dc4880a55128e2d009b26888c1ad6e116043ab224892278c"
    "cs"
  end
  language "de" do
    sha256 "f5bbcfe39fe9218909559c6be5d8612966be252074337fdc09f060d793ef686d"
    "de"
  end
  language "en-CA" do
    sha256 "b4a0a1a7a77487b182271c9b663eba3755010d93457a6780560108e5ff1d3466"
    "en-CA"
  end
  language "en-GB" do
    sha256 "63191cc856997043ffcecc705c7365e115f47aefbf2f9d4c3f1c241f900877ef"
    "en-GB"
  end
  language "en", default: true do
    sha256 "a03b5719dad8265e677a90f2e22ee397053eaf057114b9d176d7647e9c2db373"
    "en-US"
  end
  language "es" do
    sha256 "f5df09c9d99fa6aadcf0a6463e004394a68984068336196b8d6c4ed1e3209c3c"
    "es-ES"
  end
  language "fr" do
    sha256 "23e975a040646beafd28325c7e7aac1c629feec4c795fea1028f78b620f376c4"
    "fr"
  end
  language "it" do
    sha256 "8a065392979f7e7d99ef7759723879f2ae3fdd3e6951198ff457b186a01d82cf"
    "it"
  end
  language "ja" do
    sha256 "602cd98c2d32c7b2e208fa0d898a9afa4c8242b39bbaaf1f444cde96a6157ac3"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "483fb381acef7d93119ab02f75afb39581cc11398eb582fd9bf8c490a35d1c22"
    "ko"
  end
  language "nl" do
    sha256 "a76380963969f696d3c1794e251863360d9b2cebe336b9255bf71ca216da0adb"
    "nl"
  end
  language "pt-BR" do
    sha256 "a682bd595ae8488a8594f6d7be98dd98ae6f5eb2f243ca571097412d72f5931e"
    "pt-BR"
  end
  language "ru" do
    sha256 "f93ff907a8046aa63efaa2ff8e2c9fb0c4cf308e43d1fd0dff9cf6b80d1156ed"
    "ru"
  end
  language "uk" do
    sha256 "404156e4c2c8ce029ed7ab3036594f0866061c3617ae343344211b191ee9c229"
    "uk"
  end
  language "zh-TW" do
    sha256 "965d0edca4ec1ec0326981991cee88661cc1d7e69de7e36422e9a312f17b519f"
    "zh-TW"
  end
  language "zh" do
    sha256 "a6d1258af7908378d551fa767bbaa8de38bbbc0773156005e89d676b8ac4c41c"
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
