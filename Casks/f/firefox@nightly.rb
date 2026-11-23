cask "firefox@nightly" do
  version "163.0a1,2026-11-22-21-41-08"

  language "ca" do
    sha256 "f82b066718bd21d45991dac7611b16f8da98feb41f7dda054048f3d0a6cb6be8"
    "ca"
  end
  language "cs" do
    sha256 "01dfd749071f76acbe5b5992259a97ea78f52922394090124d744fae948a0f92"
    "cs"
  end
  language "de" do
    sha256 "2cb3845bcb84354c49220f56fa5ebae2ec913387e64352d865e9ba48655ba6b4"
    "de"
  end
  language "en-CA" do
    sha256 "636782c28dde11f19e3754f2e0200d1cd3f782e8c948b3e14a0e6c3aecf33451"
    "en-CA"
  end
  language "en-GB" do
    sha256 "54ddff0dd3960acf23d1459b2c33465930ba54b19dfda1c611dd60f93f1a4208"
    "en-GB"
  end
  language "en", default: true do
    sha256 "030759d55b27dac7096a2739cfb3481644e6a4be8ca12452a3e53e25e9a936aa"
    "en-US"
  end
  language "es" do
    sha256 "2724394de4c80712ba8cc3c02575b173c5c6a9ef5fe4eb35ea0cdd9ce7949ac4"
    "es-ES"
  end
  language "fr" do
    sha256 "4db9d3c2234b7a5e7d617ec18221f9b9cbfb46ab166a80a6294a601455c0bae3"
    "fr"
  end
  language "it" do
    sha256 "c9bcbaba3a15514c44ac0fce52b895df8b273bc61a1338dd29146f008f45ceab"
    "it"
  end
  language "ja" do
    sha256 "32674d5e5ddcb0d3471ffeb8f1ad307cc68b7c0f6ef03891d5b5877ea6d1fc0c"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "83289b4f253e49b51ebe89319d8cdcf750dc5367fa5c91d806851703cc968a2f"
    "ko"
  end
  language "nl" do
    sha256 "e0b947cf6329beaee2414c06f72295b96b36b64e3d35476219cdc76a1fcacfbc"
    "nl"
  end
  language "pt-BR" do
    sha256 "a8f42be998ff7775dcaad7f95d4a725a8cd4a45889074d6a65ffe8768ad82cc3"
    "pt-BR"
  end
  language "ru" do
    sha256 "e9256d4dc32fe7cb45df0b272a3aa837030fa5da1291ef8f87eb0759b22a7b19"
    "ru"
  end
  language "uk" do
    sha256 "e3495b2baf33dda75b13e23f1185a1d367592cfbd12d34fc29baa615976f7f99"
    "uk"
  end
  language "zh-TW" do
    sha256 "f1eaa679b007153262b17389b416d7089a8178623c851952011b0af8e73754c8"
    "zh-TW"
  end
  language "zh" do
    sha256 "71f37fffb114644c218da7798d5dbec8ad4cfb892aed89b22a84027bd54e8e9b"
    "zh-CN"
  end

  year = version.csv.second.split("-").first
  month = version.csv.second.split("-").second
  locale_suffix = "-l10n" if language != "en-US"
  url "https://ftp.mozilla.org/pub/firefox/nightly/#{year}/#{month}/#{version.csv.second}-mozilla-central#{locale_suffix}/firefox-#{version.csv.first}.#{language}.mac.dmg"
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
