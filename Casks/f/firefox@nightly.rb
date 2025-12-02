cask "firefox@nightly" do
  version "147.0a1,2025-12-02-09-45-58"

  language "ca" do
    sha256 "a0de09ee21a86f3f35f593122947e3a68552dd35bab768b33a887f35552012c0"
    "ca"
  end
  language "cs" do
    sha256 "c9af0bb8c69e9a574804249bcc03476d9899985f54c0e9add6b2dcadf4157fd2"
    "cs"
  end
  language "de" do
    sha256 "2c7205d5695e71bde94738258c5705cfcc8bac429cbfcb5aef89343dc8c59eb8"
    "de"
  end
  language "en-CA" do
    sha256 "8ec0153195fb7c94d53343fc6b098322642629f4766f24b1cfc1aac2339bd174"
    "en-CA"
  end
  language "en-GB" do
    sha256 "05aa010f6470ce9d89fb0d9fb9a8ef77581611640ff04779dbe50065d0a7d167"
    "en-GB"
  end
  language "en", default: true do
    sha256 "5f6c3bfe038593438281c1597c42b8de1cc83f55fb6b9dda4db621159f064ad7"
    "en-US"
  end
  language "es" do
    sha256 "4bb881172b6195db7dc8bfd8b766ea11006ea19ab7b405b08c92c60a1dd62d67"
    "es-ES"
  end
  language "fr" do
    sha256 "1f9108816433d4127791d9d36a5dcfdef84257084ea1db9f3985853dda43d68a"
    "fr"
  end
  language "it" do
    sha256 "5fb846f6606f7024dc66653e329bb0ab0d4ac3a2036b6207d71237f4401017e1"
    "it"
  end
  language "ja" do
    sha256 "5dcbb88142467ce631c81138cf15aa264c7278667edf54c87a12bc0c42eac775"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "b8698ac0e7447df6488ce432d74f0ee2b11ecc5dd58df03af16c1f42eef01d61"
    "ko"
  end
  language "nl" do
    sha256 "96b6de7c14c590a5f6554608c7506dd69730bec2e119f5d92588bf4f0c55ca13"
    "nl"
  end
  language "pt-BR" do
    sha256 "7587a9a3e4044cf79f7240a2fd7fb903ee7ad55620303675a743473b11c5cbe9"
    "pt-BR"
  end
  language "ru" do
    sha256 "28946ea20bbde05bdc31a6b9a8147b171c43c8e2b3583d820e5f2d0595a84f54"
    "ru"
  end
  language "uk" do
    sha256 "95b3c88b882ca79c41b7f4184bf5cc2d453f75c6651a3021c577406218ca43c5"
    "uk"
  end
  language "zh-TW" do
    sha256 "82a423ec10ca572809126fb2639ebb31a665b5fe4867d34fbbe71e68c5910d5c"
    "zh-TW"
  end
  language "zh" do
    sha256 "f0fc8cf358a0415791357c0f58f8793b39d0a5ca3d7209bf4991dcde18855970"
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
