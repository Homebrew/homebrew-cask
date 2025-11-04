cask "firefox@nightly" do
  version "146.0a1,2025-11-03-21-36-17"

  language "ca" do
    sha256 "0375572c6a526a40706cbb47cc9bb07374a8ca10e212e95febec876d7e27766e"
    "ca"
  end
  language "cs" do
    sha256 "25ac5748701e9bdad7aafc8b922928afc2703a8cabd3ef0256ce3c124840c70e"
    "cs"
  end
  language "de" do
    sha256 "5caf99cfa5bf047332b1c505495200dd5d25d51235d3acad433f307e0d2fa0f5"
    "de"
  end
  language "en-CA" do
    sha256 "dba37fa24b0a8e65929f020dfe3d5f3b75bf964ae77bfe17db1cb2ba665e404e"
    "en-CA"
  end
  language "en-GB" do
    sha256 "1f38fa098bfe6e82623a11dbbca7460b34253175fc2c12404397498eb6a65141"
    "en-GB"
  end
  language "en", default: true do
    sha256 "7b815deda9b642265668289c10d4655d1392ec23f4522f2f89befc7a69d4914f"
    "en-US"
  end
  language "es" do
    sha256 "278e4f8c12d5b505994ff144e021620cd36d006bc86f2d48ff0cd4ffc8c65fec"
    "es-ES"
  end
  language "fr" do
    sha256 "c6ba3380c9b0b4cb296e36c7291bdd8aeb9c944900d3b5a86f7afe6c2207690d"
    "fr"
  end
  language "it" do
    sha256 "f617c421e6856f50930b77345d0f998a2c3202b5a241e65edffd6679b7ee35bc"
    "it"
  end
  language "ja" do
    sha256 "9f361f75c3c3565151a03e2754d2cfe82d489545a74ed087e2ded59069fad151"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "00d227db2a7e4a0d99aa20f61d53d5b45e65fe032ec49d928ca8fafed090abd0"
    "ko"
  end
  language "nl" do
    sha256 "59d524d4fbdc44bcfef453979144689bd33df606cebb0d0cf12229e0edeba259"
    "nl"
  end
  language "pt-BR" do
    sha256 "194c1271776a56c21079154f4c760665a589df3f06251bf5bdf192144557e729"
    "pt-BR"
  end
  language "ru" do
    sha256 "d8fd779f53c3fd5243605795c0fa5cd8fd915bf90350e6259115ceceacac1698"
    "ru"
  end
  language "uk" do
    sha256 "564b1c69b1553c9b944be5bebc3ea60b8abd98ee31d676e5e54424775d296fa5"
    "uk"
  end
  language "zh-TW" do
    sha256 "19e66a347b08538a1da5491edfe7f040fc63085ca7367734e36c376644dc8731"
    "zh-TW"
  end
  language "zh" do
    sha256 "1c0532116907ff2e3763cbd4af71801551de4fc79fc47d04997d146e71f83fbd"
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
