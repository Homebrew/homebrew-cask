cask "firefox@nightly" do
  version "145.0a1,2025-09-20-21-52-33"

  language "ca" do
    sha256 "461952cd9bc525d54be7268594b9cc1d46aefc030c7855fc7c35dc607a701b7b"
    "ca"
  end
  language "cs" do
    sha256 "dc556f803c5abcb2ed6b6733e107ca934095eff02e25651b45496ba9c8b83026"
    "cs"
  end
  language "de" do
    sha256 "c508d79f50ce4783f0d8e2161daf17eba899d0ff5b76f99e10845c275da8cd89"
    "de"
  end
  language "en-CA" do
    sha256 "1dd15ffb8aeb47dc816e3673363e5b94e9994cae0fbe7d0638ce98c5dc67c3b4"
    "en-CA"
  end
  language "en-GB" do
    sha256 "a3fa2bc29887cc983543796ee2eb95fffe0abfcb4e51f15c3202d7bd5b267cac"
    "en-GB"
  end
  language "en", default: true do
    sha256 "907469f70ea45241ddab4efa43b2f6fcb548d5e2c5aede267d09d4c99d245b98"
    "en-US"
  end
  language "es" do
    sha256 "4c927e44def2602bb3ef54f5de1b06d1d3567bff1787a654b7ad95fec6f00606"
    "es-ES"
  end
  language "fr" do
    sha256 "9fa8e20ea35e303ca2669f27e8df8be56211910292df2b459419738e7f7c66da"
    "fr"
  end
  language "it" do
    sha256 "f225460a83a7c8485de5fe318ace02a23b2ba69c6c46860bcd5ac056564bb7eb"
    "it"
  end
  language "ja" do
    sha256 "0bd140449308d8ff875a6f36278e24b91c6e5266380ed64ef65ef163f949d12a"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "653543e77aa7253e01d40c7d8596484a4d411870870e16cea93b0f9626a70e01"
    "ko"
  end
  language "nl" do
    sha256 "f74d84ebda7f022f9e0c2841b5ac6784666bc95640418af53af103507109e948"
    "nl"
  end
  language "pt-BR" do
    sha256 "1aaa74efe640cef094873de5f31d9c057139a70630fbbf0f97c1b8ada71866cc"
    "pt-BR"
  end
  language "ru" do
    sha256 "670f648c31e303e70c8955669721aa09a9b83715ac8395776ef2ea9b35868719"
    "ru"
  end
  language "uk" do
    sha256 "3faf8a38acf1e9374cf0b3f08b4cbfba986535e14816a3197ddda61362f325f5"
    "uk"
  end
  language "zh-TW" do
    sha256 "4755b9c54c916faa30c8653d3155b2672123b6785784c2fc154d945d0a0d424a"
    "zh-TW"
  end
  language "zh" do
    sha256 "c8ebdde166bfed0de2a8536f44aff588819c51f1114fb9465f275d002cd6d9d0"
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
