cask "firefox@nightly" do
  version "142.0a1,2025-07-18-21-43-28"

  language "ca" do
    sha256 "e4b441afd8211b920febfc7c516b48d6592a6be2b7b9ec719f3d6ec4136b455b"
    "ca"
  end
  language "cs" do
    sha256 "74405a47a26d039b59bd8f336f0a7b7ec9d33c226031dd358806119fd9ac24a5"
    "cs"
  end
  language "de" do
    sha256 "dabbd2f25c623a7be75d070f7725f702083cd5d2637ed828413d792cdb680b96"
    "de"
  end
  language "en-CA" do
    sha256 "70f32588b45236966c7e0f043aebfdb95e9dacbb0a3fa24508ff27b34e73f829"
    "en-CA"
  end
  language "en-GB" do
    sha256 "9826164b790a7e26ad7bbdae03c7b6fe391801c835e65cdcfba50bff7cbb12fe"
    "en-GB"
  end
  language "en", default: true do
    sha256 "ad236bbe3c46158936c8b93119b3ee133f0564dff7f5b6cf44635a46b625388e"
    "en-US"
  end
  language "es" do
    sha256 "576fe7b01326fcbea2d1136944734d4a7eff017a93ae33e9b775e1a0623d87e4"
    "es-ES"
  end
  language "fr" do
    sha256 "841787c3e12be57cc661a71bbe82cc404c31dc517b0bd3d71074a0f3f8573231"
    "fr"
  end
  language "it" do
    sha256 "a6779b2be38e64a5ca2edaa5ee94998dd1a06e1a3404204973c82dad3a81d7f0"
    "it"
  end
  language "ja" do
    sha256 "6c0bef6c2d070f729c16c247e6f8fdd5802c0be3dae85741a7642bd524205c75"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "f5320ebbd649a8949105c27b893f7e53599e7b0a80120b55ee9f4d55d078a16d"
    "ko"
  end
  language "nl" do
    sha256 "dcc24f9cd92591660c9ddca657a5e0f75dabc790c4a98d08e7300c8a0d055e6a"
    "nl"
  end
  language "pt-BR" do
    sha256 "a23570a92d3392158ae4f2fa71f713dbd4922ed39b41add9f2408a60af81b088"
    "pt-BR"
  end
  language "ru" do
    sha256 "5412a1d897323577a904b1a62cff466651ae0e4467925015b5fedbb450d840d9"
    "ru"
  end
  language "uk" do
    sha256 "2132b9a41172a11dc943f75f25411f7809476a6a3d664630c956bd9a6eeb9a52"
    "uk"
  end
  language "zh-TW" do
    sha256 "70e0b2cf3e97c27591124932b83dfa476859360f3601189f2d1086d0ed8505aa"
    "zh-TW"
  end
  language "zh" do
    sha256 "fd1a865a3b4ff5a054274a3ebfb3bd347c1b8f45b7ea51de2c65a331a0f18ee8"
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
