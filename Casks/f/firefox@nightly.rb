cask "firefox@nightly" do
  version "146.0a1,2025-10-15-21-30-50"

  language "ca" do
    sha256 "d3e392f3741957666218e1e2431f34bd51c59b633de9b1cbec7b9e43e3c621fb"
    "ca"
  end
  language "cs" do
    sha256 "5864eac750f5737da9d02ea24585b4cff1b859e24d72d7be737b46472bce3e83"
    "cs"
  end
  language "de" do
    sha256 "097ea576c760b6fd9edf88d795eea6126598357a5f728a105c64ee699d97fdf8"
    "de"
  end
  language "en-CA" do
    sha256 "8ed2fa892be37e11ccb5622a99c1fcdf20079d736e909ec3898466048168ac36"
    "en-CA"
  end
  language "en-GB" do
    sha256 "0b014b4c8a53a8aa7a23955a46de6e98c3b7b3bb49f70e93e6a82cd62118e671"
    "en-GB"
  end
  language "en", default: true do
    sha256 "11e882dbafba2e7b0d7f33e9609670645831db1efddd29c7dd896dccb5b8c632"
    "en-US"
  end
  language "es" do
    sha256 "07169f9b30e6bcd90f1d7d4ed5e805914bbb679c55c83b5aef155ccd9c8e3f9a"
    "es-ES"
  end
  language "fr" do
    sha256 "da87c06ee486c5ac8c61730b69f323e9160a1bdd1cb8e50b53b628df02ca984a"
    "fr"
  end
  language "it" do
    sha256 "0db14c7408739bdb57b8d4d9061af0ed00f9af32cdf4e46953ee88830c5dfe7d"
    "it"
  end
  language "ja" do
    sha256 "7740ec8568b11dce0c30b977ef4f5f253a52abfc63ca077484d8373a4224d170"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "9765674fb43d891b0fb4700095d5e326a4247c2daea99f4bc52270e6b97bfe23"
    "ko"
  end
  language "nl" do
    sha256 "af7005de6464a946f4ee6aa73d34013d9e56d0603b7a0d721a9bc4f4b51c66ab"
    "nl"
  end
  language "pt-BR" do
    sha256 "e4a6999bba4c66e11d73a86dfd48be31e91acebd1e4ea9d5d9e0acff68df021a"
    "pt-BR"
  end
  language "ru" do
    sha256 "9c7b31e4f4868e9c5bb09099db012c5796533d1311ae89ab0a978dbd051a5f07"
    "ru"
  end
  language "uk" do
    sha256 "615e2efed1fa0cb88d0092af9bebf2b1b650f7d8b94d11102ce3dc877670d7c3"
    "uk"
  end
  language "zh-TW" do
    sha256 "29f6ef3e323079cac5d9eec6935cc388502b0ad92ae9185606845b5db05e576b"
    "zh-TW"
  end
  language "zh" do
    sha256 "197064a5552d323d83d59b3810779709b7264bdae78ae0dcbe437daa060e11f4"
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
