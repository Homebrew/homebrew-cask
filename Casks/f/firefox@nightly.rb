cask "firefox@nightly" do
  version "149.0a1,2026-02-13-21-21-22"

  language "ca" do
    sha256 "0f98ea5749bc901de4ad72b67891581428afc2599a0c733b18d83a36920628bd"
    "ca"
  end
  language "cs" do
    sha256 "dfa3685b0dfe5a7917b327b6a8b444b43c79e463399e1bba5193650dcfe7be5c"
    "cs"
  end
  language "de" do
    sha256 "0c5fe3151a2174b34827f3952ddb5ad474bb3e8b5e33678db6afb676310bfdf4"
    "de"
  end
  language "en-CA" do
    sha256 "be5124f70f12a18554e09c13c2d13bdf97fa79a18f3d6fe8c21a52696b66537e"
    "en-CA"
  end
  language "en-GB" do
    sha256 "78c0ce956fd1ba56613262e6a474d4e191591a7893f869a2df66e051751d9a43"
    "en-GB"
  end
  language "en", default: true do
    sha256 "b069fc9a39ef3b2a9971d4cbf5b864b8ee0a1fcb60fcaf4e67be59882344b1d0"
    "en-US"
  end
  language "es" do
    sha256 "afb301d8006f4878cb67948d2789918d23e544a71171453cf947ab03d1bc9733"
    "es-ES"
  end
  language "fr" do
    sha256 "d917444560357f26d575412faa64ebe28a1406112c6a32417975fc0880d31114"
    "fr"
  end
  language "it" do
    sha256 "5629d655a9de282d47a3bf35b29c6c11d0decbc8c47056911157aab1147da7b4"
    "it"
  end
  language "ja" do
    sha256 "96a5edad2e614ba0bec3ff9bd4c8d913424d0869a09ff3a77eb8f5e3239e39d7"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "8a0fd396f4fab178b017cd803541905ed9860bba0a670f14735f01e28c39339b"
    "ko"
  end
  language "nl" do
    sha256 "ab92b1f629d5b1832e0df77dfbc6e5228a1457b53299997286b35ec3405c208e"
    "nl"
  end
  language "pt-BR" do
    sha256 "bec9ae373b02d19ed230b3d6c847d5ec979caba44124671574be743a0f6b162a"
    "pt-BR"
  end
  language "ru" do
    sha256 "2f70ad0bc45c8df14f652b061b4e7326bedf30bb17d69ccfd954a33c153a8622"
    "ru"
  end
  language "uk" do
    sha256 "841d857b9b7f93ef22393f123c22f5718c251259f3dd95a7e1eacd1e044d7d01"
    "uk"
  end
  language "zh-TW" do
    sha256 "68272e8beb8199b297bc176fc63e66293f9eab194cdaf3cd892b3588fccc1f4f"
    "zh-TW"
  end
  language "zh" do
    sha256 "c51fd2ecf8df50145d57650e30b1bd974457d3a3b9c19369e674973348662ced"
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
