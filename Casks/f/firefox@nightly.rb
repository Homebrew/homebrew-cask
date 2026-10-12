cask "firefox@nightly" do
  version "160.0a1,2026-10-12-09-19-45"

  language "ca" do
    sha256 "ac2c642f6e52f82dabdf4592a960af2c1ef168ffebba1a3d66e766c7355ea94e"
    "ca"
  end
  language "cs" do
    sha256 "2b35f3b2ae9abc6cf05cf6a0c355e944644fc8dd87e7aee40d2df86f36eedacd"
    "cs"
  end
  language "de" do
    sha256 "0201d1f3ad9195ab13db1bbcf422d419653149a28cdb053ff8bb29492dd1328a"
    "de"
  end
  language "en-CA" do
    sha256 "99e1ea8711c56704a924f446d845e372bdcd51f6be5d63d109f247dac90d2bde"
    "en-CA"
  end
  language "en-GB" do
    sha256 "39c6d128c6cd513867a289e764033903a9525b713962f5b7a7044a9569e54f5d"
    "en-GB"
  end
  language "en", default: true do
    sha256 "a2661af9de3334c628077571eb677fd8ba85bb755724779c505d5c8271d259fd"
    "en-US"
  end
  language "es" do
    sha256 "66e851f6119f14f7b63a1b7549bec08ec2020c33cf1f16e8c0f70ff596eaa116"
    "es-ES"
  end
  language "fr" do
    sha256 "ea208e5d53cc00bb6f7e528eaf63ae68fb02584122807967b9ff21440c8f4c97"
    "fr"
  end
  language "it" do
    sha256 "ee443182fe2724dc8d8f4d3541f84631949373bfe8cc334f13452c81769dcafc"
    "it"
  end
  language "ja" do
    sha256 "bfaf4326d5b599eeeb539eec1fbac6782deb3bec5aa3e62864d997db27e4d00a"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "5002c739e09bc197769b835b921e51979dbbd3203b1c26f84e17d4a23512c9f8"
    "ko"
  end
  language "nl" do
    sha256 "95f8355a38d0c98e0e45b10b7e6360dc2b3bd89b5996f93a2f688d42b1f0bb4e"
    "nl"
  end
  language "pt-BR" do
    sha256 "9f899920b52940138d46d953e7c47c88d35163d64be383d894dbbbf0067ad5e3"
    "pt-BR"
  end
  language "ru" do
    sha256 "05b2bd122c8f32e2b56f1b9cd37f12ca812ddf3df821578ed4266a5588c71318"
    "ru"
  end
  language "uk" do
    sha256 "b458dbcf472212a0731727bfb5f73fcdbf69bd7072ffe536a2d89c6f93bba367"
    "uk"
  end
  language "zh-TW" do
    sha256 "505e5d391829bd0be06df75f2c865893d598db2800b709218c4148d7d12216b1"
    "zh-TW"
  end
  language "zh" do
    sha256 "e754fa66fcc6762aeb7646a2df8d8ac9a08fdb4d2e4df56807f6a20b8ab824bf"
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
