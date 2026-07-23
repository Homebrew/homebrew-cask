cask "firefox@nightly" do
  version "155.0a1,2026-07-22-21-40-24"

  language "ca" do
    sha256 "f0bc1786032ab0f1f986671ab9dc9b128f6889fd79514969466e1e31bd98947e"
    "ca"
  end
  language "cs" do
    sha256 "283574b41503c0d32c3df2688eacb932276c73650ced25c215cd38405a9591dc"
    "cs"
  end
  language "de" do
    sha256 "56863d41f5baf29fb18da10b97a58c096f03346c423a8f75777be58ce110c213"
    "de"
  end
  language "en-CA" do
    sha256 "44d1c5a5512e5576d603acc721c413db1b2ab919bdc2b14cf4bef0b4c3df2a33"
    "en-CA"
  end
  language "en-GB" do
    sha256 "583e459aaf469d9c269c65f6b22e44f545906e97816883de64f228c00344f92d"
    "en-GB"
  end
  language "en", default: true do
    sha256 "4ad9b894f46c75bf33537f9a2850065226619648be2bd1f9c7ce2d2c78b30925"
    "en-US"
  end
  language "es" do
    sha256 "5f06b56292e7006a3b4c0a0ab8e19366e6edb3036b2752da8bb4d99ed97050d2"
    "es-ES"
  end
  language "fr" do
    sha256 "1866536a6f68b2c1e2dc3482bfd93c4c51b746b1b094577aa4307e93939e0108"
    "fr"
  end
  language "it" do
    sha256 "78abf463a207500ec4775d4db638ce1a510e647829fd0036f2f1c7f4383f7b00"
    "it"
  end
  language "ja" do
    sha256 "a95bdc611af6b64f3e152d89990608379de58b21a093bbd691b84bf074cb97e5"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "b976b857c5b94707a0f447a5a39ef1ad77d94893adbecd91af3813170d65f618"
    "ko"
  end
  language "nl" do
    sha256 "c8fad41f3dae8f6f07a7e146ca0f1d73a201cee13c06ce203bfab66918baed1e"
    "nl"
  end
  language "pt-BR" do
    sha256 "370492686acae48c51756335c046b6ba99debf636633b83afe5b5251d00f8a9f"
    "pt-BR"
  end
  language "ru" do
    sha256 "8386a29db22525ae08ade5f38b293da3deba46fb70be64478b8391e18029859d"
    "ru"
  end
  language "uk" do
    sha256 "f7bf88d21386740a6c322fd041e3f888258e19ee78ce1a3116312cfff6fd7a58"
    "uk"
  end
  language "zh-TW" do
    sha256 "17906c8bb16cb1c4a0a9dc0e0ce83bc51efb0c5c5a77621d3ee485c03b3d7540"
    "zh-TW"
  end
  language "zh" do
    sha256 "6f534f89c255069da9c2e17219f3bbd98610a00abe1c92b81bb3f6850b91401a"
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
