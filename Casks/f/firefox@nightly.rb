cask "firefox@nightly" do
  version "146.0a1,2025-10-22-09-23-05"

  language "ca" do
    sha256 "12b678ec4fb799541f6038ef388181c5c3adf9516ae2b4fa0e5a1216fc44078e"
    "ca"
  end
  language "cs" do
    sha256 "d11954bb5ddec23446ecb92b186702bb78d72110e9d20a0b20926044c0a534b2"
    "cs"
  end
  language "de" do
    sha256 "4c69af9e83efa4d377eae1e274b028a98da90fd8ebcd8bde35b936f1f53da545"
    "de"
  end
  language "en-CA" do
    sha256 "19bc9dd7104575a987eb85a645c5660e14bebce311fe1fb65c90977515832ff3"
    "en-CA"
  end
  language "en-GB" do
    sha256 "d319b2e585200ffd39f2610f73e83be0e310a2619a486a2df6eda40ed7e350cb"
    "en-GB"
  end
  language "en", default: true do
    sha256 "38727a563b28020833022e7a79349b79fdf3847c6174ea9d02775a1886b11012"
    "en-US"
  end
  language "es" do
    sha256 "27eeb4e1dad828d8f1b08f9de41cb538a41db8affa42310d3f78eb6c8a0fc05d"
    "es-ES"
  end
  language "fr" do
    sha256 "77ab56bd76ddc43d17732454f9f6bc7f3d3b201ee61b78dba8ec71165388d1be"
    "fr"
  end
  language "it" do
    sha256 "693d28f1228f2f9bcff74183e87a1a81aaf253f8eb79a36c463444a4a8642011"
    "it"
  end
  language "ja" do
    sha256 "6c12d3b35c24104f36b722f49f0d7ed84ef4f6c26c68e337556fac44d207ef13"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "9993f82d91778c9263dcb85d51e883578caf0ee2d21c12a55b5d41492bf4ebe9"
    "ko"
  end
  language "nl" do
    sha256 "17da9405ef36946e72a7d827948063fbd3cb809016799f78f0861535ce5fe741"
    "nl"
  end
  language "pt-BR" do
    sha256 "595eebe0759ad733ea686696843b124229bd3874cdac3b771e14d35793c9e952"
    "pt-BR"
  end
  language "ru" do
    sha256 "eeb4ddc060b3504981fefc55e259e8bc800529987694bde1ccd2248bd71e81da"
    "ru"
  end
  language "uk" do
    sha256 "39e98afd184d555dcf0302b477ab17a57c7eb78d4e6a227761bea56c686906f0"
    "uk"
  end
  language "zh-TW" do
    sha256 "b8e94aa423a3bcd3c3d37600b1445a34dcec33c113ca02548b169d046bc64e3b"
    "zh-TW"
  end
  language "zh" do
    sha256 "8406f5f7e026bd99f6cdce0701a7e6b22320ead8b0c8395c524fbeef3cd34bf3"
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
