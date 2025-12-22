cask "firefox@nightly" do
  version "148.0a1,2025-12-22-09-15-24"

  language "ca" do
    sha256 "6cf1de16d1d79252d82292cf01a6ac31a2ae8232630b1ab3364fa23fff74dfc7"
    "ca"
  end
  language "cs" do
    sha256 "bf3e9907202fe31e4a34ccd2df58fee76f0c5a8af4ecd1d507766689c2c48063"
    "cs"
  end
  language "de" do
    sha256 "212e37b38ec7159efdfd0b12fd7ccf6a1b21b73d212d5c2a298fabc589d6954a"
    "de"
  end
  language "en-CA" do
    sha256 "04eeed5ae62bb05aea9891412798da13fbd212225007287cd067304799765f54"
    "en-CA"
  end
  language "en-GB" do
    sha256 "f012f29777a742759ad36be5d429aa532eb02b9f43d69e54676397cc94d82681"
    "en-GB"
  end
  language "en", default: true do
    sha256 "77d163ac3b92199eac02c03e72eee759fd95aaebfc2a6dbd3b84480aa2a62f28"
    "en-US"
  end
  language "es" do
    sha256 "4956507750b34a9cc93b7446ca4b3837010d41285c7c17642b5533b115422288"
    "es-ES"
  end
  language "fr" do
    sha256 "5a84f1180923ff26a89c00336b1fe785d92f387aaa58a93c483b3596d8b8fbcc"
    "fr"
  end
  language "it" do
    sha256 "257f1527213840520b33fe378b6eb005ac1658f04021a66cb8665e28b2e77412"
    "it"
  end
  language "ja" do
    sha256 "fe134879615dc088b4d2ba0ac309d7cf2da8cdb111be7daf6afd691e4128ca70"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "98ba0f63f454a71e57424dfec1306c4fa81eb047906e18f59c6f2bfc96a78291"
    "ko"
  end
  language "nl" do
    sha256 "ad702068188b711d2670a1a1800cad524bfea9b93352d532c150b2c57bc04684"
    "nl"
  end
  language "pt-BR" do
    sha256 "73f20d0f08242758bb9a3878addbe03a15f42b5f04123968b8be18d9387db8dc"
    "pt-BR"
  end
  language "ru" do
    sha256 "ee7eeaa7361b819f53003338359add1a01ddde09707401b145c18f1289b6059f"
    "ru"
  end
  language "uk" do
    sha256 "d174fe511d55291df47e2daf63940185b364ce01d2e69aa79c21717c3af536c2"
    "uk"
  end
  language "zh-TW" do
    sha256 "741a54561bde5688fee1b4438d7e5d95a251b9ee15507f3bae2bebaca20fef1b"
    "zh-TW"
  end
  language "zh" do
    sha256 "9586e9c999d824b6c7588ec55b77a8cf852edf70c994ba3cdd78fae73132388a"
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
