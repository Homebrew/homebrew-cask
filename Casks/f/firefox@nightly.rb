cask "firefox@nightly" do
  version "143.0a1,2025-08-08-04-08-47"

  language "ca" do
    sha256 "abef7d2f39d93dbea4a0cf0a6b38a73a9f8353f7f6beb1d6f9bb42c53130ac8a"
    "ca"
  end
  language "cs" do
    sha256 "1fd3a2a6765cb04e0157cadc6aa7e8642b6cbfe40451dbbb83b1d68cec86de5f"
    "cs"
  end
  language "de" do
    sha256 "13d2c2ece54f5ffbe1e4438d1fc7763e51e4b404fed628338277419aa877cf57"
    "de"
  end
  language "en-CA" do
    sha256 "c8b00151678c1da6433e7174249e18b5ad378cbc795da9ea0ce2ddb038f2d3a4"
    "en-CA"
  end
  language "en-GB" do
    sha256 "7e4824b67a674838f6713d1419ed1991d22b1319a8fd2d05d97c1d756c0376ae"
    "en-GB"
  end
  language "en", default: true do
    sha256 "03595b3d8016b97ce326e06412ad6d249811e7663bcd1545e592f9a5eef0b9ce"
    "en-US"
  end
  language "es" do
    sha256 "c2deaa6a1583524cc360acc654a578f84ddf8bd2c9e8c335304175284e3f95f3"
    "es-ES"
  end
  language "fr" do
    sha256 "2dc621ab7689f99558ab9cf240e5ae84b99ea33d886a6c01314e7fefa6f33f1c"
    "fr"
  end
  language "it" do
    sha256 "e73c1167857a0015808a0a97ff28189edf3102b5fd50459da0c7a0345736bff1"
    "it"
  end
  language "ja" do
    sha256 "fce5faa89e1a5022254c7eccbf577e350c6f180280ec8b8158e5c8b061aae084"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "c352dce714c18635fc1c0edfeadfb2943949a85de230a713dfb75ee80b5c8d22"
    "ko"
  end
  language "nl" do
    sha256 "ced3fbf5a4445ba134d2e12774e5cf0e3cd4ea5847a13dac4c81741dc5bb7632"
    "nl"
  end
  language "pt-BR" do
    sha256 "fc6aeaa2ccec91e411e9c549109cc869631e9ff34f02f7fc57c1c3d2dd3b4afb"
    "pt-BR"
  end
  language "ru" do
    sha256 "4d2ad6ba1af7b4ee35e3948a13f49ea6744a1bb3cc68f44d0d7cabb87ccb4310"
    "ru"
  end
  language "uk" do
    sha256 "34b7d60633fb5eae9b8b5ecc04a8d2a8c30d869a60b9aa417030cd4d6a7b0ced"
    "uk"
  end
  language "zh-TW" do
    sha256 "6310c7c95f944e44fd50635caf6826999b2e41dd0b379169870d177e02b1c7e7"
    "zh-TW"
  end
  language "zh" do
    sha256 "1daf3d8c911023a6b2a49df729ac9aca3974f13e985d2dce26423b089af620f7"
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
