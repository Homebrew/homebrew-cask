cask "firefox@nightly" do
  version "157.0a1,2026-09-01-10-32-15"

  language "ca" do
    sha256 "725720afdfba871628ecddd7a28bca588bb643e4181e6579022a6ef03d8e80e5"
    "ca"
  end
  language "cs" do
    sha256 "dca05cf11240fd87e4ecbfce8d6fb961e2b4c64cc3c6b4251f1a178716a1b35c"
    "cs"
  end
  language "de" do
    sha256 "fdeda70d1d1a56f484c3153b7aefd5bdf0ce2350faf0087513479ca8871d2f95"
    "de"
  end
  language "en-CA" do
    sha256 "88facbfd19a4b8b4a2933b4d54e1588d66925d1d65f277c3b3b8b29781daf634"
    "en-CA"
  end
  language "en-GB" do
    sha256 "7e5fce832015210e8ff7d4b06f55336780b98e14c3a4d9298e20bcc597b550f1"
    "en-GB"
  end
  language "en", default: true do
    sha256 "1bdd3ceab42095d131e8efc355b994b3e16d369298f51e37f8e9b22568131553"
    "en-US"
  end
  language "es" do
    sha256 "4fc72d9b51e321a9581d772cf8dcd7521f6fb7121c354a45ab17493e232c50f7"
    "es-ES"
  end
  language "fr" do
    sha256 "f7368ae57c424ade3ecbe34384e29f4d37c5cd68e83698188c6e86a67ce0cbbd"
    "fr"
  end
  language "it" do
    sha256 "7bf7a3678e0507107123502c295c66ea8cd818fd2653ad9abbc83c2c136eb542"
    "it"
  end
  language "ja" do
    sha256 "e763ff0fc7820570faa34d19d3ff99d7d8fbe5e22f06afa49c09071e3f09f552"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "1651d0d648c1787e47d1ea31ad39f796c234a0d2ec16a9ed5c2a480014ca3c0a"
    "ko"
  end
  language "nl" do
    sha256 "6a5068d83b0158e328f910135035f9b40873ac5cc47b802e239460d323475d48"
    "nl"
  end
  language "pt-BR" do
    sha256 "940f15674d51a4784176f4bd2a1ec861e28a0b644e30ef0a020893271d007f3a"
    "pt-BR"
  end
  language "ru" do
    sha256 "ea8c36dc562d108437d4d3dace6cba45f7c62c07d0f6052b99b28dd3497d3136"
    "ru"
  end
  language "uk" do
    sha256 "9fa98dd8cc864e4f58873a6c3609317581cebc3506af7806aee8b04f794a7104"
    "uk"
  end
  language "zh-TW" do
    sha256 "12420d232b7d95e7251394466dca1b10b90b4edcab7110207ba5aa6d7c510858"
    "zh-TW"
  end
  language "zh" do
    sha256 "f44a531c5f2303c0c449260b4f284fd624772017713b1d03271cf5ef8a3025a7"
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
