cask "firefox@nightly" do
  version "156.0a1,2026-08-22-21-21-38"

  language "ca" do
    sha256 "de8ff10ce082abd25916793c2b290398f605abb71d05947b9a220301575df8c4"
    "ca"
  end
  language "cs" do
    sha256 "b6beb4b8b930fd263f4dc1f1bc9ada7ab9ed5ea2793255a1cd22d37153fcfa04"
    "cs"
  end
  language "de" do
    sha256 "a6eb9e4ca52871df84602280bb90c134f93f7a565b9fefb76217b6e245beda33"
    "de"
  end
  language "en-CA" do
    sha256 "2a756176a820163e7b9c617742b753abdb4ea7373cded7d27431ff7dd2725370"
    "en-CA"
  end
  language "en-GB" do
    sha256 "6d836fa47022a646942a80e6767cc04b7d647e30af5119ebb1e315a976d0eb96"
    "en-GB"
  end
  language "en", default: true do
    sha256 "2550e308f63d90947dc4a33e19db76fd2d1ce3736ed8087bc8313c0fa5e8cc77"
    "en-US"
  end
  language "es" do
    sha256 "a8941f87d5274721cea4f903344fa39a8e531fffc10114b8c0b75ee925f31799"
    "es-ES"
  end
  language "fr" do
    sha256 "91dfedd8e50b9a6cfe6ebd94bb74f570b68947644891ea410113837bd502ec0c"
    "fr"
  end
  language "it" do
    sha256 "f03380be942f1150c6f6e8d264741fa25bf8410a8bc01a0129d2ca7a87c89b22"
    "it"
  end
  language "ja" do
    sha256 "d4ca4084a6e43abbdb1ef2ad428fe1a6b17886312efc0106516ba4de8c53ca5e"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "ccd2b146e357a84cef77b98b4e10bf10b3a2d305483f206dc63049b325d7810d"
    "ko"
  end
  language "nl" do
    sha256 "fa75e13f3c85eff9f2603603f512281ee9180a0c4daee4d43ce2c299215fd9d4"
    "nl"
  end
  language "pt-BR" do
    sha256 "888bf7cb18580e3110749b2f75d05453be3b1643d9abadf8f3a98aa4fb8983b6"
    "pt-BR"
  end
  language "ru" do
    sha256 "2fd6aef99ce1f0241a726635aa88f0d0812249b2ce7e88b46d9eb39062b2701d"
    "ru"
  end
  language "uk" do
    sha256 "8bf69c0f76451f4b94df16662917b0cdc4839d2989a9f4006c01e1145d78756b"
    "uk"
  end
  language "zh-TW" do
    sha256 "52dd6d7b1e21d5403f6fdbef8ff80529f4407af8fdd27b9a6a3e6afbd66e85f5"
    "zh-TW"
  end
  language "zh" do
    sha256 "6cf648ab68eab3b264d89cd8633f68938e7d368cb04ce4aa65b5218b94a3d6b2"
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
