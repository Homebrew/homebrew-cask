cask "firefox@nightly" do
  version "155.0a1,2026-08-01-21-12-58"

  language "ca" do
    sha256 "a8a07391f4d341c95b020f25804fb8277be846fd8ce04776e21e8eef157f7c69"
    "ca"
  end
  language "cs" do
    sha256 "9ed5eeb8a6531b338134e7a56aa7060d16bbcfd238f8329a45ae8b9558f11b0d"
    "cs"
  end
  language "de" do
    sha256 "36db9ff3c9b2bddd51b749067a154851944bcc2610778158d31ebd9e511a1c92"
    "de"
  end
  language "en-CA" do
    sha256 "a36fed08b124906d4371d3256b1e76356f50c7a9d9f4dc5a7c54cb716f434e0d"
    "en-CA"
  end
  language "en-GB" do
    sha256 "9bdf24a266d6e09d3a4f89c4c5ba3ccbd730345557852cd7a2385a9fb5a31d10"
    "en-GB"
  end
  language "en", default: true do
    sha256 "7993f6ab0f2dc5eb4ebb98d5bc772143882fbd265e61d5efdf131001fc8997fc"
    "en-US"
  end
  language "es" do
    sha256 "60f36e2f8fa297868e678d5d5ff21a8eeb3e902364dacfc31aedd4526d4ece67"
    "es-ES"
  end
  language "fr" do
    sha256 "327a4e969cc88f5d093b8b9d6bf1097c9b8f6b827346ef4b14fa9dd80fc51ac3"
    "fr"
  end
  language "it" do
    sha256 "2e99cab501c1569263d0680a464a5631e212f65354ed1c2790ca2e9b0a5d04cf"
    "it"
  end
  language "ja" do
    sha256 "803c189da518533f35e65a2fdbb3fd40d936d53ffee10da59cf0d36609109cbc"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "670fdd1a843e9f6a3bb9fcf430977fd85c60b5423601ff3d583b908a3f3863c0"
    "ko"
  end
  language "nl" do
    sha256 "211331c4560058dc1bbb87021e92976d9b8328a83d99c9f56853fa97d97d216f"
    "nl"
  end
  language "pt-BR" do
    sha256 "38f09652960192c3cb4c7e476c7cdfaf4637f1ac69660f00eb2f6ccb4ea2f3b5"
    "pt-BR"
  end
  language "ru" do
    sha256 "52fdcf1db11b5a146e937b15c47ae41db3dbf274e41b5cfab467879ebc74aa24"
    "ru"
  end
  language "uk" do
    sha256 "9f90e1534bc848523d39f9e7fffa5d0121b553c8c13aea040bb2150d5135a7a3"
    "uk"
  end
  language "zh-TW" do
    sha256 "785a2338326b79dfe9f7ca402a748b6ef1893b43b04334b2af5ea51f0f1e1947"
    "zh-TW"
  end
  language "zh" do
    sha256 "98909a94a5fa7f32637367d5aa779777b16717710891c90cde16ed26421c2b30"
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
