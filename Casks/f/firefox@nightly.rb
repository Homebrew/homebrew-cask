cask "firefox@nightly" do
  version "144.0a1,2025-09-04-14-58-33"

  language "ca" do
    sha256 "52ed13dc0f71e1b02139ffe422e73c64ae2d74897ebe8f5427dd6a066b36a63f"
    "ca"
  end
  language "cs" do
    sha256 "654b6816fff759d9204350b399a643e64a0d0834f46bfa49854c2ea241e1cca8"
    "cs"
  end
  language "de" do
    sha256 "34f67fe9de195888fcfff8f104c62cc9011a7245ec17f4a87d4aecc27836d9f7"
    "de"
  end
  language "en-CA" do
    sha256 "15007f6e014b4fdaddf014111178c7651cdadfe1578f56d82cef15c9a8488fe0"
    "en-CA"
  end
  language "en-GB" do
    sha256 "aecb45597a86f6b6312fd761695e72b2db1776c1ea2c596008c5f30e49b53590"
    "en-GB"
  end
  language "en", default: true do
    sha256 "a55c85f78e12ff8ab73945b676874326236e2fb6d95713d464a1fa2d997171b4"
    "en-US"
  end
  language "es" do
    sha256 "7d0547becd12a2386a25587739ef30e3f09758868a705acaca90aabcf52b59e6"
    "es-ES"
  end
  language "fr" do
    sha256 "98ec4553037b938dfd455991a58a62498116945517d56fe9acc335133148e6a2"
    "fr"
  end
  language "it" do
    sha256 "186518ff5a71b8650784bc626b25ceb8d017735cb37dff36db7b9dbf340069c8"
    "it"
  end
  language "ja" do
    sha256 "154b06f49bb1d414e946fd28b6d5a579e6841a7476822e7c133fee05b4c99b8f"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "9df01fc1ca6d4279cbfac6d8a2b5e33806f04c5b85d70fdcc30f82147c176487"
    "ko"
  end
  language "nl" do
    sha256 "7209bc3ec4f2d724967f0b554191174ecb64b3d06caed8ee26c3150194fa0e19"
    "nl"
  end
  language "pt-BR" do
    sha256 "9959e31b1a67551c0958bad070efd7378d9e22dd4ec8702dba43279ac3fa2d3f"
    "pt-BR"
  end
  language "ru" do
    sha256 "d72a8ea6856a569393c9b2e0cdff8d36337a997615437289a70f8b25cb2d304f"
    "ru"
  end
  language "uk" do
    sha256 "b535291f6adcc79b87c6225b5a20db72bdfd257e166a0b73b353bc887327ddfa"
    "uk"
  end
  language "zh-TW" do
    sha256 "796d83debb9fa35826dc3f2e6009d7ab0c39c029504b0ff14422c63d74149bba"
    "zh-TW"
  end
  language "zh" do
    sha256 "ae034376cafbdb0f11f181b73a0af8386ed537c28d408badc6bb8e9c08937547"
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
