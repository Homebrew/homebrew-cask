cask "firefox@nightly" do
  version "144.0a1,2025-08-30-21-04-08"

  language "ca" do
    sha256 "85e16bc5c90a74888cf01ace8945024b7f70543ae45b0eec8c5dff41dbf5c438"
    "ca"
  end
  language "cs" do
    sha256 "7b06622c04147483d5d02b9795dcb44c8b7da11736822d66a2487fdbb529d8ed"
    "cs"
  end
  language "de" do
    sha256 "a4fa02a7aeaddc38731d54faeb8960550992c9114ad54c6e1851c5d72b615ab2"
    "de"
  end
  language "en-CA" do
    sha256 "b0285f804a7a1e79cb6b0b5d56d4a689ba6e41f0a4059d052f643ad385b52ee6"
    "en-CA"
  end
  language "en-GB" do
    sha256 "a698325e50f9e5750e09342df36d6e345dcfe6d34a16a8c9a3bc59ba8693d096"
    "en-GB"
  end
  language "en", default: true do
    sha256 "f96da25a56fc564aa4fb71e1ad14564d8e38ae7c3992c5df8aee5241e47803b0"
    "en-US"
  end
  language "es" do
    sha256 "9d881413d8c514bf23848a3aa08759b42395441bc7cbe4bf60d2d3100b8512c0"
    "es-ES"
  end
  language "fr" do
    sha256 "b82f5e39f28c0ce71a051c7aa1dd820b23f2ff21ca99ffea5f0e6a09b61c528b"
    "fr"
  end
  language "it" do
    sha256 "22df8bda071eb77564ccc97f248ee0e976a618a86c578c8edcbed79568514c36"
    "it"
  end
  language "ja" do
    sha256 "5dff0fcaacdbcf99e60926604b8aa928aecd8c13563d6ed884c124871cae7e78"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "a5bc07b283acfb8459e97f443c1dd068d23b38e6f1c833d6e3d567729be8172b"
    "ko"
  end
  language "nl" do
    sha256 "9c391381b9c0affa45b14b5be8f5d466f7793ca178c99f686ad35d5a34897584"
    "nl"
  end
  language "pt-BR" do
    sha256 "8206e03dce848509e22b9c69b4ffec80aec9d2ced6ab640cac8b5987287cb721"
    "pt-BR"
  end
  language "ru" do
    sha256 "dfc181bb9671a69ef8beeab0c408896193c24ad3b8ce6e59fba013934b26faa4"
    "ru"
  end
  language "uk" do
    sha256 "b0ce347ce975214a9d3ac326ec6b48e5080c9b2a13e0a56c4c94864f9405f4fe"
    "uk"
  end
  language "zh-TW" do
    sha256 "aa5d0505fe9002242aa39564fe0b9ebcf004d74c72be9c901b090354e2e371a6"
    "zh-TW"
  end
  language "zh" do
    sha256 "d8d49652209692a77184749fff3af8dc6560a9be495ef7d642df39a5219eee31"
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
