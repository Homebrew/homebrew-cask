cask "firefox@nightly" do
  version "143.0a1,2025-08-11-09-34-16"

  language "ca" do
    sha256 "13e019ca909a019bf406b31b8a9a731836a7bdfd327aa949f369aeb83d78781d"
    "ca"
  end
  language "cs" do
    sha256 "ffb383e6578bd9a679905bae221eeaa09c0d3c46eb2d1f4a005e007395aa7716"
    "cs"
  end
  language "de" do
    sha256 "89e5689ffa8c402ae54513d2cbd481615d5c565d5f7282d59a8d47d3d5c02450"
    "de"
  end
  language "en-CA" do
    sha256 "756e7e30b0b51a86c6eeb66eb4c6e1832f5a5a4f7d82207f5e32ab5c7cc9446c"
    "en-CA"
  end
  language "en-GB" do
    sha256 "2849476045dfab06b7741926d39a688d0ce2bffdccc64d46febeb56ca1466e6c"
    "en-GB"
  end
  language "en", default: true do
    sha256 "6216135605b280a9768f72b8b393ddc80a12c9e98c0e2a7b39183c6a6e6a87a5"
    "en-US"
  end
  language "es" do
    sha256 "325245ca8005f88315c6060c6b4af8492410b31503c013e5fa422a1cd0785690"
    "es-ES"
  end
  language "fr" do
    sha256 "e1b688c5402381fad31a4c716e3f5a6d141920011372da87cf31812ee54bb2c7"
    "fr"
  end
  language "it" do
    sha256 "b961550405144dbd3600521285d83bd942622b1a7e49526166d4d820a09b3cf3"
    "it"
  end
  language "ja" do
    sha256 "3ad8bb8a9037c4e4c075f6d4ce2f8fb2ed6aabcf92c616e9cdffea8934cb3a0a"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "bb74316a2d858fe8d5b9061bfeceec77747b4c06cbfa1b90ba77c98cd056862b"
    "ko"
  end
  language "nl" do
    sha256 "e188d5c4d70de23054066efb524d9a7c3c81320321441004b54fbf8b3c4c86cf"
    "nl"
  end
  language "pt-BR" do
    sha256 "e99ce9da9dbe7c5d675ba8e9333a9661f4c585b7b6d4b8e1003d31011eaefccb"
    "pt-BR"
  end
  language "ru" do
    sha256 "f05b4a63934522daf024a3afb8290c995fbde761957b0450d6b3509d12b8a73e"
    "ru"
  end
  language "uk" do
    sha256 "745a1591174a0959c4fd9a8b620d4b9e101575df2b228e0911476e4cff52c773"
    "uk"
  end
  language "zh-TW" do
    sha256 "9d95f620f8a528d6503e8687fcaa9a070bc5be6b2f507c7a92858d41e6d14dbb"
    "zh-TW"
  end
  language "zh" do
    sha256 "d28a90b2badbe6393c379858ee364f25be533aa512cc904b46d05c3f5b9bc75b"
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
