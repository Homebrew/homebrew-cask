cask "firefox@nightly" do
  version "150.0a1,2026-03-05-00-23-19"

  language "ca" do
    sha256 "d5373e41766d14ca7116594249b43d9d38dbfa0de05a778e8e4cc77505b2e18f"
    "ca"
  end
  language "cs" do
    sha256 "57d1088e28ac7a5e02f3518c9b2217757e5bf944e4e064b5eac41eb930ca8ffd"
    "cs"
  end
  language "de" do
    sha256 "7d94b2adf0701f93b3da6cec8ca97017b50b763c52de47a148c8a29e748b34c2"
    "de"
  end
  language "en-CA" do
    sha256 "ccf870dd562cb8e69e67294fe042aa82b3d8274b06c07b9674c4745600e0f1b1"
    "en-CA"
  end
  language "en-GB" do
    sha256 "55044a962d7247a98f965fcee7fad239bde8aa73624ecb8bb876dcce7f1e2b75"
    "en-GB"
  end
  language "en", default: true do
    sha256 "e9defbf60fb4335a2a64236d9fcb4ce40ab63934752492fea18b68911c3900de"
    "en-US"
  end
  language "es" do
    sha256 "aa734ded681b11967f364e771bbe3922379de11512e43bfbb5c697fb907ce56f"
    "es-ES"
  end
  language "fr" do
    sha256 "51dfe17ddfdb8513fd3df488e9fb4b2d88587e522be948fb6e17524516debe17"
    "fr"
  end
  language "it" do
    sha256 "946cb1d256dc6f59576e555d7a74729f78e3d5cad7181292c90c3afeef59ed88"
    "it"
  end
  language "ja" do
    sha256 "8b38ebd733a7bd07c881fa1e0c6927e04bc25ce976a123120b8fc8bb9f73599d"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "98960831723197275060e403ba2f668f1e64a824fd6f7b09d404997afae1cda4"
    "ko"
  end
  language "nl" do
    sha256 "5d3624d4d750066ea73d2d43f19de1a4614d63035f0bc775543ad7e90aa59286"
    "nl"
  end
  language "pt-BR" do
    sha256 "9f47b16214312e4925ff7104e7127ef03f33f96208863c89374b755663ddbd9d"
    "pt-BR"
  end
  language "ru" do
    sha256 "550e4345b2c28127333210328ed657ddd5430296131dcd9b39833cfbd7e08fd8"
    "ru"
  end
  language "uk" do
    sha256 "c39b5c3375c047f075dbc339537bb05d51cd16812ea71b2642f294579088a73a"
    "uk"
  end
  language "zh-TW" do
    sha256 "f83150be2da4802d5749755a7137ae6351fafdeab14eee66f67c45bbc954f242"
    "zh-TW"
  end
  language "zh" do
    sha256 "dbd585ec9f8420be92df91f78464aad9e37b41d1bf0a067a3395c419db886982"
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
