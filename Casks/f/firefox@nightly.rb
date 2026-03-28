cask "firefox@nightly" do
  version "151.0a1,2026-03-28-08-23-32"

  language "ca" do
    sha256 "7ffb48635c5aa7285916949a63bef7315a88e3714562a89d20c59f5cf9cb7246"
    "ca"
  end
  language "cs" do
    sha256 "8c499418d9302d7be9aad226ebfcfb4f583d223dca78861236cd04c7eaae22af"
    "cs"
  end
  language "de" do
    sha256 "f6a8968d65237572a4a140cd3dfb9b76e3c5b9b01b0c97eb1bc14aa17e4c6467"
    "de"
  end
  language "en-CA" do
    sha256 "358ff2d8938ea835033639f6bbc583d3555fe0baec0dfb03d52bc00f539a4875"
    "en-CA"
  end
  language "en-GB" do
    sha256 "51d2bb9dd1c7a07e611c68a065185b5ee225ec0dd5f927e9df500d1b3a126466"
    "en-GB"
  end
  language "en", default: true do
    sha256 "f805b6010d4d0dd163d6c5db718f6d6b600bbaef40890ea3fb7c7323caaaa140"
    "en-US"
  end
  language "es" do
    sha256 "ae3cfa49966b91f754586c363994ea18ece2bdeb369d7ef3c1744e08542af2cd"
    "es-ES"
  end
  language "fr" do
    sha256 "64e98d0f7b65f2c2cba7d19d1a8ee07a7badd9d1ae5c92102cb802c9330add11"
    "fr"
  end
  language "it" do
    sha256 "156b519e7ae1d285919f94f4075abb8381e2ba51370075a4f7fb4b07df60fbcf"
    "it"
  end
  language "ja" do
    sha256 "0b19c067cc3e6cfba7b9433754631f47bdb309d23125e32f7a53d5d8bd9bdde3"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "7864e4d125a5cb329c66bc5f694114432db60b26a10d45899c9bdcbf0b24736a"
    "ko"
  end
  language "nl" do
    sha256 "44efbc543f560765f82bdd5104bbc7959e49d48ac6910e51cac1a144211f5ba1"
    "nl"
  end
  language "pt-BR" do
    sha256 "c412be8fe9dfadaca897dae91bb7a493d7954255175165d670f478339be25404"
    "pt-BR"
  end
  language "ru" do
    sha256 "b2882bf089545a779c5346a128fc1ea5fcc2ab1784a8d36cb34eca0d80339ab0"
    "ru"
  end
  language "uk" do
    sha256 "fde66556f059d6c780c5f5fc9f775d32865dd88859cfafc3fdc022c53704c97d"
    "uk"
  end
  language "zh-TW" do
    sha256 "8332907ad1bac2ce5c554b44737b3afeb87384b318b2631c51e9b442a4f2aaa3"
    "zh-TW"
  end
  language "zh" do
    sha256 "c55f9a7c17a88901862695b14b0da3b82f5e7f99d521ac6f1efec8ca380d33da"
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
