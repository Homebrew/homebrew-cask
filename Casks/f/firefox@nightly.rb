cask "firefox@nightly" do
  version "162.0a1,2026-11-11-21-32-51"

  language "ca" do
    sha256 "bafe78956b456c29d51c7367d9622c1f46f425cf29a6f4a1ed6ca6ad44f1ba5e"
    "ca"
  end
  language "cs" do
    sha256 "31509faeab346ec489052e9554405fca09d2a95d4bcc3bc39746ac6b026b5401"
    "cs"
  end
  language "de" do
    sha256 "34da293ccd15d7e74e99817a92f6df9f15ab996f9998d05a56579e083cf75e12"
    "de"
  end
  language "en-CA" do
    sha256 "0e8626a4a0b30831fd78132ee0af1cf8db4ae9be84b7b89720409c9f01adc6a6"
    "en-CA"
  end
  language "en-GB" do
    sha256 "b62e915fcf75ce64dc7125efa724a50700d17f17ace034a1d0f1751e8d6d1e05"
    "en-GB"
  end
  language "en", default: true do
    sha256 "3ff020953a71c9c0f328a657ca01509b0dd0ef99b8af95dd1f3edc863bd8756e"
    "en-US"
  end
  language "es" do
    sha256 "229c769f460982027678ad5b853774c2b06771c2a44d46afe921d278739af97b"
    "es-ES"
  end
  language "fr" do
    sha256 "2bbc79b7759a8810686c3313c6c6f2c62fe421c894829773cb058333c14e86f5"
    "fr"
  end
  language "it" do
    sha256 "43f7fa705d50f17e8a32cdd4f4a99d935a5ee8067a9e21bdcedf4263a3080647"
    "it"
  end
  language "ja" do
    sha256 "afc1cb310570721d965b6a91d6aaffb8d055d8a07ebf3efe4534040b1cc9a487"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "0ce5cc92ca2bffd467c1aefd64a7ab6cb99b9585395f75090ba945510f47c823"
    "ko"
  end
  language "nl" do
    sha256 "5e5dd0f82205b88e728825e7fdfd9f87702a5c321260dec847c34f79fd37f54a"
    "nl"
  end
  language "pt-BR" do
    sha256 "b351a13049409e3af5aea46067876709cede2b2e56a74c05384d1a877a16230a"
    "pt-BR"
  end
  language "ru" do
    sha256 "fd1e265784d34b81bb1dc5db5241cfb6aedf97d2f6ebe280eed23c511cc17160"
    "ru"
  end
  language "uk" do
    sha256 "15082142500e941e8ecbe8fbad593a8e42f60c2dd351b541c9d409ed92e2c0b1"
    "uk"
  end
  language "zh-TW" do
    sha256 "aae67925110bfecc9ce3d66edd0b8bddba9ba6e6563ddf8293c23a6d109a4a44"
    "zh-TW"
  end
  language "zh" do
    sha256 "b4b7973d5a14cf8bd9a6c5c9e2f57a32a1c58a588d3d8f96ab3d09ea45fb7c91"
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
