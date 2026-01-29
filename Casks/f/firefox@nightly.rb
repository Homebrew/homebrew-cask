cask "firefox@nightly" do
  version "149.0a1,2026-01-29-09-48-11"

  language "ca" do
    sha256 "33a5642565ff65b6416720b6e42b744602eacff0d963721c192e5e5fbc220154"
    "ca"
  end
  language "cs" do
    sha256 "82cd175e9245fb5ceb8716719b208bf71734705a828d13af4c21d1c771d51ecd"
    "cs"
  end
  language "de" do
    sha256 "0280a98f10b7e5130b362df11a36191f959b139fba5c83c8303fb5ecd3fd9d3a"
    "de"
  end
  language "en-CA" do
    sha256 "00ff897764fcbe11ee62202b0915508f6080ecca4f0acd8676375bd66ae7d314"
    "en-CA"
  end
  language "en-GB" do
    sha256 "cfa9ff16a6cf5a658113dfbcd30c1a643b24d612bbf9412329cd7dde170c6469"
    "en-GB"
  end
  language "en", default: true do
    sha256 "6381f6ee2c69b12ade26c04b63da7c0989f154708ee41b5b564d11986bded9e8"
    "en-US"
  end
  language "es" do
    sha256 "83b9d6f94893900d86210f860c2a2dfe6a8ba1f2c1b5bfb5651e12f54897030c"
    "es-ES"
  end
  language "fr" do
    sha256 "fbf9401821e3e3aa71459a9bc3bbc1366a249bf42b4604989a00ca449506561a"
    "fr"
  end
  language "it" do
    sha256 "a9b1f774c6a5221024a462f481c23da0a68f5b83009bdc1ab29d03a6e4bac72e"
    "it"
  end
  language "ja" do
    sha256 "be8f10e8257679861c25e8fac6a030c0caadbc7ac59330d46f1bc4d68aadff1a"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "1ff1e02c0fd32f37783cef81559149e2bdfb67746b537fae0d9301b68e021d7c"
    "ko"
  end
  language "nl" do
    sha256 "59fd0c01a4bddd7db5c218f9a8c9a5931ae855c765dc59e709e49cb22d70e67c"
    "nl"
  end
  language "pt-BR" do
    sha256 "25c431e5ddad54958d64cec5e726355739050d1657b352cf7803006a066d78e3"
    "pt-BR"
  end
  language "ru" do
    sha256 "8dbada285d2574b04663cc622d9042298c7568e97bb07e36a12e7228a72d576c"
    "ru"
  end
  language "uk" do
    sha256 "6d5813718d16a3a83d0453b033bfc2278f944357c902974dce22b8ad967cfdf3"
    "uk"
  end
  language "zh-TW" do
    sha256 "ed376042ac3eb0d7620bd95d1c7d982aa71c5c56bdc404ddf4854b317de15dd5"
    "zh-TW"
  end
  language "zh" do
    sha256 "25d306ea1672cca59a6142db681b02ecafafbb25ff21ad15c5fcd68d4e09413f"
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
