cask "firefox@nightly" do
  version "144.0a1,2025-09-03-21-37-41"

  language "ca" do
    sha256 "03469b4fcbb71b8f741cfb76659ae63edd48d19eaab80928d4bbb70c4b33b7d9"
    "ca"
  end
  language "cs" do
    sha256 "53db1fb3a628d8fac5462016fd9dc188aced9749e8601da051b19e5ff4e5ea8c"
    "cs"
  end
  language "de" do
    sha256 "ce1084f007cb691d8ba387a4b35ed9b90d1da21b8f4c521b2bcec0338839829b"
    "de"
  end
  language "en-CA" do
    sha256 "0a3c4f5e40a25904ca192b98aed8c0be4819a0820c17581c0ffaaac67c561971"
    "en-CA"
  end
  language "en-GB" do
    sha256 "d014547448261db48b075d8b765c8c964cb144dbc4c5db2995c19351041aa2c2"
    "en-GB"
  end
  language "en", default: true do
    sha256 "042e4f1542b24df9c18a2d437241dfedbd301045ce08b76a14e1661653992364"
    "en-US"
  end
  language "es" do
    sha256 "e3907b70b70f47ea8c4664ba7fa564e5b41d15f401021d2dcfa1ef411a431524"
    "es-ES"
  end
  language "fr" do
    sha256 "3db03314537aa67a9de21da2395dcf377bc4d51bef963d8c0ce98e9c64382224"
    "fr"
  end
  language "it" do
    sha256 "ea4d6de53aa5451a937048ba9b70d9cdbe9c7aab09babcb9bb7e4cc64c93430f"
    "it"
  end
  language "ja" do
    sha256 "5bff2f3cdb86ed3cf8a37dc3ffcae0a68d114199e2ee52f25b78be46915e1429"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "1a792e016b685712151d6a5fd47026bb0faa87298cec3806c3f32770ffd14107"
    "ko"
  end
  language "nl" do
    sha256 "bbb90f4f98abfa10d86e65ff98c38a006508449d7482f5cf0c805c324ba82312"
    "nl"
  end
  language "pt-BR" do
    sha256 "a9c4fcf43bdbcc4cd4c5d60f4068ca4668d5d8e2ebefb59ccf74e97f8db97eed"
    "pt-BR"
  end
  language "ru" do
    sha256 "45dcc2b8d7d038079036dc7172e591e2f11bb2ed58cb683d07db25c9db54a805"
    "ru"
  end
  language "uk" do
    sha256 "a1450b95257c9fd333aa4a68803af334935aea6b908c79ab0db88a01f3033389"
    "uk"
  end
  language "zh-TW" do
    sha256 "fb27bc6d4d7482cc9c330e9ba5b9b2ef2ad75d6611bfe12f93b6cd528d1387d6"
    "zh-TW"
  end
  language "zh" do
    sha256 "6cc5449c1cad49e34bce22710c94d09bac36332b636b647a8edfc7177ba96585"
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
