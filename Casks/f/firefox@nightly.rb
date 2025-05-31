cask "firefox@nightly" do
  version "141.0a1,2025-05-31-08-59-27"

  language "ca" do
    sha256 "1634ca744f9cf215a32c53157155f1697e0bf0ef01a2a61618fd44eaaecf2217"
    "ca"
  end
  language "cs" do
    sha256 "14dc0fe3b108de442ec580792e2b234e1d8361eb8075def64102df3ef01e4eac"
    "cs"
  end
  language "de" do
    sha256 "16f2dc48954a9984503a1a5489004c2d25564e0f6ce354886bd77ac76cc26fdd"
    "de"
  end
  language "en-CA" do
    sha256 "a558183bad9b23ee318e1fda95dcad024015ac7a27ee41abdae98ae19f0e8a84"
    "en-CA"
  end
  language "en-GB" do
    sha256 "dce094a0b1617c7bc1f634b6656ae3afa365bca94cfafa949fd219b2e99b9f68"
    "en-GB"
  end
  language "en", default: true do
    sha256 "d6e1bfd0c138914f797252670061294994599e60a98aa10be6c9dd176ba9782f"
    "en-US"
  end
  language "es" do
    sha256 "0631a5d2672265f00e923da94f40db7bc55d2db919f182f49a1e2c33e5ef75f6"
    "es-ES"
  end
  language "fr" do
    sha256 "0e18b9f4121220c6c2763ed78afae057a19ae35c8442a5f6235687629005ee30"
    "fr"
  end
  language "it" do
    sha256 "01ffb8851b03edfd03f497c3051c2ba6d57c014af0dad0a7fcc20faefb3af05a"
    "it"
  end
  language "ja" do
    sha256 "29ee4adb698e49df1b284985fbf37adc935b7035ad809ec8f4162dd0f60509cc"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "cd8fc834405c81fc00743393440cfbd78f1ff1d4b2b44124adb9b84c1451f746"
    "ko"
  end
  language "nl" do
    sha256 "c876f83eba4204b69749a8d2de9dce05f75e7d5f69ef7a2e0c59bbf1711ef6a9"
    "nl"
  end
  language "pt-BR" do
    sha256 "8043dfb24c8018f028b34c35c98fb1e810812baeb29007102a7b170664824863"
    "pt-BR"
  end
  language "ru" do
    sha256 "65cb9b02bd5d07490d0168f63917fa097a60f0eae65f2c478a3fcc066d2b41b2"
    "ru"
  end
  language "uk" do
    sha256 "a50eae8a765ef781e267945a276ab3c87c1221bb1a2c308e6ef9c98a111c376f"
    "uk"
  end
  language "zh-TW" do
    sha256 "b699d6c9096aac1653ac20cb9944896fef7088c1296c8d93a5ee172127ca5d34"
    "zh-TW"
  end
  language "zh" do
    sha256 "5f68a893a65c74302156aa938abb58ce4cbaf635d15b2155daf1933c3e8d737e"
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
