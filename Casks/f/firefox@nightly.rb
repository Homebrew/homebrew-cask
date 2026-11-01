cask "firefox@nightly" do
  version "161.0a1,2026-11-01-08-59-33"

  language "ca" do
    sha256 "43e13b31b247de137427df64eda1127a6903732e17c1860510329de98190d96e"
    "ca"
  end
  language "cs" do
    sha256 "950e8dc1231be069d2667edff741abc90ca4d432527a0ccc5b2f50c1c95b41c9"
    "cs"
  end
  language "de" do
    sha256 "4e9be16918db9e5bde2fe6860ccad5f413609af885e4c5206135a9df1176126a"
    "de"
  end
  language "en-CA" do
    sha256 "54d3c5b9038f1e02e24318059da65cf6dd4cad9bee087dfb4851c70ffd8e42b7"
    "en-CA"
  end
  language "en-GB" do
    sha256 "74c3b6c3f2006b93f878cc4b48ee25843454ed271eabae574eff79362d712078"
    "en-GB"
  end
  language "en", default: true do
    sha256 "d4d27fd576bad8ce7a521c3ddbfe717f6e105b27c6fac90e32d218f192f6be81"
    "en-US"
  end
  language "es" do
    sha256 "3851fedf04bd4ddbf5b142ab657d4a65526bdc340499c74a6efe8963d893af03"
    "es-ES"
  end
  language "fr" do
    sha256 "8d701497c373c3657e0c759c012a028ce26205a6aa4929d64d7411d560a4de4a"
    "fr"
  end
  language "it" do
    sha256 "95222bb4d182bdfeb0ba3498fbc5990c9927afac1145f9e198d9c31dee8caf29"
    "it"
  end
  language "ja" do
    sha256 "e4235c38dfdb9ce4cfc3baeda8dbf15b60e5c5115cb309120ed29b8e55a479af"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "9f1888ba6d76ef3cb7a95bdb539bfafebdcd288e2dee5a03623b6b14d7e3e829"
    "ko"
  end
  language "nl" do
    sha256 "bbc84d26db5de18f32163a0ef9fd1f80f9d82bfc34e97f6024621271d466a296"
    "nl"
  end
  language "pt-BR" do
    sha256 "3327e00aa0b47ca1fea74640f1c4eceba96675eff7f81f7abf1b68fe118c312e"
    "pt-BR"
  end
  language "ru" do
    sha256 "5fb7c1abaae2c9d4502ddbc4ae44ca21be574319265b125ef5329c58e1ab42fa"
    "ru"
  end
  language "uk" do
    sha256 "7b32ef55769080c913434a3043e24d25a1d53111ca456e71ea9c5c91577e57ac"
    "uk"
  end
  language "zh-TW" do
    sha256 "e89d6a0c242e6cfcf118b427af33e685fc89ca015b56fcd5bbf2830d6e367a06"
    "zh-TW"
  end
  language "zh" do
    sha256 "04d542345da80155b07a822996bf7eeb4648f25b9e1699c74e287ccf81b5ffab"
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
