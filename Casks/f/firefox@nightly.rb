cask "firefox@nightly" do
  version "145.0a1,2025-10-07-09-51-47"

  language "ca" do
    sha256 "4f45387a8c7e5291229d7fd854dfd5cf45db5a9fc15479b9f1604cba541d5abc"
    "ca"
  end
  language "cs" do
    sha256 "cd5f5e120a0564437f799451d6185d429cbcdee19354b385b03b12c1ae4a8c86"
    "cs"
  end
  language "de" do
    sha256 "46d97a44a91a377d146f53b79f268797a62c19090fcbdf74f668bd3f87badab9"
    "de"
  end
  language "en-CA" do
    sha256 "fd0d80ddc4cce809aac00a5035e0911f644f57c51e717adf050e9dc664c19412"
    "en-CA"
  end
  language "en-GB" do
    sha256 "c74674e9fc91d25739bd3502d4baf2a103893938a4bd5923cc9ea470e137b070"
    "en-GB"
  end
  language "en", default: true do
    sha256 "3b0ce0b5c08a56def070ea735597d551bf31d8eeac97c59fbf0f01413375c171"
    "en-US"
  end
  language "es" do
    sha256 "08a3075ea7ba30266d945ae0fcdba83ccab0e0430a6ab0d4969f81695db03f7e"
    "es-ES"
  end
  language "fr" do
    sha256 "e4fe76367d22b120b8a954a5d79429fe3239767e0b8a4b5ca4e9b9799cdfca40"
    "fr"
  end
  language "it" do
    sha256 "c8abc2a4be9677817c33f7c39bbf055bdc2d47aaac7bd6d2055f712eb40cf385"
    "it"
  end
  language "ja" do
    sha256 "dd3f33b052cb58d73e387b0b5d2cdadd86e5b77824184bd512e6f0f96283cb62"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "f59cb38eee1ae723d416c38f2798d4766e227d6baae275ab53e0f5f537799d3f"
    "ko"
  end
  language "nl" do
    sha256 "73b3be31382cdc287cbf6aa001195eb1970c9aad0a2bc9e4aaf218c0a2a3a107"
    "nl"
  end
  language "pt-BR" do
    sha256 "7ea711a94447c67fa6dde5ec049237b2e25042763b4ad85029144fe9fa35c5cb"
    "pt-BR"
  end
  language "ru" do
    sha256 "d4e021f402d84d0256f527d61f392db938d25179c83fbbbed2762edb544b1db5"
    "ru"
  end
  language "uk" do
    sha256 "3fc866ef653615e4acf031d1caec3f24eeca155bf2f0954756c74ffd2d908174"
    "uk"
  end
  language "zh-TW" do
    sha256 "1f5d94c9a2f1b8b3eb19b257512d99dffd51959fa0bd23b5789ef35bf0e5c110"
    "zh-TW"
  end
  language "zh" do
    sha256 "e622931a24d400ad3bb347361f38d7f59845ddf84f5d86b9702113f08052db00"
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
