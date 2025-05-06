cask "firefox@nightly" do
  version "140.0a1,2025-05-05-21-47-27"

  language "ca" do
    sha256 "90e34ee86bc6c1d8ba5f158c102c323110be44fa3d7c32dc3c1a6bebf8363fa9"
    "ca"
  end
  language "cs" do
    sha256 "9b37b4720dac0322dcbd29be277ec5e8968c6c592c0ae7301e6b1c04570b0418"
    "cs"
  end
  language "de" do
    sha256 "c68616754aea0813d476db2e9a55d4559a66e4c8475c4c3630d0562709ababf6"
    "de"
  end
  language "en-CA" do
    sha256 "2c2ede1e942f6fff78f093eedd91f4fccaacc7a717a523cf4059fe28fb4ad615"
    "en-CA"
  end
  language "en-GB" do
    sha256 "123e3b34d4781db53ea91a5887992c2e586f05eb9d1face691d4e2ce5a9a5853"
    "en-GB"
  end
  language "en", default: true do
    sha256 "b83ffbae1239ecd62e4fa1432cc29e79c163534180ed19b79c5c0e94bd019c0b"
    "en-US"
  end
  language "es" do
    sha256 "e1cc75877f6e6041eeb06db4c411f497d2c956acb2de7d733885a371e10b1c8e"
    "es-ES"
  end
  language "fr" do
    sha256 "4bec37917ec47dc95b418bee123aeab7dc682ce0059a8f0e83bc0af142e30486"
    "fr"
  end
  language "it" do
    sha256 "26d3700c4cf49e114ca2b9f69cd3e7e3a9dc916717133e10adccd49439299d67"
    "it"
  end
  language "ja" do
    sha256 "b75c5518d57fd68a62921d1478a4f87820bd2a76bee9eadceb0a94b4a2af8ef7"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "ee2273da7fc7a7120c2883de4214cca3a6ca9b1518ef6fa4c91209d77c4787a5"
    "ko"
  end
  language "nl" do
    sha256 "374e84cbdf6a79d3cf2437b030ed8bfdcea9e26375024c6f32de7b7418baf052"
    "nl"
  end
  language "pt-BR" do
    sha256 "cb1f88d0b2b73d636f21bf497563d57f3d5070f4edfcdfd7f6390b60f773c247"
    "pt-BR"
  end
  language "ru" do
    sha256 "7df6b256141b12a52846e00a0e39ce740531a20c99f0688d7df2fd8bfe451af4"
    "ru"
  end
  language "uk" do
    sha256 "7377fc579933d1b5d5618c0f923740bd401d84b93ded555f889362b5a2dcf938"
    "uk"
  end
  language "zh-TW" do
    sha256 "6ca0ec430b5d36e649c1ecc7260ae0161aaefa2028d379233ec18431d06faaf5"
    "zh-TW"
  end
  language "zh" do
    sha256 "bcee0920721053878a6f9db8187cd9767089d3db27e7800f27d71b1318603c45"
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
