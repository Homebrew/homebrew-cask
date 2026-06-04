cask "firefox@nightly" do
  version "153.0a1,2026-06-03-20-46-55"

  language "ca" do
    sha256 "fab96f274af653cb51411a4bc44a46df588a082c314acd4fb0a95bda315e8344"
    "ca"
  end
  language "cs" do
    sha256 "0576df1b0c948a2980c4dd613e19458d6422bb302460a14198b3e53d630d9ed2"
    "cs"
  end
  language "de" do
    sha256 "658e86b14a7067ae2ca4f135e51f4ca29d47d46d1d7091af4585ab8d50489284"
    "de"
  end
  language "en-CA" do
    sha256 "859782e8f82b12ef3c0a5656e5c5110ab9d419695145b95655c243b198bc0be8"
    "en-CA"
  end
  language "en-GB" do
    sha256 "fe64b20c515391bfa0519cba73a8b7a2bf2f219536517c77d8191c08f73d6a04"
    "en-GB"
  end
  language "en", default: true do
    sha256 "cc093367b6d37947e39f451c929f6b283a192fb51c8557be07dae1bb2cec1219"
    "en-US"
  end
  language "es" do
    sha256 "8ab5030b353e97f77d43a37262ae63f69a688a9afa0d8c8625743c2e726c0e68"
    "es-ES"
  end
  language "fr" do
    sha256 "0cb7c92bf89df7c6a0643f4c0392faf5ff57b9f509b38d58494d88704ce35162"
    "fr"
  end
  language "it" do
    sha256 "8ed5b2d2d532d61add1cdbb18287f23495946742febf6f06430570d849c8ea98"
    "it"
  end
  language "ja" do
    sha256 "332987d5e526758b217df6ce6549f1a7866f075cd142bddd48e8153546356b48"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "10c9c0e62d183978cd9d0f86ef515ca3d39cf8784bb5af5eb2e98f1acc078ddf"
    "ko"
  end
  language "nl" do
    sha256 "249e0987203d61c5cd571a1b543ec78e63133da7646270fc588a1fe0e5585a56"
    "nl"
  end
  language "pt-BR" do
    sha256 "0bbf57c6470367835b92a26363531b8f50c716edf9f4704161558bb97a745f79"
    "pt-BR"
  end
  language "ru" do
    sha256 "7dc96b17517f4c2ea9f266aa007e41fcc1df0e9103ed851da03989f2a2982626"
    "ru"
  end
  language "uk" do
    sha256 "bc451a1157961c1ed98d3e4cd9d36f12d939406a6bcde67be2ed61d5d4cfffb1"
    "uk"
  end
  language "zh-TW" do
    sha256 "b6aadd36a1dfe5f37bd66c3cc22fe57adecdf7a2b0b125947d68cf045ecbe4c0"
    "zh-TW"
  end
  language "zh" do
    sha256 "01691f7e6890b252163f0e862fa5b9414dab0e414677311c23a00909cb43f5fe"
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
