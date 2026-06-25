cask "firefox@nightly" do
  version "154.0a1,2026-06-25-09-47-08"

  language "ca" do
    sha256 "b75338ffd9781219a0726953803c76e5d2a1b5c94eb2192c8b745c885dac1f1f"
    "ca"
  end
  language "cs" do
    sha256 "d4edabc061f1ec9885f07cc66d5cad46c02b170eb7687e437574790a8cfcc903"
    "cs"
  end
  language "de" do
    sha256 "7cbdcb51b6e3c5d0b8b26a5eca2e992d1b7ba673d75a269d166726125cbb75e5"
    "de"
  end
  language "en-CA" do
    sha256 "25ef4412f4616adde4305e3507289630ef7091c6cd31aeb6231b337eecb63fc9"
    "en-CA"
  end
  language "en-GB" do
    sha256 "1321ede51e5291fbfcf918c4d19baadced83caf6bf0e6155650a7134757bd752"
    "en-GB"
  end
  language "en", default: true do
    sha256 "3abcbceb2e76e724c5f8080ddfba2cd46caf3e277c89f8da3da1a09d88f740d8"
    "en-US"
  end
  language "es" do
    sha256 "02b984318b56500413125162e852a0ca3da2967d28ae187eb14d0c82397fde8b"
    "es-ES"
  end
  language "fr" do
    sha256 "9c6ce9d794b569836971849347eb66557275e4566c19e662e0a2136a6c7f35b5"
    "fr"
  end
  language "it" do
    sha256 "0dffae3d250418ec2c229091153d25072ff838eeaeef2541577cec36c6e2eea9"
    "it"
  end
  language "ja" do
    sha256 "1625571bf5c44471afa50e1a0855724826002bdfddcb0c19f696e4bf8387a0f1"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "226f87598aa13a23aa3555123d84ebc98d1d5330d577e7ea9b0d68301f393404"
    "ko"
  end
  language "nl" do
    sha256 "544e41f34184744f5b9d0c9ac4efb285ca9d225cc8999acfd087c0cd9a498041"
    "nl"
  end
  language "pt-BR" do
    sha256 "8474ff4230d0f78e864f80d0b98d5c589fcced71989d86e19c3b2561e8fc93ac"
    "pt-BR"
  end
  language "ru" do
    sha256 "fb1041fa37af22bfd7e55935a0b63375ab4e3041256c77161016d63c1ba66453"
    "ru"
  end
  language "uk" do
    sha256 "0afc78c28b5bce6ffca3e761f9ba7cf5feb339894658bc35956d32987e4a0f1a"
    "uk"
  end
  language "zh-TW" do
    sha256 "9bfde1dfebe87e2b86486d37ce2ec1714b0dc134378079508b3600abb9f09e56"
    "zh-TW"
  end
  language "zh" do
    sha256 "9d67eceb9b379c7dae630283cd43256f7e169ccfb0d76d5fe81f8a05af9dede9"
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
