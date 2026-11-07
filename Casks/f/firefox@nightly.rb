cask "firefox@nightly" do
  version "162.0a1,2026-11-07-09-25-11"

  language "ca" do
    sha256 "6fc38170e15aab2cfe4de7ffe286d32732e018bc68ce3ae4207a0ba678ee8d54"
    "ca"
  end
  language "cs" do
    sha256 "5ba19760eeee719ded34ed9547cdb1b70efa9334ef3aee6ed5e358360fd0eec9"
    "cs"
  end
  language "de" do
    sha256 "a6ba482fdbda7b295ca7a538dcbc3d311705948fa7262845b6e1e9be4438416e"
    "de"
  end
  language "en-CA" do
    sha256 "da1c4080867a9c626f41fe2d71f58b8fc296d76350ba9d48b0db159b40b230e4"
    "en-CA"
  end
  language "en-GB" do
    sha256 "3cf8c323432cbb778d81f015850fa553132fdf144d67bab69c1aad3da1e2b8c5"
    "en-GB"
  end
  language "en", default: true do
    sha256 "5f3e927f24fe8da586f36e9ae48bb8ba5b745e558acd58fcb98787b433c1a3b9"
    "en-US"
  end
  language "es" do
    sha256 "67e8338f4b6299dc58616e4169979a1e9fcab48f82298c816e839f8c865cacc6"
    "es-ES"
  end
  language "fr" do
    sha256 "e492b7d130930dc1a735afbdc950bcf27d56a6a95b48b99a8610a8f5a26209a1"
    "fr"
  end
  language "it" do
    sha256 "391cb7d0d2180293e651926f50e20b9f139533fc78367adea7dff13108778239"
    "it"
  end
  language "ja" do
    sha256 "d92414ab2f52ed577f51e1bd23c60935b6bffaf4efd429798686c5d9f361fa2d"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "5a71e4fe18f7c093d4bc271319749cbdcf64082f98813e27b725c54815511c6d"
    "ko"
  end
  language "nl" do
    sha256 "350d482d9d92bdd565a50f2fe0638598671e2e59a0af278f97ef40f6c79022f0"
    "nl"
  end
  language "pt-BR" do
    sha256 "f377d96f3d12465fa9a9c9fe5a778f96d744813d49663cfae9d7bea628ec7a04"
    "pt-BR"
  end
  language "ru" do
    sha256 "27878d6f55ccb1087e20bfde0f1d8ac56787d162d9af9a560d808f14dabf4dd2"
    "ru"
  end
  language "uk" do
    sha256 "c83a2e728990a082ff0109938a5611e14ec66150df3c85819010460b0ec91b9c"
    "uk"
  end
  language "zh-TW" do
    sha256 "c61957d2f9f367bc60d727ff2f51b5ecb453ee037463cf3eb940be5ca1dc3123"
    "zh-TW"
  end
  language "zh" do
    sha256 "2c427b830ab9390832cf53549fe4c6aa0ac83f1961d5c44ac9a0cd71901d7b8a"
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
