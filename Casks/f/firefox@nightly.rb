cask "firefox@nightly" do
  version "140.0a1,2025-04-30-09-25-15"

  language "ca" do
    sha256 "13778baf7a1aa73d6a6db45c3933c5847d342533e084832efb3aea16cbbd8b44"
    "ca"
  end
  language "cs" do
    sha256 "a77047eb2e425fc01849990ca7a611de3abb443a3c1559bdf711dfcecef9f4a9"
    "cs"
  end
  language "de" do
    sha256 "d1d0edc81f078d6892cb1a151f690ef48cc0adead9169681640727c57e988d6c"
    "de"
  end
  language "en-CA" do
    sha256 "089fb0c7cb1bf3b7476378b6971ccd4f35f55d5b3af410b435f4c5be18000f14"
    "en-CA"
  end
  language "en-GB" do
    sha256 "d5892fa82237dba60303478bffc4ae02216401f149cb9106c31a4537119e2e7b"
    "en-GB"
  end
  language "en", default: true do
    sha256 "abc56224da5e948e43a3a1176d546556588305ffff8d4314e2fba849f399a976"
    "en-US"
  end
  language "es" do
    sha256 "6bc4c23836dbb62ec91384d889a0041b6376f40d2c3ea6b74b5522a7cc839217"
    "es-ES"
  end
  language "fr" do
    sha256 "a74bd95cb19f1694cb69b6bbc72a88c0f040b750c7708f0f1bafed58ffc203d0"
    "fr"
  end
  language "it" do
    sha256 "0e2e9cd6734992eb93688834a1c2488ddc590f79de2de24f5c51bf33fa661fdc"
    "it"
  end
  language "ja" do
    sha256 "28649b016f5dd592ee9bad193efd9f5fadc03b9d3e7d158fbb7d5a1bd2ee3fef"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "d2a91ad1b198cc3df17f3ee6b684a01e7140b65322062754369bf6955b607428"
    "ko"
  end
  language "nl" do
    sha256 "598d81d90a7254bf772331c8ae28c61808dd677fb2784fb488ca28734520c11d"
    "nl"
  end
  language "pt-BR" do
    sha256 "053c088a66939af9ea193615cb91e0fb42190c18121b956715d586641c47bdc8"
    "pt-BR"
  end
  language "ru" do
    sha256 "2d68551275b1b93a8ffe2dd80db610cfc9c5716c6a6cd788d4c67650539c7c69"
    "ru"
  end
  language "uk" do
    sha256 "50966a43e3ec59ce5a71fc745514abe4d60fab51be62f279d54eaa5c64b3489e"
    "uk"
  end
  language "zh-TW" do
    sha256 "67b66a66d3e2691b5dc7b8278e0d138785602935bc80044317dca83563bad672"
    "zh-TW"
  end
  language "zh" do
    sha256 "d6db9a6dadcef27a996e2eb24fea1059f5d2276423731cff8d742c799066c71c"
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
