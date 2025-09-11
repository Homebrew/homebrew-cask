cask "firefox@nightly" do
  version "144.0a1,2025-09-10-21-28-29"

  language "ca" do
    sha256 "219ba4b8ffec69c36cd8b55666f03f1ddfc54b085af3a5ff93218138e0c0a70e"
    "ca"
  end
  language "cs" do
    sha256 "bfab9a28a63ebf7f9d59c708ed7d700a88dfb734a920860b630fe3294b6e044e"
    "cs"
  end
  language "de" do
    sha256 "2e00679780c914d3cee24fa883468ae47345decce0e33b92088302d54797d6f4"
    "de"
  end
  language "en-CA" do
    sha256 "8e1c6127335163f59feab103a732af7c6393259986b8990e242e833e856fdd6b"
    "en-CA"
  end
  language "en-GB" do
    sha256 "8b93f085e7d5c06011e73c8ae311a5d3b2898d43c6bc1d63ced11a157ab5c61f"
    "en-GB"
  end
  language "en", default: true do
    sha256 "f1bc9a9adc8d1f8854c1e4fef40cfcc5816a815ce37e43b5d7ff73b179a427c7"
    "en-US"
  end
  language "es" do
    sha256 "4be8b56467e28c1ef5007e5ca7bce58aa4547f5fdc56752c0971b50e88508a57"
    "es-ES"
  end
  language "fr" do
    sha256 "0a78f4beb9fb0560b7233a07869ef8a593951f4a6044943a288b62b647754b41"
    "fr"
  end
  language "it" do
    sha256 "d570d6fe898da2398ba273a600e754064ad7aaeda5e1f88a833b7aa4b608b9f2"
    "it"
  end
  language "ja" do
    sha256 "961ed0a135b6e36549fa2ef3623ec300337a40e36f212301b5ebb05104d93e13"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "4240d7412b4381329d8bb071cd2f282198abaeef612a8499120bd2b7580d01cd"
    "ko"
  end
  language "nl" do
    sha256 "1e28d8ca42fedb0611e384dabc379040d59462e8c3fc5f4387fe43cd663cca24"
    "nl"
  end
  language "pt-BR" do
    sha256 "29be95c87b45d4f24577a05a083f325dc3351825a031de3543e0f58eb962094c"
    "pt-BR"
  end
  language "ru" do
    sha256 "b6316013cbee8490da6704e18dd3708291926c529b8352cf4230abe18ab89fbb"
    "ru"
  end
  language "uk" do
    sha256 "aef9bebe7499e84512f76b64509f44f1e5daa468bf406d44f3c28e4753cc3417"
    "uk"
  end
  language "zh-TW" do
    sha256 "68e96ea49452c041e0f6818f711a85f01e1924adbbb4f4d12167f0f78174b18f"
    "zh-TW"
  end
  language "zh" do
    sha256 "46c38f4cb21ce69c5b8542b811e07a0414a4c7b080afdca19dde8005228f82ed"
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
