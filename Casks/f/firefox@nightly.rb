cask "firefox@nightly" do
  version "145.0a1,2025-09-28-09-09-11"

  language "ca" do
    sha256 "b979d5079d929afba4ad6040016da7fb6a0fd624e165e3dadd7545102308c552"
    "ca"
  end
  language "cs" do
    sha256 "8099dd7bf70b5028789ca432a092b796689d9390c8634373a6cda4b2215c7ff3"
    "cs"
  end
  language "de" do
    sha256 "ed11415e0a9d1dff0781733f9551eb4b5d9791ff8875d916735f04577c8f3517"
    "de"
  end
  language "en-CA" do
    sha256 "d4a1fe318828fe8f2bbd7cc9b4791e4f7a26e8afbfe71e9ca0f467cd2ce67968"
    "en-CA"
  end
  language "en-GB" do
    sha256 "472809b984431761894ba1e811eae45f4c1b708f499a5cf182f75dc6d42ea7e9"
    "en-GB"
  end
  language "en", default: true do
    sha256 "d47a536bbfa6fae77594db3d28bd54e82aaf98d5d34b1df0fedcc40ac99fb611"
    "en-US"
  end
  language "es" do
    sha256 "d18e413cb7cc586525b85cc7496593d801ff70999581c0a386df2c469edbf5d0"
    "es-ES"
  end
  language "fr" do
    sha256 "2594e6c567dbb9f8116c51a3dbb95dab96db15e347a577c529d487d1a5707f13"
    "fr"
  end
  language "it" do
    sha256 "b85392935fa1baba4f9631c12bf254b52f01d0889cddc101903e776d6bc38e90"
    "it"
  end
  language "ja" do
    sha256 "b6e917543167f4553002adfbac34ff78e302d8b54816dc6e682d7aee402ba882"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "ba1f3d359b8f84b479ecef2848c207452f67f6d8b862c159eceeb3d5661a78bc"
    "ko"
  end
  language "nl" do
    sha256 "b587afa1c8f2f19ea3981e81c22a0b15e56588f85606b4688c961a29dd3480fe"
    "nl"
  end
  language "pt-BR" do
    sha256 "df1536b4cde1140f377fc7938134e4cec6d9312418b3706f36b5ee1b5f967dd9"
    "pt-BR"
  end
  language "ru" do
    sha256 "d4b796edbe80e97a85297079b204c12e931d7476605407b7b633e33704352500"
    "ru"
  end
  language "uk" do
    sha256 "41c6f2bbd82a60bccc3c50fe84de9534c8292aabd50c631f8a9ba7554225cadc"
    "uk"
  end
  language "zh-TW" do
    sha256 "f8320a5115ca367a2b8e187a2b7532b701e48f2e2cc7f17b10c633f3ff6bde6f"
    "zh-TW"
  end
  language "zh" do
    sha256 "d480d928d1d031b460f3c87d7b36bdf6ccfc1756623ec49b580143e0c35d938e"
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
