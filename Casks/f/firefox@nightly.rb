cask "firefox@nightly" do
  version "148.0a1,2026-01-06-21-28-59"

  language "ca" do
    sha256 "6cfff63c0136a062b0fcd09568899c2c4d1a7821eeff1e4b5c0f5c61509b2e66"
    "ca"
  end
  language "cs" do
    sha256 "7ef4592cab630e49f54ac0363659fea3e000704f9db3f54fc84b6c4375174e6d"
    "cs"
  end
  language "de" do
    sha256 "068d424e959ebc86e465b7233ca4dcc5a403b627f7be8eacfbee83f618276982"
    "de"
  end
  language "en-CA" do
    sha256 "dda8312db15c2abcce1ce05dafb37573ee87f32e11683c610edcf0b959506146"
    "en-CA"
  end
  language "en-GB" do
    sha256 "e97faae3b084218fb7f5609a8983d936dd79181190c71ef5a1dc6ae099cb3bd9"
    "en-GB"
  end
  language "en", default: true do
    sha256 "9ac78f5a291374f28f826f4bf7f43494d386aeb95901f856e003ee83fab1d36a"
    "en-US"
  end
  language "es" do
    sha256 "291443888f61a31bb769ce2f40d8e2e02bd6efa257b40acb6711a83081369ff5"
    "es-ES"
  end
  language "fr" do
    sha256 "0a157ea3f1f8df7d27463ac247daa6e29bd23d5a4ba1fc0cf1efd9456af68b42"
    "fr"
  end
  language "it" do
    sha256 "8146b35999fb2d56cd63edfe8cbc0992a55f04eb449449b5de267c9bb5ebced7"
    "it"
  end
  language "ja" do
    sha256 "c0d6b654e270fd735e91f46ed80f7195c6167e91ef1fed33e27b7b35990c8a0c"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "637b9a71dcb5022e950c920f43b2da054c340c9ac0acaac96d2c4a3d58b1748e"
    "ko"
  end
  language "nl" do
    sha256 "5fcf4d6733ac6e067f37dfdf3450ca02803136ef31d67bbff138c489b52b6b48"
    "nl"
  end
  language "pt-BR" do
    sha256 "f12492377fcf68913a842d640d5cc0ae15d1b2d399f63c00740c13eb72a0411b"
    "pt-BR"
  end
  language "ru" do
    sha256 "fc6be18b4a5c9b5f9094dd495b17aa8261a8e3fbaf0c4bde0195268d804da054"
    "ru"
  end
  language "uk" do
    sha256 "573cfc81d2fce88838a4d944a48e9503ac1a5295ee045d87638f21c7831c4920"
    "uk"
  end
  language "zh-TW" do
    sha256 "b0152c651da4d41002758dc7c0e4c235bb14f4e4e76f50c0d6f4c72e26754889"
    "zh-TW"
  end
  language "zh" do
    sha256 "62ed9c19b78f79433c4dd5b1648a620177a2222b1daeb27f744bdb126bd72701"
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
