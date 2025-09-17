cask "firefox@nightly" do
  version "145.0a1,2025-09-17-09-22-46"

  language "ca" do
    sha256 "57e2de9a2602deddc58e9f2802ebd4d5ae5d7fa651116940c4e17dbc377f7f82"
    "ca"
  end
  language "cs" do
    sha256 "1a715a1fe2b90c6ac71afdf228e411a830f871e6154f6ffc1fef33041b98ee60"
    "cs"
  end
  language "de" do
    sha256 "beb887ed29c744e16c400308cfeab8be992d5645fd619abace0466379b1f67ec"
    "de"
  end
  language "en-CA" do
    sha256 "745744e3ab2b7bdb0806f0e1d94ca6d90a147db70c1cd599f2bf34f0cbba3e19"
    "en-CA"
  end
  language "en-GB" do
    sha256 "8b2717650fa829661119bb4f40827ee3aec50a4d757ce3aeeb8e677ffce97138"
    "en-GB"
  end
  language "en", default: true do
    sha256 "e9dcc0141c29ded04e3ddae849060912e9644cfc05343ef68215c5da1b45aab1"
    "en-US"
  end
  language "es" do
    sha256 "efb03cd39f96c8221d8059d267c775912029b0688292d2e3abb8822415531784"
    "es-ES"
  end
  language "fr" do
    sha256 "d71d083dd1fd66a82660ef10f496278575dead0bb09efcffe098a8fa2dee0f00"
    "fr"
  end
  language "it" do
    sha256 "9f223c08612b94690f43dc551a75154cffd299830f711b369b93781c33300462"
    "it"
  end
  language "ja" do
    sha256 "6f0d3cf8555d13379f5aabdeba2934dbff2ec53d2c1e97def15c43ca086039f8"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "1a98a1695a6e668c31c48d1c9d1567ee0e6a2734f4797e93ee4a4e350eda5c25"
    "ko"
  end
  language "nl" do
    sha256 "e20bd1dd932a1d150144cc3ecbcd81f7579c61be6a280ca914c8a3e070e60a32"
    "nl"
  end
  language "pt-BR" do
    sha256 "cdbb6ae4f50632f17f4305989a3ec8c5190b82cd808b83c5ba506d79a7b4bc60"
    "pt-BR"
  end
  language "ru" do
    sha256 "f5c8f6586c8ed93b642d650987c07cdcdf54141819452db42ccc8bfa96f1ea82"
    "ru"
  end
  language "uk" do
    sha256 "34879ec04e5f14afdf87e1c00c14151909e296f545e19bc51dcb29ffc2c81859"
    "uk"
  end
  language "zh-TW" do
    sha256 "12b13094d3bac4edf588edc636d66e53403db35f9591f66930740a8737296170"
    "zh-TW"
  end
  language "zh" do
    sha256 "02a6b740f87e7bb3e051be0904ab246dffe4cbbda9af687adbfdf774499851f8"
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
