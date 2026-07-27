cask "firefox@nightly" do
  version "155.0a1,2026-07-26-21-50-19"

  language "ca" do
    sha256 "d4ebb065377342ad4a34f9a20c7bce5d15ee946791744e74efc6518948747d9e"
    "ca"
  end
  language "cs" do
    sha256 "09dce2a77879202cd80e50f2c4b295d4c444faf19cb8ae844f60d0973ff73468"
    "cs"
  end
  language "de" do
    sha256 "219609b193e5757091f328f9d95e958b0af6535d2c944f2845cf58170e9fab54"
    "de"
  end
  language "en-CA" do
    sha256 "10dc3a7ffa24551e9accd5c29fa7c93c411dcf1d642995fd8e478d930db17e63"
    "en-CA"
  end
  language "en-GB" do
    sha256 "a06eb09abbd1da1557d66009e69947488173e23293e06b8990c67b70ddbc38b3"
    "en-GB"
  end
  language "en", default: true do
    sha256 "f54a2fc866823bd0a52b32259bf0b820f0c8b61b1db20128163e80f3e0d66f99"
    "en-US"
  end
  language "es" do
    sha256 "607a326f46052dd34d021d8144c381065a81a0216e3dd942889bc2a51957b113"
    "es-ES"
  end
  language "fr" do
    sha256 "3eacc9ce2d0db3d5e26a7730297f455bb3a1608c309307927aaaf35a820476a6"
    "fr"
  end
  language "it" do
    sha256 "5450ac9b988b9787d9ea1e308e7953026f1552dc63f0e692e330310a027d8647"
    "it"
  end
  language "ja" do
    sha256 "bde39a7d58e2697558fda19d4a3179989ef24561095afb5984f450b5a76a3348"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "648a026da98d744aa1da1c2b032398ace646aee4b4d1389c872224bd75578a1e"
    "ko"
  end
  language "nl" do
    sha256 "62b370f23a207794a89f819e617a18dafaab7eb7d5ee845a42e04d56a6147988"
    "nl"
  end
  language "pt-BR" do
    sha256 "5301b2816ac94ff3c874b6a26591015694e7382ebd24681e4b3d70c9ba260307"
    "pt-BR"
  end
  language "ru" do
    sha256 "371f4536a511918f70267af8704dbf064bb5a0b29c899920d01722a6863ec01b"
    "ru"
  end
  language "uk" do
    sha256 "d971f4d1a26736cbbc87ce0cd2fcdc0c5c02746108ae94345a6babd753da24fd"
    "uk"
  end
  language "zh-TW" do
    sha256 "a0b6c245c6254cabc55fb337fa2afe86fe83bc0e32529d4150ed80b34a5482b0"
    "zh-TW"
  end
  language "zh" do
    sha256 "e4d5c297f0e4ae53341d96199b454d866c64eda9c4b65124dc7535e87286186f"
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
