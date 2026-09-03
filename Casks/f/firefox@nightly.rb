cask "firefox@nightly" do
  version "157.0a1,2026-09-02-21-20-28"

  language "ca" do
    sha256 "73d2ef20486b1adf74c957603b1c6f644db7c4ae097e261de9984926a2e9554c"
    "ca"
  end
  language "cs" do
    sha256 "69e25a7155389718477c5b8fa7b9fd966d4149b641c6af37c049ab9a5c5e9b0e"
    "cs"
  end
  language "de" do
    sha256 "523966580baa894a7b2dab59295323931216e5d5bc9f9d8e69c6a903fc72b8e0"
    "de"
  end
  language "en-CA" do
    sha256 "f51a792c2c911252a9cacd094334b9d812da0ba930b0792d748282ebfd9cfff6"
    "en-CA"
  end
  language "en-GB" do
    sha256 "8569308ec4254b55ef4a46504ec04e4052072042cce6971117e40cf101bf38f3"
    "en-GB"
  end
  language "en", default: true do
    sha256 "8e4442b2a09db97421fd10efbdf045bbc7f640b84d7664dbfa22e14950fc622c"
    "en-US"
  end
  language "es" do
    sha256 "8f00f4f021f60372524a8b3c18ee74c1ebedb26043b6dbb707ba56537394a8cd"
    "es-ES"
  end
  language "fr" do
    sha256 "e942ab70f9b8ee0a3a875cd3c2821948aa2990060dfd87e30c8aaef2d8c88da5"
    "fr"
  end
  language "it" do
    sha256 "d5e9b19f59ed016fbed0efb9c0ab0ef3bd2066d2b3c8433d79684db482a942c0"
    "it"
  end
  language "ja" do
    sha256 "b79873650dae93e8d9fc87764888963a8d9ac75dc5495d6cf1161c90061fa601"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "9c9388d35728880fe78a79b4e6db9a578e1bc3ef5ce89be5326758c364e238cd"
    "ko"
  end
  language "nl" do
    sha256 "b46331164fb67b96a20b5d1aa287a4287b491ce4cffa6174bc81fbbae62db849"
    "nl"
  end
  language "pt-BR" do
    sha256 "dda365d9401884564e391e19b36cf6417ccc211cb97cbc4d71d8eaeb8efc713f"
    "pt-BR"
  end
  language "ru" do
    sha256 "b2810fae44415ee6c12bbc340bcf962a90621f76472072c5039046836d05b9b9"
    "ru"
  end
  language "uk" do
    sha256 "7cba2dd8ff9bd61bf68353f09ed3311b7818d68a05a5f4dcda7d3a73e81bd638"
    "uk"
  end
  language "zh-TW" do
    sha256 "36c0821e8848e0e4f4ea900bd020b08d19c3f490f5bbdfd99654b04958d913e0"
    "zh-TW"
  end
  language "zh" do
    sha256 "3fb314fcb0e726287349f5116757225be42b1968de649aeb45353d0b3e650bd2"
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
