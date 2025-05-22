cask "firefox@nightly" do
  version "140.0a1,2025-05-21-21-24-25"

  language "ca" do
    sha256 "bc8e1ddd0322fd6ae2e8dd151c22d5c51e7f4572196ab61ca4005e9b3a81ad4a"
    "ca"
  end
  language "cs" do
    sha256 "d0ddd2450c7a9d083f5ddf39f4ac6378737c3c0575cbbf71025326c311dea857"
    "cs"
  end
  language "de" do
    sha256 "3d84c9391e304609347b8c0ad65c9be149a5e3ca24bbd94dc09b30812b1e7782"
    "de"
  end
  language "en-CA" do
    sha256 "d5cd5e6812f8c7ec044090439c2f2805fe106c1c5056ad08b91bc370ac53b107"
    "en-CA"
  end
  language "en-GB" do
    sha256 "d004c59823bc3087274d53fe28a7a1055c3cd17e1cb435988d8307f424ff2e87"
    "en-GB"
  end
  language "en", default: true do
    sha256 "18be799078d3a71283810f5fa7c36a4eff54850b674f1d90236081476d322dcb"
    "en-US"
  end
  language "es" do
    sha256 "f45bb94a84086e53e7b5b78f3e633668494a40263c4570ec2477939ab2e7d6ff"
    "es-ES"
  end
  language "fr" do
    sha256 "41c81a23de053434179c9f079e7791e5ab0a3419c0e46ee8f653c3138d3cf95e"
    "fr"
  end
  language "it" do
    sha256 "7b264e2c70459c0fa401f891bc6e5117582390b94a331b0d86094db0a5d756c8"
    "it"
  end
  language "ja" do
    sha256 "df974abd9752fb344c7bee5a2b3fec6c554d48cb4949924a1737a19fd80a9936"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "78f11a600ecb5009c91f1855bcdeaf3e9b18fca08373e8d2e76e5f209daf8667"
    "ko"
  end
  language "nl" do
    sha256 "2c8298fff675dd5f332eee96de45dca10912e6c5c910488c5d059ced609fa346"
    "nl"
  end
  language "pt-BR" do
    sha256 "94482f31ea66185cb8edf7f330defe7b72190fa765814e63b30e5866c3cbf1df"
    "pt-BR"
  end
  language "ru" do
    sha256 "1eb7f516cdce7d34c453ddc0f56534fe6f5687931b58da913624f14b89f9495f"
    "ru"
  end
  language "uk" do
    sha256 "e5d4092597413ddd305a48608b76443871b37d536fcf42008a107c48cdb28410"
    "uk"
  end
  language "zh-TW" do
    sha256 "58c475031713be38e9cbd3f6a4548e219e7b124668d05c564ced9224ddd9d592"
    "zh-TW"
  end
  language "zh" do
    sha256 "054b5e1626bd9669a7bf5a86af6806b9539a13ed53eb2a27408c2be9df766a53"
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
