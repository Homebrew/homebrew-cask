cask "firefox@nightly" do
  version "143.0a1,2025-08-14-09-51-02"

  language "ca" do
    sha256 "532335e0c2e4035b063af960c7fb50a427bacc7cf5cb71de28c6886bf82379b8"
    "ca"
  end
  language "cs" do
    sha256 "a255090cbbd4a86a029c77203b4290bf20353f6c26c15a723cba0f29df7293f8"
    "cs"
  end
  language "de" do
    sha256 "74e7fcbe8e4f8f9b61175c81ca60327c57eea42f663641a2080ba7d26d034db3"
    "de"
  end
  language "en-CA" do
    sha256 "f21ab788d6937da53ea5e1440f878a4486a2b73493296d53df46166dd0e502b0"
    "en-CA"
  end
  language "en-GB" do
    sha256 "2a67e4e605b797164c34acaa91acab471a01ee05198e557b4a66af36c0b369fb"
    "en-GB"
  end
  language "en", default: true do
    sha256 "c9395ad1d32cffc9a540a03503fff4225cd6a287cd572638a679b41769240131"
    "en-US"
  end
  language "es" do
    sha256 "de3253927231692518b4f8281a509f5c9ab8de1504478b77b1d27e2f02e1b00d"
    "es-ES"
  end
  language "fr" do
    sha256 "a10edf0e1799ab43fd58807321ed52a2702bafe27071da7b9253ca32d49e7e9c"
    "fr"
  end
  language "it" do
    sha256 "bedb912c1a6f27c125638d16e230735c81ce68e0a6a5b177d7b1d750f68c9a17"
    "it"
  end
  language "ja" do
    sha256 "c67fe8474f052f385dbbc83212f0ac936c2afffd05e4ea03659d2e8cfc29cdca"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "1966ec9262e4376b5bf855eeb147592e4c19d7106cdd8b58a4c8b81121654e08"
    "ko"
  end
  language "nl" do
    sha256 "f554501122c6c83e34a0f6db47e96b0241a1a5fae728912ad98fa5153b139161"
    "nl"
  end
  language "pt-BR" do
    sha256 "f2d59d118f831f07b99308b2454f5abe51afaaa7dd99164e61d4481df15ac846"
    "pt-BR"
  end
  language "ru" do
    sha256 "5fde809272d0b7ffdeeaa3af3e4bad6865065c29f2c7f26a4104a459b5252ad9"
    "ru"
  end
  language "uk" do
    sha256 "41d9e0e7a064e2f38928f9613cd91e2567e9aee388ec33ad57fb31626e737cbe"
    "uk"
  end
  language "zh-TW" do
    sha256 "4f3c9f67ca6529c0d766a3b56d1d6cbd9b9f93e6e6009286867c27bd5fb3157f"
    "zh-TW"
  end
  language "zh" do
    sha256 "7fa7d572577068ad88214a44c67b1f0d2eafc8282168a9d26db8b4b66364eb48"
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
