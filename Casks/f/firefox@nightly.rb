cask "firefox@nightly" do
  version "161.0a1,2026-10-30-21-41-48"

  language "ca" do
    sha256 "5dd94d8406d9100471ead0970f04b32bace17eaf1859e3fafdc1f677be181e26"
    "ca"
  end
  language "cs" do
    sha256 "a00763e55c37714507a09c353ef5a3995e4e21d11c7e858367b831a4291c7644"
    "cs"
  end
  language "de" do
    sha256 "7b19701152b25f7efc80b8db66ae4f112fea1d1fe88cf3a1db74b2ea124d7c0d"
    "de"
  end
  language "en-CA" do
    sha256 "1c03bd9a72723d8663e597ebf829b09b258bfd2d31ba021ff3228fe0b2584247"
    "en-CA"
  end
  language "en-GB" do
    sha256 "e93155e41581ff80a3c4232ddf0c25adb406ae5a9b5e47b47c12f393a0c2198c"
    "en-GB"
  end
  language "en", default: true do
    sha256 "0820cd31ffd1cbc21b2c5aca9d08323a0344e71bf4bb5e74e9e8fd41ca93f88b"
    "en-US"
  end
  language "es" do
    sha256 "f83b8b8cd96f5750e21c9b06a0984e9b29679718da17e3367c3f8271ad0a0be9"
    "es-ES"
  end
  language "fr" do
    sha256 "ac4aec38e9c257327b1a8f4932374f15e383218dd36aa1a91c2f5652e063bf3b"
    "fr"
  end
  language "it" do
    sha256 "42c8f723e7000c7458e3ac44b64d4662922377ee37004a2b858bb3ae35cd8ba7"
    "it"
  end
  language "ja" do
    sha256 "a6c494e33e51a7b1b35a41a50bb4bbeb1d53fc97d5761329b19aed6557c687a0"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "3a71ea477bda28d1dc89f33a189cfa28d37f6af49c0135eeef2cb84ba33b2b14"
    "ko"
  end
  language "nl" do
    sha256 "711f2c16b582e4ea1a087d70fb9843bcaf379ea0fa1042fb6591a24ceeffe29b"
    "nl"
  end
  language "pt-BR" do
    sha256 "c9397a9e4ad684cf6599618f3d43562c8a93b17ed14c04522e41f4c9abd6fbc0"
    "pt-BR"
  end
  language "ru" do
    sha256 "433c210bec8e0d3f83f762ffdfcd1c158f6b1b4e87f92007837697977433f0c5"
    "ru"
  end
  language "uk" do
    sha256 "672d34d3f24def7eab3dddfb56075d92084a0168e53ffa16e88ef6926cfd860e"
    "uk"
  end
  language "zh-TW" do
    sha256 "314fe706a61c0c00b37246467d2e0a969e0d1587cf65427c61d3194743459d46"
    "zh-TW"
  end
  language "zh" do
    sha256 "5aa98135031befa993da72580882ec5d67e5b43c63a5d60b59c0b851cf8ac00f"
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
