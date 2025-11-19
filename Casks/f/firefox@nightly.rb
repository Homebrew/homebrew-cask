cask "firefox@nightly" do
  version "147.0a1,2025-11-18-17-04-37"

  language "ca" do
    sha256 "1a4b1d463627922927a1c02dc458aa623a08f045d838ffe2de720216f3b01594"
    "ca"
  end
  language "cs" do
    sha256 "c549a31f2aaedf72012ecab71aef7fd2134cd6560dcacb301972ed9efdd1cf78"
    "cs"
  end
  language "de" do
    sha256 "bef9d15a335c9ade9d9fdadcd8d87324715299d53619227ec1819f518978bf96"
    "de"
  end
  language "en-CA" do
    sha256 "f5cc6160dc746134e456165b5914aecc65c1ed852a6de11b1f04a778d26cae98"
    "en-CA"
  end
  language "en-GB" do
    sha256 "584f46fde2a33d99f70a09a24247455a65d222cee7dc4fa1deabc0f7546cb75e"
    "en-GB"
  end
  language "en", default: true do
    sha256 "6bf938f786d95214b61e8d5e6aef20a8f8cc84069ded438c5dc19146467ac210"
    "en-US"
  end
  language "es" do
    sha256 "1fecb675e08c675e9c96b49363c9655498545db3d1056b9c2df72935c3c908d8"
    "es-ES"
  end
  language "fr" do
    sha256 "0b61871bbf516aad46e3e9c0ec7395fce5cb81951a977ad9ab4e67481d576ec0"
    "fr"
  end
  language "it" do
    sha256 "b63b12b792f4f8f24aa178da30277e76b31dff1f229b8859bfd8296fff7b6910"
    "it"
  end
  language "ja" do
    sha256 "c7df1747f42f2a9eed2504dbe2c14f3d7092e0eff27e31154d0362270a5a701a"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "3586aeaece71607fd314a6397551a701a1759ffff3c07c4e253e0e1cff075d4c"
    "ko"
  end
  language "nl" do
    sha256 "fde01e44751b69802cf73dc4d507619f8a9aab468fe96c032f1468b81be3974c"
    "nl"
  end
  language "pt-BR" do
    sha256 "41020ecc4b1c2d280f509b1753e92d0dbfe6a2f4ec991bd8765c06bc430cdd99"
    "pt-BR"
  end
  language "ru" do
    sha256 "5c9ba696a0fe0d5f4adc415e41cd7997d0ea42cf9238b81a03947d2b8f938831"
    "ru"
  end
  language "uk" do
    sha256 "bc70aa677942c0767c53a8c8328a25f29402cd60170e0accbcd483e411b00472"
    "uk"
  end
  language "zh-TW" do
    sha256 "f9f3e458e182e5c7c78fb711cc282eb91820048dce0c846b60a11a610a387a32"
    "zh-TW"
  end
  language "zh" do
    sha256 "7c06bbb0716ec0d2cbff97c6bf1f56c85fedd95d2820c16d9484be0a6848767b"
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
