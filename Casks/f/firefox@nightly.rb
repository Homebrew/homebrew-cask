cask "firefox@nightly" do
  version "161.0a1,2026-10-26-09-18-49"

  language "ca" do
    sha256 "25a4d070bd915d9bde7ef1f0274a227c3061b4a39ed33a497e76bea85c9a64ba"
    "ca"
  end
  language "cs" do
    sha256 "037b28e8e944d18743eeab0b08e9b272fc5e0a6c7a9c28baba89b852c9464db8"
    "cs"
  end
  language "de" do
    sha256 "40b0b05e179d4c7b62cccb374a99964d05e366c6f10e9b579de2ed50028a078a"
    "de"
  end
  language "en-CA" do
    sha256 "0e2cfa5ab3f5b9ee93bffdf7b6149fb605bfa76815c7ae3abd2da792e52241ac"
    "en-CA"
  end
  language "en-GB" do
    sha256 "502a96c3273e4e5a1ef4d748692b5be46d4c0d017e024781c5764c558b911b8b"
    "en-GB"
  end
  language "en", default: true do
    sha256 "b9066c438324ac89b4bf79d60ca62cfd4a0beac5b15aa5cdc0f17788e2189eae"
    "en-US"
  end
  language "es" do
    sha256 "2f3c2681ca16fd63e44c621100aae9f026b7aa2ff7b062229536f4abd686f1a6"
    "es-ES"
  end
  language "fr" do
    sha256 "4d7b16a2a14403c8088571c63738d76df3c4571e798eb94f2d7aa19207855018"
    "fr"
  end
  language "it" do
    sha256 "06a7c16bad8aaa286ad93d5a120cc9238ce08e94b5d38c2922fbc5fc17d13a2d"
    "it"
  end
  language "ja" do
    sha256 "bc1cd025e26ec5b52a95944a6989a7336ca4fc5e27411614458a8f4f526b9f0d"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "deccefbac69787074d6da5361082070f35537964cf76dbd255cdea58b00285bf"
    "ko"
  end
  language "nl" do
    sha256 "346822862e272dce9964186a3abeafef78d336cf46570b2fe30643ac7cbf5014"
    "nl"
  end
  language "pt-BR" do
    sha256 "97186b7e50a7e6b0d1fc8cce727b8ffe50b74079bec51ffd9d907bcc0de8be36"
    "pt-BR"
  end
  language "ru" do
    sha256 "107a429f3fa3e209a41b4bc97a6230c33ba01bf809229542eb797ec5beeb30bc"
    "ru"
  end
  language "uk" do
    sha256 "8a3f115894cafe72f972d31beced179575d6b5f85b5ab6b422e57c3e3ae66816"
    "uk"
  end
  language "zh-TW" do
    sha256 "fd40d4e16cf29ea40e696e81ceb4f35e62679d60f075dca6dd1f775f600bfaf3"
    "zh-TW"
  end
  language "zh" do
    sha256 "7ccf89431b68c5b6d519bde2725668a9eb0f7cf755c504576f4b563dfd29304f"
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
