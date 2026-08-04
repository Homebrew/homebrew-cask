cask "firefox@nightly" do
  version "155.0a1,2026-08-04-04-32-44"

  language "ca" do
    sha256 "143de7ee8980ebeaa20c7569d0da3cc7922229791b3a6fbc4ba49a3dd8ea6c72"
    "ca"
  end
  language "cs" do
    sha256 "2d76efae1a7e80d17476ed562bfb11db352c993810caa610c53b298692a95379"
    "cs"
  end
  language "de" do
    sha256 "60eab2a01525fd34258378ca7736291076f404c623b3736333ec54c303893ee1"
    "de"
  end
  language "en-CA" do
    sha256 "28164d63ad4a59930c4895f670e2e6f184bb0330b9ce1c6e219450ae90540f0c"
    "en-CA"
  end
  language "en-GB" do
    sha256 "6b22629ba0234068cc94a0ff6d1d86718d2a5f9ed7fcb8723c78e81e7801c486"
    "en-GB"
  end
  language "en", default: true do
    sha256 "f9575407f71bb71beb906053ad93a1993f54c018eb57f1dca4a11eb7de279d66"
    "en-US"
  end
  language "es" do
    sha256 "3f0bd015eb58e98f24f14251500043467d6b2bc185d792a6a16ebb59d25e85ff"
    "es-ES"
  end
  language "fr" do
    sha256 "3f671a09cf7608ad708048629e5a242370544203309ec7429a751d4b7e5ca19d"
    "fr"
  end
  language "it" do
    sha256 "9e761f96858c4278c810a39c13986f5fcd93a5db3125260702e535379aa49c61"
    "it"
  end
  language "ja" do
    sha256 "b58dc04856151658bc21ee04b3546dabfe51a9bc48d0773559563217edc4fe7f"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "0f0658e3fb674e36a3a27cbe965993e04513280f89b113e015404eb7a2f89e71"
    "ko"
  end
  language "nl" do
    sha256 "6ab1e7f2b53a8c1c3ab17df3ca49f0fa8b3a4f9caee9ac490d8d1f987a915101"
    "nl"
  end
  language "pt-BR" do
    sha256 "42e7d8ad2ec3f749a7683317d22447597517de9215d9e86c68dd1dc044766acd"
    "pt-BR"
  end
  language "ru" do
    sha256 "c1917c01b5b6dbb37be3a755314cda57c313f5b9f2821e63aff0214a7870a59f"
    "ru"
  end
  language "uk" do
    sha256 "05f9604ca6b6a36ab482279cb2a0c78d8b0b98ab46c5c616320ea0c7a797fbe7"
    "uk"
  end
  language "zh-TW" do
    sha256 "3f167c8cfb90b22686ad35e46fec9ccc85cef9f06225bea448e18753306c786c"
    "zh-TW"
  end
  language "zh" do
    sha256 "e9daa967d436d33ce1b44d4da04a23b5df20a374659d43d1c4c852ba0635a6fc"
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
