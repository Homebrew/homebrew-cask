cask "firefox@nightly" do
  version "154.0a1,2026-07-09-20-55-31"

  language "ca" do
    sha256 "553a84b3b5113b370efe68fd64bc4db145fa054b5cdaac646b316f71499fea38"
    "ca"
  end
  language "cs" do
    sha256 "5a0cd3b0d0ce34b459ec70ea9edefb02c83e3b8958ee5d0ba70b3ca85a51fcd1"
    "cs"
  end
  language "de" do
    sha256 "e10632f4a9abd0ec0e8fc99050850b4ccce6a59800cfda6c9ad234f8680adcde"
    "de"
  end
  language "en-CA" do
    sha256 "3c9e4b7099319539febd64ca85127fbf8f65f3e83bb893027693482347689b95"
    "en-CA"
  end
  language "en-GB" do
    sha256 "b9a5d38aa08a36dc2225948d408ac6b8cbb419e10472b504ef6a9fc63c23920e"
    "en-GB"
  end
  language "en", default: true do
    sha256 "465c0c3830057464147b2d227d8b71962fdbd992609a0832690d160502062fdb"
    "en-US"
  end
  language "es" do
    sha256 "f22581613f96e439724964aae465feddecbc33efbb1b8f3ff5cce52341b06d49"
    "es-ES"
  end
  language "fr" do
    sha256 "5b069a63d49c59303f8a80a04ea93b082012def6d27b1a57b1c9941cbc0a0ad1"
    "fr"
  end
  language "it" do
    sha256 "51d6a66e092484d0324940c8c80ac2e8433d47186693393e18131675bb5bf4d7"
    "it"
  end
  language "ja" do
    sha256 "86b14a45ed99de956aa87567ba9bb5ce526f2d4a5f8481bdc7000bd5e7bd4151"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "88c599154924f1c88d00e35bb1d2c185b73a3f1f04f197796dd7cfd0ba929b59"
    "ko"
  end
  language "nl" do
    sha256 "461eb296678775bc7812ecf2ffddb20a2262d5604b58450933bac725d17bbc8a"
    "nl"
  end
  language "pt-BR" do
    sha256 "f0fdc277a31e96199b69bdf6a766a78e90926b8ebe1f37d25f19edbc9e274193"
    "pt-BR"
  end
  language "ru" do
    sha256 "f4acfd0a64e5414e3dab100be8ec405ab1f24133a9b5e161c019ef930bfc130a"
    "ru"
  end
  language "uk" do
    sha256 "55e2ba3fa150d35f26378e7aa7773f1e04757fc40ef308fb24341f9eceb98179"
    "uk"
  end
  language "zh-TW" do
    sha256 "563887d3460cf538050d5a1313dbf80cb308376a4cfd106270c1cd34b4e5fda4"
    "zh-TW"
  end
  language "zh" do
    sha256 "e2572d5e8721f172c3bfa6a3ca7d5b585137215ee7163bd33e028746c9093180"
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
