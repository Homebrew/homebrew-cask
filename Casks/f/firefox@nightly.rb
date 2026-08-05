cask "firefox@nightly" do
  version "155.0a1,2026-08-05-09-21-15"

  language "ca" do
    sha256 "4d1376652b80746f6cd775d99aab78c9c844e9d033c5eea27ad06bfc96c8cb4e"
    "ca"
  end
  language "cs" do
    sha256 "41a87214579265e3f01695006a5bc08051e5bc3834922b2fb0b0d5664f911830"
    "cs"
  end
  language "de" do
    sha256 "292714e2e765cbf923c7cda99f515b60f0c3f53744b551678fd8cad160f2101d"
    "de"
  end
  language "en-CA" do
    sha256 "057a2c111673fabb566a887726b2bf6e1ba2245717bafab48286e71cc21d7b24"
    "en-CA"
  end
  language "en-GB" do
    sha256 "0b146d56e6104e338e262bf9c4565fbdf791b2dc49cdff7ae566af99e0b69030"
    "en-GB"
  end
  language "en", default: true do
    sha256 "7c5c2d78618692314a7ead5453c7e8bd6ebfde982eb82e4c4a8ce07f8f75c6b9"
    "en-US"
  end
  language "es" do
    sha256 "83da8d9ed023ee3948ef827a36bc604403801f0d5d10fe2b62fec92c83b146d6"
    "es-ES"
  end
  language "fr" do
    sha256 "53650ec16b641419da6beb9848e5d52a93150b7bfa5361ba746f81cb278b896a"
    "fr"
  end
  language "it" do
    sha256 "d0c0722287df3ab69960c3d0806338b343d2717e1ff99943ea0b30f91353501b"
    "it"
  end
  language "ja" do
    sha256 "867e6795bdcb7c1994cbf5c05a7abf2ee62409e008adf891fa3f0f4bd857c98d"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "e3ec87fe6fe3eb1ab36e976b4477ea10041949ed768400829a2a47a570aad0f6"
    "ko"
  end
  language "nl" do
    sha256 "71a50a80518938cf52dd17fd3842dc238c74eecad59a910c3c723384c0b27edd"
    "nl"
  end
  language "pt-BR" do
    sha256 "865947b2911f8bfd79916d7edc9adf07f1b1c40c46f995d2bb7b3a6fbec51dcd"
    "pt-BR"
  end
  language "ru" do
    sha256 "6e14aee5d07006ab0e580fa7a22cfc7e921cc9103237a73b228049e66d96e94b"
    "ru"
  end
  language "uk" do
    sha256 "3abc7790ffab9fb1d384983a496ac9ef44a90e6e39ff25ca715e9a65fa19f861"
    "uk"
  end
  language "zh-TW" do
    sha256 "9c03b62b278844fb0abd28d3784709f3acb507808a1832b93e644c1ccc3898aa"
    "zh-TW"
  end
  language "zh" do
    sha256 "34018300f751b79e45582156d249a2f57b5326e4ac5e3db62d71a401f03435f6"
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
