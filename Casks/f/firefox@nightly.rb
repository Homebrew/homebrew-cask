cask "firefox@nightly" do
  version "140.0a1,2025-05-22-21-39-39"

  language "ca" do
    sha256 "0f42ed62ed01a52174e56a2ef6b3d5115abee2e3bcd1758f9c517ca31336bd7c"
    "ca"
  end
  language "cs" do
    sha256 "7b98cc2fe8ddb39ddddc974e00d537c1709d2546a05842a0373800281ef8f113"
    "cs"
  end
  language "de" do
    sha256 "8a36df72a8079c123168318bd02886f414c3d3d78bdaaf8639535cfd38ba573d"
    "de"
  end
  language "en-CA" do
    sha256 "36adee2a5657c32e95d08a9eaae7aa13b099ded242d50f6d40f4de13c7a1de01"
    "en-CA"
  end
  language "en-GB" do
    sha256 "db490e97240f4400efbb23e4f2830d6ae883ccf08ec257f028726114caa1f0b1"
    "en-GB"
  end
  language "en", default: true do
    sha256 "1b001210fe0a6ca4c6cf32cec8bcb9cee681601619e897f1eef443d5b021926d"
    "en-US"
  end
  language "es" do
    sha256 "275c5cc37b6a371078adb767cf860c6f9fefc2f8299ba35093d0600c0802cadc"
    "es-ES"
  end
  language "fr" do
    sha256 "1326eeb34fcb282189658efecf89a46961d8f10e3cb20807363cba7334c6a9a3"
    "fr"
  end
  language "it" do
    sha256 "0fc5f89d1ea24ac568a6dd8f8f6ce327c54390ed2a4d9588a5b5289ba6697509"
    "it"
  end
  language "ja" do
    sha256 "aaf5a95137ace6053264123b3d3c94b855275a4bf2f93ce7a66d9c3d07950e5a"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "85574f7843ed95bc705f5a3c646fbd31ad33c8636827f294ffc3c254781a584a"
    "ko"
  end
  language "nl" do
    sha256 "55a0e6a67c93a1fe6ba19b17c130a5a3ff44f0995cf604a6b068b5e682ac2454"
    "nl"
  end
  language "pt-BR" do
    sha256 "595c99202e9f2947e5764f4b776adeb11f1ce260bbee6c632c6b27155807b517"
    "pt-BR"
  end
  language "ru" do
    sha256 "282ae0c1616594b35ded84e9a20db020539c960a82d926756f15c25bf784274e"
    "ru"
  end
  language "uk" do
    sha256 "0bcf30780f8987921ad9fdbd562c0deecfad1e98565fee0c7bdb6d4f780dc5e6"
    "uk"
  end
  language "zh-TW" do
    sha256 "56ab734b68684881138007c6b3f6ae5409f948e06a31d64af320fd4fcde516dd"
    "zh-TW"
  end
  language "zh" do
    sha256 "db997a12a50b0e5b3f3cfe4f44d890195255f17be97779f4074fef1cdd5ce8ea"
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
