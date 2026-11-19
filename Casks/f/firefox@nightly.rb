cask "firefox@nightly" do
  version "162.0a1,2026-11-19-09-16-29"

  language "ca" do
    sha256 "247f13340ceb360b6809a2ffee09fa07b49049126d8e9710bcb8cb8f4bd805ea"
    "ca"
  end
  language "cs" do
    sha256 "be8bf92737ece8cd7c774c52c9a9525e8cf9768449f2e2078cbccc882c1da971"
    "cs"
  end
  language "de" do
    sha256 "ec3e37d52ba68becd74e8a8460e1ea115daa649c024edc198d8619b78a60f319"
    "de"
  end
  language "en-CA" do
    sha256 "ef3a5de7c2c94390771a71e7202584eab83e1b7246be31cf4b7d1bbed964803f"
    "en-CA"
  end
  language "en-GB" do
    sha256 "40b85b91e8c9213517fdd2e89f2aea0ac96615943edc8751ae452e8e0bada6f5"
    "en-GB"
  end
  language "en", default: true do
    sha256 "e5e612f8f959227bfb20bca890f8da1cb128f97f07752891c1e00db786e81e85"
    "en-US"
  end
  language "es" do
    sha256 "49295959e0e39e78ab8d1412dddd5b75dfb0249e37fa788166673fb901e8c579"
    "es-ES"
  end
  language "fr" do
    sha256 "9002c00ba41eba997843b90105e695eef4c64728ea12ca6e907d6c64ff4118c7"
    "fr"
  end
  language "it" do
    sha256 "a95affb01cec8b1bf18658f1f53618eb3173be4a406c5af60e781f10ec119b96"
    "it"
  end
  language "ja" do
    sha256 "e8a1189d25e605bd465c959e84a8ba1f73c2fa22350e8c06121681ed61232e1f"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "716dbf6476c0c8f4eddd34b0493ff3993b9dcf65bbbb109f7cee4e8192c707ac"
    "ko"
  end
  language "nl" do
    sha256 "a8f2858a3b6ebc1c7db5c07087851f2bb0d3da2869709a00ee6d81f18fef92bd"
    "nl"
  end
  language "pt-BR" do
    sha256 "77dbd27432e37bf1625be3cfb3e8a1e38c82aa6499a1fc71f365749910b675b1"
    "pt-BR"
  end
  language "ru" do
    sha256 "e86e77dd2ef84a650e884f37d832cb6d9e680a33cf3a881b18ad0e826b7d20ee"
    "ru"
  end
  language "uk" do
    sha256 "5ffffee821fdd80bf7f02f525d11e5dde9765d8211e12ca188cc1eac246c707b"
    "uk"
  end
  language "zh-TW" do
    sha256 "e6550f16843f626b77ad0408f65bee3ecf92ad9825a4276099cf44b2082793eb"
    "zh-TW"
  end
  language "zh" do
    sha256 "02f684c4c65e935b9caa194137bde3865005ed8393fe459e366726828aa9feb5"
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
