cask "firefox@nightly" do
  version "148.0a1,2025-12-24-21-04-03"

  language "ca" do
    sha256 "9cbc4ecdfb85c07ae9113edf554e81ced515aa00fc7f1ebe53822f978b89b11e"
    "ca"
  end
  language "cs" do
    sha256 "dcbfa2d62e05d4785918561aa64849b1fecf62ca758a636b4350222b0b953f41"
    "cs"
  end
  language "de" do
    sha256 "d4e42055db3dbf549c6aa79b3103834edb3c402f19cfa1ad9c3bbc0fa922d55f"
    "de"
  end
  language "en-CA" do
    sha256 "f9d809e33e304bd1905a10ecaf9cf2e26c41dd97181b232c44e9b21032f5ff09"
    "en-CA"
  end
  language "en-GB" do
    sha256 "f9e2f35e79a01dd02507019691f4cbb3e9548239adb6d253a7fde2adf3c79fa6"
    "en-GB"
  end
  language "en", default: true do
    sha256 "d1d1da21a14d3d28a96ad8c49c7b6d85fc4b57a971036f7fdfaada42caf44c78"
    "en-US"
  end
  language "es" do
    sha256 "c2a5241059717fc2b1d1c4f026416fd9dc0c28da5b69ba4eb946d6d5053ab456"
    "es-ES"
  end
  language "fr" do
    sha256 "2ced61ec4f4fe60b9c85e49baf2ed1204f82bf96c616f96df92b25d4374d3a36"
    "fr"
  end
  language "it" do
    sha256 "69e371909a8f20233ea5ccdc27b005da4329bb6f7fb4ef71c85d7ab70d0cb34b"
    "it"
  end
  language "ja" do
    sha256 "010a407f20404b4c845f21d45f71eea77b566df276b3946065f0590b2933ae0c"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "bafd02a1b8d8693ce976d1095887583daa3fca900e9476b2ee596e155a54bf2c"
    "ko"
  end
  language "nl" do
    sha256 "f4feb0c101d39d4d413766c94038fb08e1a442e1fb7e38de3c38f8d458373056"
    "nl"
  end
  language "pt-BR" do
    sha256 "9eb5451b1aec7f46efbcce7bed163cad77b840ead85c5b4d375821f42d6e9adc"
    "pt-BR"
  end
  language "ru" do
    sha256 "fc0f028a0ac193680a34e233e8cee5f6ef0e2742ecadc872ce0fbd3d468914fb"
    "ru"
  end
  language "uk" do
    sha256 "fb5013505c6c5a247fbaabd0a69f6ac51e06b862d346ffef598fbd260a8d9519"
    "uk"
  end
  language "zh-TW" do
    sha256 "570b0230846b0695c38526d071dd9db77722242070018dcaa4c1399ac7b717f5"
    "zh-TW"
  end
  language "zh" do
    sha256 "381d99a355b249719581830559a57fcacaa7041107d97582ec492da69df36aba"
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
