cask "firefox@nightly" do
  version "159.0a1,2026-09-30-08-27-38"

  language "ca" do
    sha256 "6260d3a060389393d35f33b2df31dfe120f4942fc3c6d6da623d393dfbde8757"
    "ca"
  end
  language "cs" do
    sha256 "28284c927fdacbcd5ebcdc5b1070f3247663718a199de28b7435a3dbeda7403f"
    "cs"
  end
  language "de" do
    sha256 "c72a0d4031626100092971c64d16f4d34947a4886991d770cc729ac332760c4d"
    "de"
  end
  language "en-CA" do
    sha256 "88133f46e6c6f67daee4680042bc792b2204b060bbfad6b707ff51a867691c8a"
    "en-CA"
  end
  language "en-GB" do
    sha256 "4b5e53f2eaa9d88658d76d23c8ba6d2049a90353378473702772817a82d9e978"
    "en-GB"
  end
  language "en", default: true do
    sha256 "b68203291693083e1c0373b7049308992bd3f54c2c525f450ea7949560dfa178"
    "en-US"
  end
  language "es" do
    sha256 "d371badb3aff4fe09b5133b742a5bfa70e331fa4b797f1b02cf300f90f42c20a"
    "es-ES"
  end
  language "fr" do
    sha256 "eb37be0ff7cbb1cefc3aff6e559f9f86afc31683acceebe19ebaec2a617fa08e"
    "fr"
  end
  language "it" do
    sha256 "5cdf40aa6e5db04feea246fb53e9b971422093791c2e36c23dfab2d834b1f810"
    "it"
  end
  language "ja" do
    sha256 "3fe5cb58d19a9ba16461e0e5d63423fe75361250f6fe0cfb96081b59916bfe68"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "bb889fc1b0539a84fcb75262ddb401d294bc44ee37fede578f9182010e97400a"
    "ko"
  end
  language "nl" do
    sha256 "31e1e76959f755596abfee7887698ea39f57c1f2f72586441acccc939806f8ff"
    "nl"
  end
  language "pt-BR" do
    sha256 "06128f0e8b28b1d4eacec67dee59be16faf78acc2427e0ffb02a8fb20e2d87c5"
    "pt-BR"
  end
  language "ru" do
    sha256 "2cd040cca7ea8bea0f23d8042d0ad928b99288eb96e3b7cc4df830761e9129d6"
    "ru"
  end
  language "uk" do
    sha256 "87725a242fb394d77f282efa0710efcdad28b7363581105dbe8e88a423feeedc"
    "uk"
  end
  language "zh-TW" do
    sha256 "e3caf5075d6d4518640a8450ce6eabc091728b4c411ed9d5f007b08d4f3b2e0f"
    "zh-TW"
  end
  language "zh" do
    sha256 "5133474fcc5d397457e8171760c1d2a60d25ae484a9ca6ed0a81b29a143da612"
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
        "~/Library/Preferences/org.mozilla.nightly.plist",
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
