cask "firefox@nightly" do
  version "161.0a1,2026-10-22-21-49-40"

  language "ca" do
    sha256 "81a66d7d97a0684a315fdfd43a8b7b21b081df21d4ec74d13314fab843d82c6d"
    "ca"
  end
  language "cs" do
    sha256 "e16635815bcf8a0ec7d98bfd2811691d5f8e22c32cb6c39eaeb83c0c370c658d"
    "cs"
  end
  language "de" do
    sha256 "e5b19aef246b2048624980fcf47864739dd2b56e79999b68bf6cadc46c21bda4"
    "de"
  end
  language "en-CA" do
    sha256 "fe46466ce0b1ebca666b626208510fbe58437cf958da264aa95336eceafd95d4"
    "en-CA"
  end
  language "en-GB" do
    sha256 "af566dcc1b0c9a7b73e0c82e0ff3ba462b726087ad4744bc66bd1614e0ca5d37"
    "en-GB"
  end
  language "en", default: true do
    sha256 "c77f8a2f2ad3aad3d3ad749e439ea8921f8286fdf7970264d18a293b2d35969a"
    "en-US"
  end
  language "es" do
    sha256 "b70b9aa76a966cc1d210df643c5c7526502c28beb652ad95de5deb3821a3338e"
    "es-ES"
  end
  language "fr" do
    sha256 "c5f5e776f667711ad877b54dec6aa8393549ad662e705bf1ae3f4ecd15a89ea1"
    "fr"
  end
  language "it" do
    sha256 "e800001883c4014c2229d0065c8e5fefa6d4f2ed2031de77d1c9a4479f02fd11"
    "it"
  end
  language "ja" do
    sha256 "ea07f0de7048e4cd9e966537c2337b7600fc8cd06c15ff73abd9948e06eb3a65"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "5c1a119f4ec38665c2209fe6f6a33fba96712886369b84e9f41e0f197ab66f2b"
    "ko"
  end
  language "nl" do
    sha256 "f82b890609d4c0455a52392190018219d46201c04cda6132146e8e00001d638f"
    "nl"
  end
  language "pt-BR" do
    sha256 "b17fcd56857d47b3970d25d55666055ecdbbd5ab5470224ec36b8d90b3f18ce4"
    "pt-BR"
  end
  language "ru" do
    sha256 "57ebefb085d2de5cf11f6ec9decd2e9473ad3fa9b0dc3f2c85e82ff10041309a"
    "ru"
  end
  language "uk" do
    sha256 "de29e0e850101042728e56d898a0935f093d40a49c0dd6b6afe66678c270f313"
    "uk"
  end
  language "zh-TW" do
    sha256 "66c9904d5612caefbd82214ca720a37cf502176801543824763386ee68e3fdba"
    "zh-TW"
  end
  language "zh" do
    sha256 "a2a97dbfe56445a6e910544f5a1e18bd2b85c4d723754c1716a6b20b4493af3e"
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
