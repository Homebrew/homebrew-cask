cask "firefox@nightly" do
  version "162.0a1,2026-11-13-21-17-35"

  language "ca" do
    sha256 "62d8fa87b3e1b085ec5d44200dba2320aef693fa9164f083964c84d6c1f2a6a0"
    "ca"
  end
  language "cs" do
    sha256 "46c6a2fa55f1fbb23c6e1243584a043b980bfd7100cc0154f4188e5165f39565"
    "cs"
  end
  language "de" do
    sha256 "3720c7b6be18d7257832b605b481c8e43ab6e29a0871f1913108afb95d8f9a84"
    "de"
  end
  language "en-CA" do
    sha256 "01a8f0a2bf8597b4828d797d8dbcad305d8b811d1ed7e93fcad9f397a487e291"
    "en-CA"
  end
  language "en-GB" do
    sha256 "cddfd342c408224a57dc92eaa3bb11c889d2e34ef0c74ffe4e83299e5d2a2fba"
    "en-GB"
  end
  language "en", default: true do
    sha256 "df4c00426d766e8444e35c71b3d9addff693c34fea5d55d89f4caeea20896c6c"
    "en-US"
  end
  language "es" do
    sha256 "5ee1f1f81b7e62b2dca5d65269871e881c5b5d112fbb53883b19df2722dce693"
    "es-ES"
  end
  language "fr" do
    sha256 "9b0d16e171a23807684f540edd4a114c5c9f8c7153519633b2cebcb8776c451c"
    "fr"
  end
  language "it" do
    sha256 "980fe47d35ba7532929de75977bdafe8d76dcb3d6861cc5bad8584b30ba03d6c"
    "it"
  end
  language "ja" do
    sha256 "dd64bc29df17cfc614a5f72ed63eb1bdbaefcbe8bd20633c1af6f94ab32b896b"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "94acacd4a1ab528ee4585444963245fed38c1f2ff72ba5afcb5e50c623aa8e85"
    "ko"
  end
  language "nl" do
    sha256 "2eae66dd215f67b21128fb13cc8668c002ba3bbe4204984f8b4c1a4d2ba8d02e"
    "nl"
  end
  language "pt-BR" do
    sha256 "2d8ecdc2db6cbcf9032398683cfecab14b1ee518bc8712663cad97d3552c6522"
    "pt-BR"
  end
  language "ru" do
    sha256 "334e56a4187393b2f06329fdf0b4a99d245b84e7df4ba4a8a3bf8ed9f2f30dae"
    "ru"
  end
  language "uk" do
    sha256 "611e47fbb3a2de303c1c27d5778e3e4b3a82b3ed2a441b5c0162eb28c1318f25"
    "uk"
  end
  language "zh-TW" do
    sha256 "55d8af3450bad7a4cf3e9beac657e9013a22eb1d340efc730c419cd6e2375ad9"
    "zh-TW"
  end
  language "zh" do
    sha256 "3655b82aba31700fc34fb5aea33e1b0f7535f5f36bbdede796fb8b0f68c31a0f"
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
