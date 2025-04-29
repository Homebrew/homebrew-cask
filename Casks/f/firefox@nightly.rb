cask "firefox@nightly" do
  version "140.0a1,2025-04-28-21-16-01"

  language "ca" do
    sha256 "3a3c549c363ef145ebe80a6eaf7b4221e3c73fc100bff0c2a1607a45cc80fd19"
    "ca"
  end
  language "cs" do
    sha256 "d93d84fa82c13b66cdfcd2f9af835ae61b88d74ff570448aff7c01408ac9ab5d"
    "cs"
  end
  language "de" do
    sha256 "b40b4d6cdeb5228da6a95526ea0358732a82494c3b4aab76c1faf3379858622c"
    "de"
  end
  language "en-CA" do
    sha256 "7a60151b175568b5560a55f877ccea18a72d859cab84e5f308b51e8c04e4da70"
    "en-CA"
  end
  language "en-GB" do
    sha256 "a7c8b24d3bfec28fc68423c5fe76d016782961a2706c1c3b7dbc9c88af745721"
    "en-GB"
  end
  language "en", default: true do
    sha256 "03697cc3668b934cdb563e5ab15a5bd0fe2928b313eb969e38aa44b71fbe1734"
    "en-US"
  end
  language "es" do
    sha256 "18cd6f5ff5fd5bdb32d282ed6e56b01e64873ae641b9c2e4e5120828bfedb81c"
    "es-ES"
  end
  language "fr" do
    sha256 "b03a4c59292a0aab616cd01e0adc7558125168ebfd99308c52d9f68e78b903f7"
    "fr"
  end
  language "it" do
    sha256 "0e63e0906ca615d74f6c41ad9689ef48dd5c40e2d4e90025a5eed54642b4fbfb"
    "it"
  end
  language "ja" do
    sha256 "1b5914cea265514f17988e2c8009e304733c656f9e1301751985fc41fc0b9407"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "96edec3c1bce182e0d64f417ad8cdcb353692d4b22dc390c1a097f5861710ffa"
    "ko"
  end
  language "nl" do
    sha256 "cbb48722693c8d2c0c109ed17573afc564c69f0227e930746ba11a13c5caa8fc"
    "nl"
  end
  language "pt-BR" do
    sha256 "f4512d67ff21c8fc12b26f7d9ddabbf1b992d4144d56f1dc87d043fa238e9475"
    "pt-BR"
  end
  language "ru" do
    sha256 "01741955440d1afb381feadfc45dd6acbe028419a71ef094f167c51453e2e650"
    "ru"
  end
  language "uk" do
    sha256 "e1846f39b75e3c5e51a195e8de7136ea243a044e1b7fe3610da76d44529c1c29"
    "uk"
  end
  language "zh-TW" do
    sha256 "68e74d145e433134e8752a00af696b4c61ed8437a1743df9d76b48f620420009"
    "zh-TW"
  end
  language "zh" do
    sha256 "f14355af34649f9382412b1065b4cef764e93f417cd4904d54cbd559c5d05a8e"
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
