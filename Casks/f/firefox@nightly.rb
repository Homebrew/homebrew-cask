cask "firefox@nightly" do
  version "161.0a1,2026-10-27-09-17-53"

  language "ca" do
    sha256 "809cefc9a75aa1c33c8c673c8f4574e69092b52dd1e2aade9a862b61423716ba"
    "ca"
  end
  language "cs" do
    sha256 "eb404e5d72bc6702fc74c05b59f770a2feeb5932f05cf2191649961e7e9509c4"
    "cs"
  end
  language "de" do
    sha256 "7bd8f9ab727b5c348cfa7eb7ab9f7f79b6cbe150a8fd89a7f298ce2becd7b868"
    "de"
  end
  language "en-CA" do
    sha256 "90a400341e9e8a8e7566c53fca559cb209cf1eb6030e0041eddba1f25526101e"
    "en-CA"
  end
  language "en-GB" do
    sha256 "20a2c6e7f9441fc959552bc472fd2e09e14068a8059a99b571784ff4eea0e62f"
    "en-GB"
  end
  language "en", default: true do
    sha256 "b9565dd6881fc4eaa02aef9e6463ed0044b7aa53b8fce40d2e4ff53e6b7eb4ed"
    "en-US"
  end
  language "es" do
    sha256 "95db2e9cc0370be56a9a0feaf3a15a8e7f41931ad284a8a94d2cd8ae31b591de"
    "es-ES"
  end
  language "fr" do
    sha256 "bf7f7c217c804356690a9c798627cfac90abdf6a4fb76ebeb4cb51fde403fdf1"
    "fr"
  end
  language "it" do
    sha256 "9a30d9a244e278378171afe54b0274a4a9be62be63b3fa7b11eb50d9ac2fa64e"
    "it"
  end
  language "ja" do
    sha256 "4cac2fca4260fe2db52535f0539dce62aba0e72b1568fd9d78295d9ae5a8a2d3"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "d14e35dd9a84f2431b51f282cc0c4ab77f5b0484f6c4373d7f661fc873e8d19d"
    "ko"
  end
  language "nl" do
    sha256 "1ca26f0d979d33c59dac1515db58aefcc8c485d6c0098ef897bc08f8ed2d3f77"
    "nl"
  end
  language "pt-BR" do
    sha256 "4f28b893c8be7dca6d70986b551873e8a7d2e1a37740013433771dc8f89da0db"
    "pt-BR"
  end
  language "ru" do
    sha256 "12fe0a74f8a00d3dc4343da749cb4d884d00bd82aa7f646ad0c115eeb056c4d5"
    "ru"
  end
  language "uk" do
    sha256 "7aa2b399a4d43fe1b461aeb6e433876fef831abd7581eb6d7c9c0297a5ba8bb4"
    "uk"
  end
  language "zh-TW" do
    sha256 "0b853c209b802c18a3aa8213a0b41d08dfed189c0340fb30dd95d50f77107b2d"
    "zh-TW"
  end
  language "zh" do
    sha256 "1c84da559c5c58d68245fc344eb84614bf3e73247bc0941fe5882e90aaa711a9"
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
