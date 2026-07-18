cask "firefox@nightly" do
  version "154.0a1,2026-07-18-09-07-21"

  language "ca" do
    sha256 "a24c610a44fcf752afe8213eda50d251616d218a0bce24de31c2cf88fde0addd"
    "ca"
  end
  language "cs" do
    sha256 "a25460347c55e761c99b0c3ea0ca7ef375ac7348f05bf5d7f892469932dc7927"
    "cs"
  end
  language "de" do
    sha256 "1468da98630a9b612567ac676f15ac71ed476e7a89f4ca358aebbe1f2e3a9b10"
    "de"
  end
  language "en-CA" do
    sha256 "5aa69bb641f91f733efbcd6366198d2cd8d4c1ff6ae261f108dd347b1bb6708b"
    "en-CA"
  end
  language "en-GB" do
    sha256 "b9581a4644ac8af41eba3f5813e8871047d8e87d28cae95885bb87f0c1a6bb57"
    "en-GB"
  end
  language "en", default: true do
    sha256 "581f5f3525f8645c6d153c4ce3195bf1dbcf40c0d6e12d9a9fcac31587162bce"
    "en-US"
  end
  language "es" do
    sha256 "64914fa8f97311fff418692a447035b14f58645d5a7d730224134c016a4c03cf"
    "es-ES"
  end
  language "fr" do
    sha256 "aaabd210914cff4ff000a6d1aaa09aa9424d4f1f330448ce99579c4126d8e414"
    "fr"
  end
  language "it" do
    sha256 "04cf3d1fac343d62b1125c453e92f5ec925b80b74567c21ef9bbdccac0fb24ed"
    "it"
  end
  language "ja" do
    sha256 "a9e97abf974862d52532647e3a62d20da11785b097e0e7cc278037e6c2ce32af"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "47e00d335cf61ade95cf71fa95b5f603b24ad409e142a5b7c53ccde83521223e"
    "ko"
  end
  language "nl" do
    sha256 "3c6d0b3ef5aef15655793a2a95178502436c03077be3768260939cb17cba56ec"
    "nl"
  end
  language "pt-BR" do
    sha256 "601c6aefd18dc629e8ade7ea3b4d8b47b726c8e9f4568152af9e2512c4f08df5"
    "pt-BR"
  end
  language "ru" do
    sha256 "aa034ed8c755833a075d2ee533605cff6312d3165b6890d02ef0e6c5920f68a4"
    "ru"
  end
  language "uk" do
    sha256 "1f3b475fb9a3d7fb9de98f21549afa3fd42545530ddc861e5c7974d81e9cb1e9"
    "uk"
  end
  language "zh-TW" do
    sha256 "3ef37986602f0e078d657a9040110d2caca90458b515fcf6fd15e4a113a641bd"
    "zh-TW"
  end
  language "zh" do
    sha256 "aa9a572e3ac10018b98cfb24c82921797683fc267486210599c3269b55f5cb3f"
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
