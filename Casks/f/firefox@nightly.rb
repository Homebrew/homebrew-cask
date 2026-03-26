cask "firefox@nightly" do
  version "151.0a1,2026-03-26-08-06-30"

  language "ca" do
    sha256 "ff90e9e5e16ce1b8207d6284fda5ddc05423ea0c617c235252a90f5b5d818567"
    "ca"
  end
  language "cs" do
    sha256 "4231b05bafce2bb634d9334abe9fc5f91fdb4c93648ee87ca66dad1672dece3a"
    "cs"
  end
  language "de" do
    sha256 "a921ecc04f5e52f33f9bfa3876670f20fb07ba5477da32b6abd028fde2f870f7"
    "de"
  end
  language "en-CA" do
    sha256 "37c26dbd021f577767756885ac195699a591df9d50ddfe37d2d3a1b73ad13e2d"
    "en-CA"
  end
  language "en-GB" do
    sha256 "3eded24f8f5d016ae783d9296cc6484afac9d214b473968f4c76a42a6624548f"
    "en-GB"
  end
  language "en", default: true do
    sha256 "b48fc6a9c0809fdf53b3a0e8f73aa14e719fcf30d02c38c3560a3b1a02e17c37"
    "en-US"
  end
  language "es" do
    sha256 "c22bafcf8f582b132fb509b8d3a8f07c2ad320731e8d6182dfaab05a886f0d51"
    "es-ES"
  end
  language "fr" do
    sha256 "f31455a03fbc0460bf011111201f2023b25dc343ba9c12b2712c76b47decd229"
    "fr"
  end
  language "it" do
    sha256 "a2473cac5e79850e11f432bc62d557b4cfc497634deda541cd56bda3e73e8ae5"
    "it"
  end
  language "ja" do
    sha256 "5f3410d0499dbb4307a381409a364ad60020274e3529b98e48bbc198b70269a8"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "b5797d53ef0d1293cd53352b9794659dc773405468720e65057676e6521f44ff"
    "ko"
  end
  language "nl" do
    sha256 "7df2dee474831fb06008ad6dbbd8ae3004ca35a47594b98f39c287aed50f614e"
    "nl"
  end
  language "pt-BR" do
    sha256 "8e4e05a0c4a87116858a0c5275a0a697be40f07102fcd4868d31dce928a9ef5e"
    "pt-BR"
  end
  language "ru" do
    sha256 "acd3912db6c622071e5e9bf83b887096fcd11683af963c3200da86e60a4b0b27"
    "ru"
  end
  language "uk" do
    sha256 "db9a42ef6a22edea0ede58e179447650c454a2bdac01886fb6ee8aadd3cde2dd"
    "uk"
  end
  language "zh-TW" do
    sha256 "91cf94b6cf650e43743a59be70d422938a0593327bda82c3740891cb3ecd057f"
    "zh-TW"
  end
  language "zh" do
    sha256 "cf367abc345bd0531add1f1e74222135df425e00d374f6ccf9a298dbd6bb02aa"
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
