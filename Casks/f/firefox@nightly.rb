cask "firefox@nightly" do
  version "139.0a1,2025-04-26-21-18-43"

  language "ca" do
    sha256 "f58d828adcad9408d12c1f512d29eae0e35093f545ae7d4b4d85124e6eefd457"
    "ca"
  end
  language "cs" do
    sha256 "9127ba373f128c5d830324e1bb17f481b8d56b844550f6933171494f936f0e38"
    "cs"
  end
  language "de" do
    sha256 "78f79afd790d1d81d2fc0dffb1a9bd437e06d00c6828f3eba27f561d4314d82e"
    "de"
  end
  language "en-CA" do
    sha256 "6af556baff35c4f0cc89fba1bcd7f8358541a1c50f51388996e76e8946fbcb2d"
    "en-CA"
  end
  language "en-GB" do
    sha256 "4d8156e58a72e1bf55c6983dc8f21747146e199945897fadd182651790818590"
    "en-GB"
  end
  language "en", default: true do
    sha256 "01c99a4e26f9bd14e2668703b07b69c83f8a0866a737a11c93654e5fcd3bc088"
    "en-US"
  end
  language "es" do
    sha256 "4d163eab029f46bad5cbee0b7f107529a5ab26e535370b196cee696ef51f6f5c"
    "es-ES"
  end
  language "fr" do
    sha256 "5546401ccfbaa40594a9ec353d7adac3d7faf05456904eb5487d82ede732c684"
    "fr"
  end
  language "it" do
    sha256 "f011be89fe701e8e766952e081d3ab9a1f3a24b24fde285f6c713b529127d12e"
    "it"
  end
  language "ja" do
    sha256 "1956a399c3485603fcec8c8b7973a37997f86dbbb22e4103bb96d8d9fcb57244"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "33abd198bd11a45afaa491c0abeec9c286a1029590a4d0c88693b85707e0fe4f"
    "ko"
  end
  language "nl" do
    sha256 "1d27f92d76c544f69cdd19e7facfae4c99f1990f309b713d2aada43761664339"
    "nl"
  end
  language "pt-BR" do
    sha256 "de564e391abb103ac62644ac906a041aff6cb57e4d74f5f0523254df4430d8f5"
    "pt-BR"
  end
  language "ru" do
    sha256 "c57492344965fce55f3bd9322a32b715c9c86491bd51eb551c11d2afdff07a11"
    "ru"
  end
  language "uk" do
    sha256 "2739b5b38ba6515a2fe6378afd6383b6e145c8045c1b52bf122c6d7a753f92b3"
    "uk"
  end
  language "zh-TW" do
    sha256 "83aacc71a051290bc533bd0d79b7fa38ad8a53b09ac5dfc9338bb91c36340569"
    "zh-TW"
  end
  language "zh" do
    sha256 "a7247ae4d883f96bdb30ee5a25700665fc53408b565f4d00eb24f688c745f345"
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
