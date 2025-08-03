cask "firefox@nightly" do
  version "143.0a1,2025-08-03-09-26-20"

  language "ca" do
    sha256 "e53762ac17eacd1ce8b3c60c4add39cedb7493b8dcce6c15eb0be2c7f79e6aaa"
    "ca"
  end
  language "cs" do
    sha256 "72fd8088b7f9837ee12190a2527498d64207db5ff7a16140fadf4eb674a87c74"
    "cs"
  end
  language "de" do
    sha256 "a5f01b890c9982b8a484279494cbaa36c1edbee21e5b6d00ca91a97b62cb1cbb"
    "de"
  end
  language "en-CA" do
    sha256 "0e02b973174abd024a94869b1c100eb7c75175f9c9cee7adf069cc68febcf6c0"
    "en-CA"
  end
  language "en-GB" do
    sha256 "ca1c1d7a81491b0ca7441fd05103ce42ad48cf847fd06296ef725bfea96901b6"
    "en-GB"
  end
  language "en", default: true do
    sha256 "377fca5289d98055d75440e4595205e0cce72d0ac8503dbbda9bd61431d824bb"
    "en-US"
  end
  language "es" do
    sha256 "72cdf46ec2c8d3f856e70c8b8522c83a8adf72116f4194e5ccbb5374bea46458"
    "es-ES"
  end
  language "fr" do
    sha256 "ab638208e31bea50d7baa28422e2e521648394f21cd24b23598ba8f6cfc2e492"
    "fr"
  end
  language "it" do
    sha256 "de9c84c45b301b566de2862fa3f80a3f2aded3054c256e9514c30d787f7d19df"
    "it"
  end
  language "ja" do
    sha256 "a1932926baeb3bd4284a53782e96958fe7c05737b0eb949c8a2efced44d8d7b3"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "7ad5d235302b6386f9e2d5e8069c4674dff7894590d6565748d773489d36e734"
    "ko"
  end
  language "nl" do
    sha256 "9cd706e3fc146ae9b648eec0ae8fefb56faab29ec55e22ae34385e925806872d"
    "nl"
  end
  language "pt-BR" do
    sha256 "2e174ae67389717275248126392c374b16c16d6cdba9e246f7069aa0dc3bf598"
    "pt-BR"
  end
  language "ru" do
    sha256 "95c9c757d731ceddb9d6ae27c14fa0eedb67a652ca956101639b1fffc1cc9a83"
    "ru"
  end
  language "uk" do
    sha256 "d5ccb42bae1ca29bea2365208ba217d87bbfaf051bdd3dbfacd048e5ad54e044"
    "uk"
  end
  language "zh-TW" do
    sha256 "59fc1290027cbc7f2299d01be043e2051329cb24ee91301b2f2e30ba822622f5"
    "zh-TW"
  end
  language "zh" do
    sha256 "6ef38cb797402c72336897cea83c14a826fac80d387480a2fb8292b92d92875a"
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
