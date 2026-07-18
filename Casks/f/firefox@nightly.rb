cask "firefox@nightly" do
  version "154.0a1,2026-07-17-16-12-34"

  language "ca" do
    sha256 "5661ed9aee19919491e36da24c3676b14fe315155771fd3dcd1c6bc27d8f3f6f"
    "ca"
  end
  language "cs" do
    sha256 "fe71c0d98f2f50754f3e25b345c8f69c55d3d25901486d238b4347e22b269564"
    "cs"
  end
  language "de" do
    sha256 "b560f8245d6fca89748422e81a9eb9d0bf76232d034a6c20e559cc50ad84ace5"
    "de"
  end
  language "en-CA" do
    sha256 "c74bfe7a568f569d99e41dfe24876f62091e992ab8600e513c1805004a9343ac"
    "en-CA"
  end
  language "en-GB" do
    sha256 "dc3b7920187830df4aff27505dafde34cf8ae46609841ac9a7e110bebe9dc378"
    "en-GB"
  end
  language "en", default: true do
    sha256 "2d9fee7a3abfe7397f03baabf97c6fdc0e60cd9d65d2fc214f1ad287be7b6e4c"
    "en-US"
  end
  language "es" do
    sha256 "2021a9be42119f08b74382c09b833b841017f942d7171206b4b277008152b864"
    "es-ES"
  end
  language "fr" do
    sha256 "b641fa3929bc20b62ef0f5acb09d57156727f9b4fdb3f585b20517b57469f1eb"
    "fr"
  end
  language "it" do
    sha256 "725cf04e5ea4c42ae5ea77686ce275249dd7668ef6a79ffc874b49813c2956fb"
    "it"
  end
  language "ja" do
    sha256 "d834fb56d8281070cb605ab68b2fb42c710299e68a97f72350547d693ad62540"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "35e00fbba7aff09804c5a9f2c5b300f76bf64cae03b084eef208511d5b9b23f1"
    "ko"
  end
  language "nl" do
    sha256 "3544d7ca5b91603a87b765027781670e0eef93cc5c409bf90eada9c075de8915"
    "nl"
  end
  language "pt-BR" do
    sha256 "49b5e87d63d74eead854b062de49b18a7aff19e1e0627d82c8e0a1bceec4c088"
    "pt-BR"
  end
  language "ru" do
    sha256 "8a0ee995802a38307a83615cc2286f7562aa796608492fccbef12aef2c9986eb"
    "ru"
  end
  language "uk" do
    sha256 "78da6756e9d6cffb777a60471e68a9d8cf8347c2149737e694563935929aec3a"
    "uk"
  end
  language "zh-TW" do
    sha256 "7272120ddba319a1c2e92ffd325db8a0deb8e9c88d1f83216f24413ac5aa026d"
    "zh-TW"
  end
  language "zh" do
    sha256 "8e67f0ba7e4287fe5860b2f7d0aa61d109e7d84e13483681420530232b023b5e"
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
