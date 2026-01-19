cask "firefox@nightly" do
  version "149.0a1,2026-01-19-09-33-05"

  language "ca" do
    sha256 "c4e8f034824b1000974b9e2bd1fcff1ea9498b0b0cd49c5a40cee591f80d3441"
    "ca"
  end
  language "cs" do
    sha256 "8fe52c1247cd4fe4d5eaa64b6c9825cdbfcf0aebb4a4802c4ac80334c7a47ba4"
    "cs"
  end
  language "de" do
    sha256 "b4f919dd8775a61fe94d08b0504197d25fa02c8c0c665da3b69472adbc2d07a8"
    "de"
  end
  language "en-CA" do
    sha256 "2c726f154ab0c2eb871c62b96247afd1daeda620575215a0d645fc3f845f5087"
    "en-CA"
  end
  language "en-GB" do
    sha256 "7f74eb18dc257eeb0f9883d31720ba83191a7ff2393b9707867ca1143489e1da"
    "en-GB"
  end
  language "en", default: true do
    sha256 "1e7b8b6a51817e5f5b1e68b59ce2fb90b63019274d08ee60de1d62692daaabb6"
    "en-US"
  end
  language "es" do
    sha256 "4f01e26fdcc6e403e74e53bea7bef708fb3828ba8807778acd92f83df3f9d130"
    "es-ES"
  end
  language "fr" do
    sha256 "fb5662e70c984855c97222cb65e7c4214fa762b0f18cc946530c7dafed87dc99"
    "fr"
  end
  language "it" do
    sha256 "96427feab8a0db4c39270f122c8cbb90613f86f6f7c2443b5dd026be4314dc7a"
    "it"
  end
  language "ja" do
    sha256 "1773c9fc4d2756c57ac83ca0042eb8ab41f5cf22a8a682f03cdd9f645904c954"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "75058f6b472ae0d307a13b2054a327c2a709e3957052741bff033c2b9eee9881"
    "ko"
  end
  language "nl" do
    sha256 "5e2cb94b49756f214d8f45d7fff7184cdcaab43718c72e0928ed7f841f063e44"
    "nl"
  end
  language "pt-BR" do
    sha256 "8eaabc34db7ea6b8c496f1b203be89dc675c5579e99567b36b2eb3d6c5e7a591"
    "pt-BR"
  end
  language "ru" do
    sha256 "10a630fa1604c3849c842e279087fe33a396825717272c87f36eff2a71f11f29"
    "ru"
  end
  language "uk" do
    sha256 "57274a26eb06477561c2090e29bae6f37d0714ca0089c75589d11c31278ab86e"
    "uk"
  end
  language "zh-TW" do
    sha256 "26c7e3468ac199d439b46663445957a43f6808b6cf7581aa24b43d32e7ac3d20"
    "zh-TW"
  end
  language "zh" do
    sha256 "7e12bd520b62f5dcf3036334661faa18c8e932bc19e4fb3d7ba2154e7c1a4fc1"
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
