cask "firefox@nightly" do
  version "160.0a1,2026-10-14-21-55-50"

  language "ca" do
    sha256 "007536af6abe6b7777a6b253b012cc72f6ce62faaaf1d0224afad6837da35dee"
    "ca"
  end
  language "cs" do
    sha256 "d2154b2303c6d12995cc29634fac2b2c3ff6fec6fa81b1946645128f24e14eda"
    "cs"
  end
  language "de" do
    sha256 "184e8113f1037dec54ed93058e9493567007fd0d0a5dd2017e7260aa5ac9644a"
    "de"
  end
  language "en-CA" do
    sha256 "8fd868656b7e43a2c8443b4d70029442316fa4fcb7ddc431c7fceccd9de0e8cd"
    "en-CA"
  end
  language "en-GB" do
    sha256 "a6588e56811412782ae523e9bb07c94c2360dca3edc80e735c96d7314f86af1c"
    "en-GB"
  end
  language "en", default: true do
    sha256 "6b67ee1244ebd8e38077f9be28478fad374458facbe12fdf81eeb72354c6e934"
    "en-US"
  end
  language "es" do
    sha256 "8a8513fdfc9fb9450ea20d1242d3af4187b9f22e29954e1bff9a3f520f4b8b8a"
    "es-ES"
  end
  language "fr" do
    sha256 "0726bb2f53422eb5b0d0d24b0d9769b020e7cc9be3f4c87a8dfd70a5eeac8419"
    "fr"
  end
  language "it" do
    sha256 "249054d631abdea50bcf0e276ac28ab8e4d0971ed60b6c3a621dfaac3604c0f7"
    "it"
  end
  language "ja" do
    sha256 "4ff0d508ef72719161d2c483a4b8f3e149698c7ace0f484753f1c6db0d113157"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "3f8c8e73aca03cfcea17b1400da8a14b92cd1d5df54dc6c39f41d6ee2b44e0de"
    "ko"
  end
  language "nl" do
    sha256 "28f95e4f2c440e54797788fa1d5fd8ffc589652b66ede3a73e504ec0dce779bf"
    "nl"
  end
  language "pt-BR" do
    sha256 "e82f8460fd37d9b2da7a72f9c18a919efbc40e72423bf2e8d6a6a08da582c9bd"
    "pt-BR"
  end
  language "ru" do
    sha256 "c9f0a64960bf7c349230e997909e35af8b06408b8706753a879cda45d1460849"
    "ru"
  end
  language "uk" do
    sha256 "24b86afe20aa6349e5676a2604d75afe2370ff8fbe4c5f19692f31fece80fc9f"
    "uk"
  end
  language "zh-TW" do
    sha256 "6bfa05f07223799c6ceb6528bc5d93b491d43c016665f39ee4c2c300d4aaaefb"
    "zh-TW"
  end
  language "zh" do
    sha256 "cb3d04f7f941be686dc919e0409c65916aa44ee253155ef67a50f3fb503bf268"
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
