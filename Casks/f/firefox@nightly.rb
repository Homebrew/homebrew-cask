cask "firefox@nightly" do
  version "156.0a1,2026-08-24-21-44-32"

  language "ca" do
    sha256 "2028deab3f352c5350d0f315ea969c443a855ea0ce57bbf9f0c2428812c7c7a1"
    "ca"
  end
  language "cs" do
    sha256 "a3847c1009449b9ca3c8099bbcec2675ab9cfbf30d32c672a8fdd6bd049af57e"
    "cs"
  end
  language "de" do
    sha256 "c71a9c16238dfb9ae6d90bea87a937f70bd7de32d800a14d8eb8efe70a4a4c1b"
    "de"
  end
  language "en-CA" do
    sha256 "55da450b3e9c1896ae0e791644659e017fd1422e0fc9fe90d3b82b16e52ef380"
    "en-CA"
  end
  language "en-GB" do
    sha256 "adfbec4d9b8e75d1e5b0b40865ec15876a6cea7d2a808306cac4905c58ebe175"
    "en-GB"
  end
  language "en", default: true do
    sha256 "4fe9a7695f7b2d6af91d8baf8136508214dbf7060abd74393f936fcc9c781842"
    "en-US"
  end
  language "es" do
    sha256 "b4abe496063660810dbbf25b341040611c7f085c92619c8faa1b0e56875035c1"
    "es-ES"
  end
  language "fr" do
    sha256 "eed9d6d42e6b9bf9ac55e11b3d1931a4e63a94e8c3b3bd69de8d5b03041f6e9f"
    "fr"
  end
  language "it" do
    sha256 "63650c52d539eb5808ac2d976d49222179728fe892078768515275bb294532dd"
    "it"
  end
  language "ja" do
    sha256 "181f59ff4ef327a382212ecbfb86b8f22f1242b18366c801c69e7fe5f3ed5f92"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "042858ed0a34676e5b4c0ef710bbad2b1416161712d18a236ae33b007bc97db2"
    "ko"
  end
  language "nl" do
    sha256 "65d56278f279ab0f48a3fbd2f92fff2f818d5c42f5f57d2dc66ac8c5fe0cc940"
    "nl"
  end
  language "pt-BR" do
    sha256 "e5c3969481c7634a2aaca5a3052b81276b2f9e8f9004420434a8f0ddc1d18479"
    "pt-BR"
  end
  language "ru" do
    sha256 "3b8706dcfdda61d8398eba2930311b61ffce36f45c58eb9747490be7de00915c"
    "ru"
  end
  language "uk" do
    sha256 "6bc1616bfcdc97e877df951abfbdc420addb471b1f25d48000b6107f62bdeca4"
    "uk"
  end
  language "zh-TW" do
    sha256 "2cc4d2428eea71d673d681c4de3f1da0d968d116b0456242d92c08de40d3892e"
    "zh-TW"
  end
  language "zh" do
    sha256 "4a7383c44610e408a84ae8e6001e7ca852a9f476d9e95656a0d86039a934eb42"
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
