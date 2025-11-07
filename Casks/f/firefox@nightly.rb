cask "firefox@nightly" do
  version "146.0a1,2025-11-07-09-30-56"

  language "ca" do
    sha256 "dbfa02c40d5e833497670cb646981655dba3895983d8a03fee8af36065a2d7c3"
    "ca"
  end
  language "cs" do
    sha256 "a3d0dd110b4fcff0b61fcbd956cdf0b582da371dc285b58c47febe0cd92b17f1"
    "cs"
  end
  language "de" do
    sha256 "e48b966964d7d74f1329541bd74e7a2ee918fcf2c1704a3953562ca7fc4c65de"
    "de"
  end
  language "en-CA" do
    sha256 "8c2482f77463d102d8b192106d13858331d05bfffe715e7c06aaff291a22fb5d"
    "en-CA"
  end
  language "en-GB" do
    sha256 "59a699d99f0ae2e2316dac9d8c327ea51605a202e3761d1426196968c12e4b7e"
    "en-GB"
  end
  language "en", default: true do
    sha256 "807395803736ced1e8f5a5d5ea187d45c0bace999cbd73603ef03e2b06cab374"
    "en-US"
  end
  language "es" do
    sha256 "1e42eeca9fc77ef1c999ca1198c90ef656acd7a7f7de372ddb1b6c1286a9a3a7"
    "es-ES"
  end
  language "fr" do
    sha256 "5dd8881fc74f4321539808f815e496f63d7510c70b452579b5d98b8cea487bda"
    "fr"
  end
  language "it" do
    sha256 "63586961fcc06d8799567ebb3510a265f8e256d7d0b061f71198046bd1862805"
    "it"
  end
  language "ja" do
    sha256 "c2915ef90f732a0a69fa5e9937b9028f9e11fc548aaa21b0096ce68969870d4d"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "e81db72b2ea238428180658afef5c04849f3ff7cd979140e4c47d63f1121884f"
    "ko"
  end
  language "nl" do
    sha256 "953c6534f3b66130902f28031ab444afcbb3c42ddd26de84eeb09465d56d031f"
    "nl"
  end
  language "pt-BR" do
    sha256 "29e5f3485ff963ad9e6c4252d5abbb45f0ea8513f08bf32814e64f8f892bf1b5"
    "pt-BR"
  end
  language "ru" do
    sha256 "17b6ee41e4fe2a781e7b67654a586535d0229a26f0a27f63f753aa2cb0f3ca60"
    "ru"
  end
  language "uk" do
    sha256 "77882fbcc374721aa77b5db098a39543eef58861c1f73ba7277dfc1487ace3fd"
    "uk"
  end
  language "zh-TW" do
    sha256 "e5e61507ce90ebf4832a7369215930f1b07f2b896d9dd3410b443af904d5d4e7"
    "zh-TW"
  end
  language "zh" do
    sha256 "87e161620645b373147157343792548747ce9ebba615a504be7576e514275085"
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
