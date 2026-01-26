cask "firefox@nightly" do
  version "149.0a1,2026-01-26-09-48-45"

  language "ca" do
    sha256 "c99193808a0b8cb9f1f09f2f6367068eb4ba70bb0db1a0a49f4e40ff06ddc74a"
    "ca"
  end
  language "cs" do
    sha256 "0c613cf9687dd4930cba79448308f4a67779a61b1be6dbb9583d887906786009"
    "cs"
  end
  language "de" do
    sha256 "c6e9cbd1fdfc94fb4d015a9d3d9fa018a657405f007c1ca0ef274dbd21378ff7"
    "de"
  end
  language "en-CA" do
    sha256 "13a2214544708614f8721bc45325d2f4ab1bd482ada0ddc1be1d38527a315d3c"
    "en-CA"
  end
  language "en-GB" do
    sha256 "17cd97df9a891b549a5cdbd31b46ceeaa668bf059540ca1faa2fcf9c3b2a8938"
    "en-GB"
  end
  language "en", default: true do
    sha256 "de7062869ea55d97fe8c1e321903ad155bbac0b781f6f105b28e67d9b7301d44"
    "en-US"
  end
  language "es" do
    sha256 "74f53bdcf680dbd13b474405a15ab663f2c8014f6366e4c683c8ac98b68fc43e"
    "es-ES"
  end
  language "fr" do
    sha256 "9e7d0c4178dac7dc5e56ce4bf311d29bc1460444df27922c3e4d415de5ab1a5e"
    "fr"
  end
  language "it" do
    sha256 "1df756d621d2194b83cabcef4058c086bc449d792bd30fa7f5c466676d8afce8"
    "it"
  end
  language "ja" do
    sha256 "9613969c47a588bef75497ca28bed789f6e07fcb7462cf01642806484eead106"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "568686297cb147de4bb26a33ea28911d5648298e089e82caa1b48ba7d913c39f"
    "ko"
  end
  language "nl" do
    sha256 "8e2a27e73997179119097f9a2a50e8e244b9ce268c7d923cb254f9e6cf7d1943"
    "nl"
  end
  language "pt-BR" do
    sha256 "1de68d3961117608daa3e16134b2ffb6208d97debeea465a48a403c08208d590"
    "pt-BR"
  end
  language "ru" do
    sha256 "e6320f1628a14af53c87d5340f62cb9bc381cf15f4ad9ff5499207244e056d1f"
    "ru"
  end
  language "uk" do
    sha256 "283a9b2e14350b692f590f262ea4c86ef7e911955a8e9f52a8d8945c6c3cf0a9"
    "uk"
  end
  language "zh-TW" do
    sha256 "e7dd6cdb9a4b5a99cccc51eee1d78628890acf0d8297347830f62a01316c27fc"
    "zh-TW"
  end
  language "zh" do
    sha256 "61468f80f1be360f9f9bcd1377e86820d8a18a1d81330f2b4f5f420927cbfb70"
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
