cask "firefox@nightly" do
  version "155.0a1,2026-08-06-21-17-40"

  language "ca" do
    sha256 "4b191eaaf2843a2330eda6c3cabdb2618c2a7f17f67ae9591161b70158d4fea1"
    "ca"
  end
  language "cs" do
    sha256 "c854e820210facf18a169b7146b0af4eb3bcbb4d9a743a225c75d9f1835b323f"
    "cs"
  end
  language "de" do
    sha256 "96c56f83b4143d2535bdd09e122fe846a451d314f53cb3de9028cb86a7fbde66"
    "de"
  end
  language "en-CA" do
    sha256 "7391be0563f4503817491f2183c591f520d159674b37480c00cbbb685b851f00"
    "en-CA"
  end
  language "en-GB" do
    sha256 "b8a2b13ca5d009d2cb1df1ce0c07c387559e78cf73e51eb04d8e6133048811c8"
    "en-GB"
  end
  language "en", default: true do
    sha256 "44e2a5fbd3980c8396882fad6b8d9cb20e52cbe1ed405bc258a8e65806cadf34"
    "en-US"
  end
  language "es" do
    sha256 "205d17d504e48cd8b243ed023d0e6bbad67c182ef30513c87b01e085ce77d74c"
    "es-ES"
  end
  language "fr" do
    sha256 "2325c01d79f1a7766d27dead5060c28f726d53fd6a97b366b97f5c11ba2990f2"
    "fr"
  end
  language "it" do
    sha256 "6b97d1c2d77d0d79d1bef79ec0c47406baf004f52050e7edf9321613610ffbba"
    "it"
  end
  language "ja" do
    sha256 "f8c47b21b8dacd9bd8fa2b8ea3f7acdf0b973a19635949d26210a350620d94e3"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "554f392b2e31ff9645ffa4dc5ec19d6597356f5b097cdc752cbc074b223f382d"
    "ko"
  end
  language "nl" do
    sha256 "a399ef71db18e4a02d89268294c17f1280a2b5db01d1914244eb2ef0a0ae42e2"
    "nl"
  end
  language "pt-BR" do
    sha256 "e21d362968d3ad2e525ed8e4d70e7849c219fb6b9ac1f1fa9d04310d9ced2c79"
    "pt-BR"
  end
  language "ru" do
    sha256 "5dfb4c4c942060f45c8101d9a99c1b33c33dd22f81c6efa1ddc631a14e7044c2"
    "ru"
  end
  language "uk" do
    sha256 "0f72a914c69b3670357f981d34c5d06c2b5bc8156b03d8244a0d8255d0b7a3ce"
    "uk"
  end
  language "zh-TW" do
    sha256 "6d99a58c3e4e3758aacd6e04fb8a1f6288d782873a0725205904080268c97b18"
    "zh-TW"
  end
  language "zh" do
    sha256 "557eac803597e0d2e46c5a3c9646cd5c0620585be38369031800def5b9089484"
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
