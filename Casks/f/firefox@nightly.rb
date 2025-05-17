cask "firefox@nightly" do
  version "140.0a1,2025-05-17-14-04-17"

  language "ca" do
    sha256 "9441cae98f07a09b8a7171947b4605d5edfd8bb81172a64e16b2d33dcefb464f"
    "ca"
  end
  language "cs" do
    sha256 "ee7e21986141a901aaa914b0d171a99d0b5e95dba1a2e791d1a656c320b73f01"
    "cs"
  end
  language "de" do
    sha256 "99ccf335223aff2e4c077b85c465fa8b0147b39afc0023d0082b4464d2b410ad"
    "de"
  end
  language "en-CA" do
    sha256 "dd930964a7e624d4a95e5aa9b23f7511c93e06f6e3635f9a54cd38b8fc97b016"
    "en-CA"
  end
  language "en-GB" do
    sha256 "f17b188bf642eab9bd480ae5d1012f63ae2f6e34a54faa8ebc2043e03e2c56a0"
    "en-GB"
  end
  language "en", default: true do
    sha256 "24c7f0fa41296d661e71b6b9b7291bd55098dd13a3f9488c3871918546c6f5ba"
    "en-US"
  end
  language "es" do
    sha256 "3678e36f88e69e6d7b851dbc8515194e0f362d8052ebad2c259edf4a977c0f0b"
    "es-ES"
  end
  language "fr" do
    sha256 "60aa5ffee0b61934261c08a3ddbc0549dea6ea4c1350cb65dd3c36103702c647"
    "fr"
  end
  language "it" do
    sha256 "422dd5888ab13167646436de803839bb9cd7fe5f2453ecb06933fdef857e770d"
    "it"
  end
  language "ja" do
    sha256 "5f14df0633aa69c34b6ee5b6571d2134bbc15acb72371113429c065c9adda133"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "b1934dbbee4ea373bacd6f5eadd887aa56897b174ea9c65afdcecbf06495f976"
    "ko"
  end
  language "nl" do
    sha256 "e05e82fb5e74275b69fb6b89c29fd05865337598e39d61a68176f36deac8afdb"
    "nl"
  end
  language "pt-BR" do
    sha256 "94a82c1f1195a4c9a9e01ae8648b2144b9662a394777e57ad4836763c286f1c4"
    "pt-BR"
  end
  language "ru" do
    sha256 "5adb779c899d4deb1c0cae021301134fa00588ceac0262dcd224b79297ecb9cb"
    "ru"
  end
  language "uk" do
    sha256 "66d19cb5332b1d3336b1e9d6f60e1a84193810f346c552a1b1d589b3daf79674"
    "uk"
  end
  language "zh-TW" do
    sha256 "501e29e586c2d1e113e27d553131232fcd12a53488de4b21806a8b1e28421b5d"
    "zh-TW"
  end
  language "zh" do
    sha256 "f46a2e96a398537786ae771495662ab290b269e5a1a7f8ec7d516a03384b145d"
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
