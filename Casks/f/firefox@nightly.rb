cask "firefox@nightly" do
  version "140.0a1,2025-04-29-23-15-35"

  language "ca" do
    sha256 "0477253cd1a374538154c0233263e727e1db2c1a238273b7fbfce628093ee92e"
    "ca"
  end
  language "cs" do
    sha256 "3dc7c1aa82db61a6eda3dc19a9f9d669cf613d1bbd9708a7d7f9f6cc27772e0c"
    "cs"
  end
  language "de" do
    sha256 "fbddcc7a45b93b0125e04c6d1e9556f12ceaca8114f8b65dff0033ddd5f168d6"
    "de"
  end
  language "en-CA" do
    sha256 "a027feb07cd072871bcfc15d5e78ef379763b6a28e2902363f870c61b65c8e52"
    "en-CA"
  end
  language "en-GB" do
    sha256 "6972de20a9d2feb486ac7c7bcf6ef16ddb03cc8512f4fd81f3da4829de163045"
    "en-GB"
  end
  language "en", default: true do
    sha256 "2fca79118773bc93310ae4ee1b347512c53387f8398b80c441dc0719096c06a5"
    "en-US"
  end
  language "es" do
    sha256 "46b52bf5ddbef5d7584abf815c1aa4cf35fb61365bf15f2f1ca152e18dac859b"
    "es-ES"
  end
  language "fr" do
    sha256 "2d2127ebe100f775291c88433accc398badac96501173337450b9ca04c36755b"
    "fr"
  end
  language "it" do
    sha256 "ee12d7c98734106a834a6ba35818de54ea097561b003217be4b20e303ce70476"
    "it"
  end
  language "ja" do
    sha256 "7fa92c5933f7ed89732a9f11554be298ae8536120c04c93f92b15ce002a687ae"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "81cc73d0dddf5160182302a3eeadc655a940cddc3f410e0924df4cda402355c8"
    "ko"
  end
  language "nl" do
    sha256 "e74fcf4199539ed1288352ddedeb563615821e825f2c9f4ef199d2bd6f413f06"
    "nl"
  end
  language "pt-BR" do
    sha256 "4ae5e7f6d2989a05512b856f0a537267e4a2638133179d46c1db541f8cec1165"
    "pt-BR"
  end
  language "ru" do
    sha256 "124d01bc62188b53a8050b6061405faa89be9e390e0a6ca5741e32b02b7fe85b"
    "ru"
  end
  language "uk" do
    sha256 "4ef8e9707aa2803d4bea7506f99d01c81509187423638221cb0c1db3b7f98954"
    "uk"
  end
  language "zh-TW" do
    sha256 "aa4bc69d8669ad865d48b67d4173b074fe5ea4c8ccab76352209dc137743adab"
    "zh-TW"
  end
  language "zh" do
    sha256 "35960ae0eecc200488482326658d3c4246943cd406c6bbe47d8f4d4b98818c46"
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
