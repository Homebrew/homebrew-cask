cask "firefox@nightly" do
  version "162.0a1,2026-11-15-21-35-19"

  language "ca" do
    sha256 "f40239ff791f703c97e3d989741e328fd8f31a5f49db4944bd0122d153050750"
    "ca"
  end
  language "cs" do
    sha256 "260a80cfd6677edf3353bc6e493e995226b6c298d86e8faddab14fc1d8f9cb91"
    "cs"
  end
  language "de" do
    sha256 "2d346ad5c779cf653c5c624ff90c64d71d6eb4324a07e3802b034510ddca544d"
    "de"
  end
  language "en-CA" do
    sha256 "debe9cdb89eda8fc66fcf2744825e1940520012775ea1b70ba9df6c036e5707f"
    "en-CA"
  end
  language "en-GB" do
    sha256 "4b736af151803fe801b58727e29fc4a68e639a8958538c43c8da0c83320100bd"
    "en-GB"
  end
  language "en", default: true do
    sha256 "afd6bf91eefec8468336e67081aa63c5977a73a5dfad79c3f2d043f1ab7e09d4"
    "en-US"
  end
  language "es" do
    sha256 "1f280e436af9615e7386a3ef78f30fe0ef151979fb9c62654789b8a22f395d90"
    "es-ES"
  end
  language "fr" do
    sha256 "74d5a990edc1f4b7dbeeb497d9af9f07fbf1eb8625d0257d99236ecffb2d72ae"
    "fr"
  end
  language "it" do
    sha256 "5863ebfe8a03f6dfeae16e930aafe3bd9484c66c6ed028081befae120a15a98d"
    "it"
  end
  language "ja" do
    sha256 "f86228b1568a8627ba9de72a0173b4cbd3abfca02553dec6476f2386f04e7d52"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "dc20c72ed99017d390eceb314b466388f86c80a125fb20c1e94d1cf04a7919f6"
    "ko"
  end
  language "nl" do
    sha256 "0ce8cd265abff4789364da224de3b40d78d7ee8274da080a9a55db6befdb7fb5"
    "nl"
  end
  language "pt-BR" do
    sha256 "f6a57b43898c8b9abc166941b3901058c2feaa852e804f08b288eee1517bfb2e"
    "pt-BR"
  end
  language "ru" do
    sha256 "10dc05a1f7256af7d81f0f81ae6e55af3ee938164a1459cda9f348abf77d7aa4"
    "ru"
  end
  language "uk" do
    sha256 "0294ca9f9e0b6284c61439493ddc61412473a3701274b0a19708cd9ef953ce26"
    "uk"
  end
  language "zh-TW" do
    sha256 "ebf015511cc5e0f89af430bf17c54a59fea7f3bdb157b28017495cacfcd3c7b5"
    "zh-TW"
  end
  language "zh" do
    sha256 "46a9ead46f546edb2092c14aed5f1d344f9bfdf99b96a83ee6526cfde9b2801f"
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
