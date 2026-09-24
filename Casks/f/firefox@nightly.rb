cask "firefox@nightly" do
  version "158.0a1,2026-09-23-21-39-29"

  language "ca" do
    sha256 "5d4c8d176ad599c72ca2660ffe6e777a42015e3e24c69e386f88a04004675da4"
    "ca"
  end
  language "cs" do
    sha256 "2d03f00298f4a5b6515dc24d86f7e88c3f0a4b141fede1f4cb87dc9b8a1b6ed2"
    "cs"
  end
  language "de" do
    sha256 "3a553730554651c55c166572ab53a765ae645b36f830cb6f8f73f519b3c15d87"
    "de"
  end
  language "en-CA" do
    sha256 "57a14ef600a29c3d8e05aff708faf873a4aed680996f0a21485ab7c177b193d2"
    "en-CA"
  end
  language "en-GB" do
    sha256 "7d3d05e3f4d4df68fc5a71d5cfc37f65dcaf2788ecc9b01c29e4826ab5e7d476"
    "en-GB"
  end
  language "en", default: true do
    sha256 "6ece6b27fbd8e706988376abc990629b0d4c7e2c5e550b294a62ab9f485d1a2d"
    "en-US"
  end
  language "es" do
    sha256 "d858bc1a1d005ea79a36597d6fba837d0ce7ae05e681a105972b6c05e66d5e2b"
    "es-ES"
  end
  language "fr" do
    sha256 "c2a3796e3d262b1e6abde873e5821fad4622c925168b68be604b72cb7304734d"
    "fr"
  end
  language "it" do
    sha256 "2c535bf1ef43008ac1825844734e16064988ef6d52a2252f607296016d2facea"
    "it"
  end
  language "ja" do
    sha256 "3b39cc69456a21d38efacc8525db12d5848f215cac5a5202a6bb7b5d118ee0e5"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "76260a623c05cfed5178f782ea5cc5c40751c6d0e224cacd5f721f3fde619f14"
    "ko"
  end
  language "nl" do
    sha256 "79fd15ef76cecec4cb25bbcde4104e039d7059b02be7fe946f7c44593172aadc"
    "nl"
  end
  language "pt-BR" do
    sha256 "a98bb5400350ce3344930091909cabb123e086622fee5061a5d508c374505ff3"
    "pt-BR"
  end
  language "ru" do
    sha256 "7d1b3ec7d9968ad65537cf7d4c994faa6f0900cf61b3aa6066e05a9a26a7c2e6"
    "ru"
  end
  language "uk" do
    sha256 "a872608541ef1905aeabd8e3f464eacc80a76e86abb51321d3ca6e35376d47c4"
    "uk"
  end
  language "zh-TW" do
    sha256 "1ef44bc2077ca9914d3fe031cfe26b413b26a7862dc2381a66e818d7a519d182"
    "zh-TW"
  end
  language "zh" do
    sha256 "6db102b0930ddc905611509202dc64e2044129ab1f2f1c0c70902d02e57c0bb2"
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
