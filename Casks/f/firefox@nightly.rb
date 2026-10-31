cask "firefox@nightly" do
  version "161.0a1,2026-10-31-09-50-59"

  language "ca" do
    sha256 "924985d2c2129ebb912908f1f74f3712dc4abf3820cad5443bf99b17466576d6"
    "ca"
  end
  language "cs" do
    sha256 "8762a73c679b001420641170cbb61559b5d112f022589598ed03bc8333dd102c"
    "cs"
  end
  language "de" do
    sha256 "5218134eeaa558309dc6d1f9bd6afcfac1ffff22be47e19a993eb736ab40e3fc"
    "de"
  end
  language "en-CA" do
    sha256 "bd5178736b089d972f6e333d93513299233c1351128e3590e48fe98c3025e592"
    "en-CA"
  end
  language "en-GB" do
    sha256 "46f7acd11ee59b37687124ad712ee0e76dc33b5c4fca005a3c0feeba5fe8e151"
    "en-GB"
  end
  language "en", default: true do
    sha256 "b2851a767cfdaff7f8c9fe48be60a504200526001d1a5d3007167c156d175961"
    "en-US"
  end
  language "es" do
    sha256 "fb4e33a9c36d768e271684901505862d4cd7f2906698f4a423f3eb0a6dcd65e6"
    "es-ES"
  end
  language "fr" do
    sha256 "9f0d8fec13d1620a50d70b856f2ec8e8e27c0c114ddb39eed8055e5006f5eef2"
    "fr"
  end
  language "it" do
    sha256 "a68498a57bfb0adef248b5ec170cda7f79f97303908a9267eadc0119775d530e"
    "it"
  end
  language "ja" do
    sha256 "13eaf40630655e2df8174363e30b00e005dd434521119e9ba4376fd2ceeccb9f"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "75d2f4790073f175de9868c354f3f24bcf7d3e02f1486f54fb92b21a17f526e4"
    "ko"
  end
  language "nl" do
    sha256 "4f0f92627eed0df42716bab5e8067b28cbc59ba84db1c62edde950eab11ccdc4"
    "nl"
  end
  language "pt-BR" do
    sha256 "03fbf9f3fce289de2922648ad82c2d5c95906ca561ab71ccf64126576308f91f"
    "pt-BR"
  end
  language "ru" do
    sha256 "6026496a916788239bb4649a36b52e0959a86d22d7c49683c75bc23624e74710"
    "ru"
  end
  language "uk" do
    sha256 "8f7dd813872bb687e10af34db8540d1ec879b284903199795edb81d7172406af"
    "uk"
  end
  language "zh-TW" do
    sha256 "1c53bf57c050b458a616877793933d9b5ac50eef25942fe6dd5a671be5bda03e"
    "zh-TW"
  end
  language "zh" do
    sha256 "89085a9d0275a5f431ab7de37fbad0a3a70cadee2d80e4221f3dd03db5e4dd45"
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
