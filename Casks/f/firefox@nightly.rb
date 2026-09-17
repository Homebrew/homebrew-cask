cask "firefox@nightly" do
  version "158.0a1,2026-09-17-10-03-02"

  language "ca" do
    sha256 "e20fc05bfd09f6304307e408c213b46083fefdd2ef120e5e56c681a68f549b2f"
    "ca"
  end
  language "cs" do
    sha256 "94cf7ff7bbbeb50c8f71cd2a63d6762e0cc2e243ec5e675b1a840071606f8f6d"
    "cs"
  end
  language "de" do
    sha256 "956a5ee4af83bba43a0493b15a9e87ab6fe1aafb9315b676be11c77802c3aed1"
    "de"
  end
  language "en-CA" do
    sha256 "40c9a7539dd6e8608ff6f22e79540e46726098d60560787d69032ed5d847eebe"
    "en-CA"
  end
  language "en-GB" do
    sha256 "7577726cb150f864b1834e93165b9899e74f2235ac6ad43a5f26b3efaaf47d3e"
    "en-GB"
  end
  language "en", default: true do
    sha256 "4178b612556322284e02d82ea6bfba06419d255e1303c55a52e3eb4cb8f23b0a"
    "en-US"
  end
  language "es" do
    sha256 "828ff825ba9b7dcac303fcb6ebe549b2f6525790361a97f339d6b626d84ecaa1"
    "es-ES"
  end
  language "fr" do
    sha256 "37e974221fc4a454c986a9b34c0567bcee217b60476384f1e7c13e34aedf8800"
    "fr"
  end
  language "it" do
    sha256 "d9f14ac331e8b5ad9d1ac47acc298a899d963a28c08a119e2ff75b1d6af0cd0e"
    "it"
  end
  language "ja" do
    sha256 "3e2c588ab5a159e76953d148fab28ed2a38be5f954e608745f1f64735fafca1c"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "38b35ae67fe6a790d61ed6cb8ea3eae1589834a5ccaa7cea5e7e9a12950b5c58"
    "ko"
  end
  language "nl" do
    sha256 "357d1b929287e4563f6c1f565c256420dbf5fbe3deb7e4d4f99a711f37d8398f"
    "nl"
  end
  language "pt-BR" do
    sha256 "315d9946932ca41bb051e46db7087ca5c5320fcc3f91495cedc5fc1c36c2de73"
    "pt-BR"
  end
  language "ru" do
    sha256 "3fd0c303efd906d11cc155b5d8c745a790830d1ffde3801133a9be8743ac7f07"
    "ru"
  end
  language "uk" do
    sha256 "1cb16b231f8cab39f5483a1f50454ac57fb868d9b46bf7da57c13547eac4ac64"
    "uk"
  end
  language "zh-TW" do
    sha256 "f453e208e37fb99928b4cc6db77bdd427762f5c883e29b41c9a9b60601e994f4"
    "zh-TW"
  end
  language "zh" do
    sha256 "6843f5a6c1883d0b0787c245fbe443977f94b9e436b27f17698488915e9036ed"
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
