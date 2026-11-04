cask "firefox@nightly" do
  version "161.0a1,2026-11-04-09-40-08"

  language "ca" do
    sha256 "6f4f6b6a29511f315e9d4f394a26afb7ac4f9eac207380032992ec01b2ab2a60"
    "ca"
  end
  language "cs" do
    sha256 "e535f3aa80f5506f6ef0cac511669d3636ac081c42a8311fa06769eb2e1e9b29"
    "cs"
  end
  language "de" do
    sha256 "914f7ac6f3b2a13edcf11e29e185faef5c411f2359b6eae5a051c292895bf1e9"
    "de"
  end
  language "en-CA" do
    sha256 "cd574b59c1c5daca950bfa0c1c4a776edf4ae6af29ea326babb3afc802b00158"
    "en-CA"
  end
  language "en-GB" do
    sha256 "d7898dd8dda874bccffac0b19d0418a11b1afb29757f993adcb3d3a8f1dfebd3"
    "en-GB"
  end
  language "en", default: true do
    sha256 "a9ef266384af564a5654a15261913a978da0d47c438522b791dc849a43f1867f"
    "en-US"
  end
  language "es" do
    sha256 "2cdf475e1bd5b0cee8ed5bd2f3085616b53a08ba8e8d997ffefe155adf4ad7bb"
    "es-ES"
  end
  language "fr" do
    sha256 "81efb23af3a2aa2739174dad3ff43e1450bb575d268b2098d41758d9e8b28541"
    "fr"
  end
  language "it" do
    sha256 "d48df5edd4e0ca8c63be539b8ae8a3228df06dc917732ebede68993cf9986784"
    "it"
  end
  language "ja" do
    sha256 "bc86a24e140f4e9c0563c36854072cd82ed53fe1a2f61b76d29805b7ec5435ec"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "a8ff7ab4bff17538070f4ddb916cb8fa272a1f29ef738959bae5939cb8aad20b"
    "ko"
  end
  language "nl" do
    sha256 "60517e28b3621ab334584b05d3833220aa9326cbf3e21e3cf380ee3bb1cddaee"
    "nl"
  end
  language "pt-BR" do
    sha256 "df5ddd1bc803acc9b96d63fb2b64bcf55e2d40044065193b7d26a2dd4a2c3248"
    "pt-BR"
  end
  language "ru" do
    sha256 "6b67f1e01e366cc407bd86cd6d3972910df5749d8d1e46280757f617ffd7b8d3"
    "ru"
  end
  language "uk" do
    sha256 "9a65d6293ea9eafab569e29ef8781685b6d03a01e7fbf52c73a68f5fbc9dc243"
    "uk"
  end
  language "zh-TW" do
    sha256 "f78c098719c2a250cd4221fa4d380ffa2c66d43a6a2cc862b1a48eb126dbb658"
    "zh-TW"
  end
  language "zh" do
    sha256 "41ef59303e4950600d475a91a4e58d5a8010a6737b7583276f8edc3422a2e88b"
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
