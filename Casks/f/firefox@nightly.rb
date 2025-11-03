cask "firefox@nightly" do
  version "146.0a1,2025-11-02-21-29-29"

  language "ca" do
    sha256 "21ffb66558bae8ffd0cb6a044a142c8a33ec6b588f641a746cbf20be4363df48"
    "ca"
  end
  language "cs" do
    sha256 "a28f4734302b42af15d741b2eaf91f1bd378ddd212382fda64aa09dc796b9105"
    "cs"
  end
  language "de" do
    sha256 "980245efb0d77a760843f73f980f9b734863b39c4eae07f974e2a18ebd232806"
    "de"
  end
  language "en-CA" do
    sha256 "ace4ddf49abb3cb07c578e5133dc72a4e57673bf140da93bb654b3a696299b9b"
    "en-CA"
  end
  language "en-GB" do
    sha256 "f5f44d11580db67405966af605f1c5f3156f5e900deeb571dcea76f42ec3c49d"
    "en-GB"
  end
  language "en", default: true do
    sha256 "15e948d99850b56298188d15ce7abe4b166401f1b2178f14db4533c3084351b8"
    "en-US"
  end
  language "es" do
    sha256 "9d83ac0e06d933b7cce22852b185606c5cd9bc92369910402cd59a96ce00c306"
    "es-ES"
  end
  language "fr" do
    sha256 "04192fba67db43013dc7e5b78bbce692691247b53200cc51ccbf725de2c29a5c"
    "fr"
  end
  language "it" do
    sha256 "1f2c8fcb9016bc2dc0a6c64578da4813e7e72d5aa26ac082fd3fab8f76bc37ba"
    "it"
  end
  language "ja" do
    sha256 "c11e93ce6ffc04d9e66056cd4115b0a9b1282a472072b092c89ed2972f77340a"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "01ab9003178e77782dae653fd1551de351d77b4bc6660309b31ed366d480f5ed"
    "ko"
  end
  language "nl" do
    sha256 "6b59e2663dc9a079693b0121136897af6bf9924790138092dfda8f89f4bbbfa8"
    "nl"
  end
  language "pt-BR" do
    sha256 "2815cdcb8713fca9d4909612047d53c657d152fcf8113876d4e70b733b27d26f"
    "pt-BR"
  end
  language "ru" do
    sha256 "2909a72622f83edfaba4d5f979aeec739594276c453e2cd836acdf7e2e7c6d52"
    "ru"
  end
  language "uk" do
    sha256 "ed40c258a6898bede24fb6f1b06cd3fe2ef624a1c1705bdb77661f30ef9b0231"
    "uk"
  end
  language "zh-TW" do
    sha256 "ed9ca5f141c939294ec1fbbc10293fc78928667680b0090191542bbc7ad656a7"
    "zh-TW"
  end
  language "zh" do
    sha256 "712a4107af1132940c6e9cb1441ae588c7a7a55ccffc2b8582e0cc2f47325566"
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
