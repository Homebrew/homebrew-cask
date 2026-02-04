cask "firefox@nightly" do
  version "149.0a1,2026-02-04-09-45-24"

  language "ca" do
    sha256 "ba51b6397e98f13b59ac444e86bfa537322830d85b50829c52d4944c3f66a945"
    "ca"
  end
  language "cs" do
    sha256 "6474c966a71ccd81d96a505ddbe802749acf013e7ca098d354c2aeef23857c96"
    "cs"
  end
  language "de" do
    sha256 "e42ded888863672f94ce908b8a6e8ef66fc80071828bd1f26acd85bd6cceb4fe"
    "de"
  end
  language "en-CA" do
    sha256 "3bde0c0bd8f66ad527c72621dc2b31e15a33692325771cc9b706446c51d4bca9"
    "en-CA"
  end
  language "en-GB" do
    sha256 "f9fd9a7231dddef18c24deeaae7aa17ae2ab2c9d305f868e13aa37275ff8fb65"
    "en-GB"
  end
  language "en", default: true do
    sha256 "259048e7113f498e3c26784a10c8a3fe171fe7d00c8c27ab2f7aaed563a5128d"
    "en-US"
  end
  language "es" do
    sha256 "b644b0458b832302354c0cf5d2c5fb43ed312ba72a7da095b2da27bb8f49aa7c"
    "es-ES"
  end
  language "fr" do
    sha256 "26e996ec990dffa379dc6544ebc29becdf67fe674bec98f845d898beb997a8f6"
    "fr"
  end
  language "it" do
    sha256 "ff4b275ec333e6b54f9ee54e791e43e40e37bf31ee9e962f4d334b3eaaf15edb"
    "it"
  end
  language "ja" do
    sha256 "0a1e12e9cd883f32aec3526a91e9e86fe4f80f6bd4d11e879b33b3c97458e836"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "8273f71d29e94725af451706e01ab59650273b5d425009ed2399167a52c4dc88"
    "ko"
  end
  language "nl" do
    sha256 "df18fc16b3f902d751e2f1273a83402eeaa3a1e4ccdad61948a175c751564511"
    "nl"
  end
  language "pt-BR" do
    sha256 "252b33b98f6ad6e4c5d92ba3aa244605c17a2de8b2395f3b5bcca54697bc0d25"
    "pt-BR"
  end
  language "ru" do
    sha256 "087f54c519ed1d3833b3eee7c8a4e5d5627d5f2d3793a1c03564e8f1638a7d78"
    "ru"
  end
  language "uk" do
    sha256 "6105f38dff2eb2da2e42b3fef4d4eb7ec89c342b234f6f7a5f7958f345af47fc"
    "uk"
  end
  language "zh-TW" do
    sha256 "1bbc416e54d9ea113e4361abd2fd8777a2dcb8b34f4efca607c4a22eb9c5bab7"
    "zh-TW"
  end
  language "zh" do
    sha256 "09a7044413c81ea1465ea114a4d5723ac1dc401ac680d9f6d7ca07d2786c57c0"
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
