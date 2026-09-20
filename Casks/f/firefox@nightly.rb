cask "firefox@nightly" do
  version "158.0a1,2026-09-20-09-44-37"

  language "ca" do
    sha256 "e8d249db3cf7f844d4f3ee64ba781e04f8cfd3e4ed338d015b31dd6a78a16f88"
    "ca"
  end
  language "cs" do
    sha256 "70d8b4c56e521dbec8611e07c55cc671c5dd7f5c5cbccb5ed6e5396649b5508e"
    "cs"
  end
  language "de" do
    sha256 "f525b4bed995bedac26f8bc7ffbe488f063e402124fa12ab3939b983f79f6d47"
    "de"
  end
  language "en-CA" do
    sha256 "5c8fbf1ee0d810d230f08e8b2a33e9e13559a24135fe0497a68274493c8f561b"
    "en-CA"
  end
  language "en-GB" do
    sha256 "c0d74de66ed8c20784ced28f80a4824cb5c043034168968567be034658b5c689"
    "en-GB"
  end
  language "en", default: true do
    sha256 "afc462bcfdb97854e1a4206fd5ef43fc69b054348e60d6205b514c11c91bc687"
    "en-US"
  end
  language "es" do
    sha256 "9f6547f6a622c5cdce74272f44533ae64f5c1e00608d9838ac3c551af369cdb1"
    "es-ES"
  end
  language "fr" do
    sha256 "41975018d569ac76c08e177ecc67ac23d779b331a66198e65183342835a33c4e"
    "fr"
  end
  language "it" do
    sha256 "1755245c9143b133ac23846f94dbac42c5b1e2bd6b7531081f8b35c775f2d73f"
    "it"
  end
  language "ja" do
    sha256 "8f495f53825c91eaedaa09abdeb6a91a99fa15a41a4d5641418a77f84c927a6e"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "c7849d6c8f020a6ea1a578f9596ac09a34ccda4547f3e623cad3deb4b790bb55"
    "ko"
  end
  language "nl" do
    sha256 "ee748b081e5789fbcee9cb5da30904eb71ffaba6686a6d7b9c6bc60296b15064"
    "nl"
  end
  language "pt-BR" do
    sha256 "29727fb57fa78e16b3c04416582d3a7e8bb43566dd655990b277648cefae8f5c"
    "pt-BR"
  end
  language "ru" do
    sha256 "66f4dac15177eeae7f5e5e29009e2e269c17401be8a40445ee298a636cb5733b"
    "ru"
  end
  language "uk" do
    sha256 "8b017e44305e8046c1cb1b74e255bbb48acca04a470568a74644604a4f37cf03"
    "uk"
  end
  language "zh-TW" do
    sha256 "2513cb71264b7067580c169e55fbad886f195cebb1deea1026091de6aa81978d"
    "zh-TW"
  end
  language "zh" do
    sha256 "5aca6998542ebac192adb5e17ce4df5a2c8747bbf8d3a85c4a6547d1994917df"
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
