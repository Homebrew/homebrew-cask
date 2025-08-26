cask "firefox@nightly" do
  version "144.0a1,2025-08-26-09-53-22"

  language "ca" do
    sha256 "1262239958bb883643b239745a848962f1cc98b80d064055d440619b78b16439"
    "ca"
  end
  language "cs" do
    sha256 "a959fd176423c496c7bf5e2f55861986b992ec6789557959bf43eda4a9fc1137"
    "cs"
  end
  language "de" do
    sha256 "33268e4cab779d0aa1df2bbbfb2a4ec84b26d3250680ddfd4ccf7e1d10f3a0eb"
    "de"
  end
  language "en-CA" do
    sha256 "96d6802d55add14b13ad8ab7f788fc47424b173efd8260d2e602be02d4603dc0"
    "en-CA"
  end
  language "en-GB" do
    sha256 "2574fc48823067d586a05769a5fac3b59960486a0fcbbbf739a2d6fcc65278a5"
    "en-GB"
  end
  language "en", default: true do
    sha256 "9bfdd84807554e2fb688eb789577f0a0d679b03b4d866addd55c40efca6b8412"
    "en-US"
  end
  language "es" do
    sha256 "d4e98ce5813520080fd8a81c1ed82ab49a13cb29bf7ac6db77f7fe5e93dbcfa6"
    "es-ES"
  end
  language "fr" do
    sha256 "8c056a00a1a4c208539bee3116609db6840ddcb3a594c98e0f2605c3fe9f6d32"
    "fr"
  end
  language "it" do
    sha256 "943d30bdf846af0497b1726de48fe3f44bb553b7014020774b4db5a82336f783"
    "it"
  end
  language "ja" do
    sha256 "dabd46ddf55acc10ece8d2b6ecd211bf40369769b8ae1896a3dee50ad62cc117"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "80cb66468cb73016dda20753eb5b04153808502c16b05996f157d8d3e61de4f5"
    "ko"
  end
  language "nl" do
    sha256 "c689d8108503e5bc9ab7d65f98cedae9771b61714a1c7561517006a0791c3f73"
    "nl"
  end
  language "pt-BR" do
    sha256 "00ef1c6baa627640e4bd95caa8a8ea6b90ba50ea46ea404b12c2298ae1bb2a34"
    "pt-BR"
  end
  language "ru" do
    sha256 "ed99c21ebe8a78d20c904fa8663ad7d9b5109a9984a361bbd2b2cf2cf5a5db30"
    "ru"
  end
  language "uk" do
    sha256 "a8babc109cc3faf36659ee7b3abf49c5a6dd750b0a957df0c66a6b1e89f7b539"
    "uk"
  end
  language "zh-TW" do
    sha256 "43d1b5ba1b99626e951608fc65ee6eb88b99c1253fb6fdc3a952bfc86d9797b2"
    "zh-TW"
  end
  language "zh" do
    sha256 "2c509a4c65c91d708ce0f32349d2d82b7f91a4d133b17501dd3cdef9bb211ce1"
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
