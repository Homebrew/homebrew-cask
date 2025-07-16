cask "firefox@nightly" do
  version "142.0a1,2025-07-16-09-07-54"

  language "ca" do
    sha256 "40705bfd7ae79f09cdd46f69a36f7de88c5723c4cbc07c00882d1ceb4d7bb409"
    "ca"
  end
  language "cs" do
    sha256 "46379182ba1014a5ea29b61e2457434b6c6642fce98b686322b61df45914b578"
    "cs"
  end
  language "de" do
    sha256 "03c20bf57fad5777288d035987fd035d71349d2f29eb021d7a95d8cd1ac7ff1b"
    "de"
  end
  language "en-CA" do
    sha256 "7bc3ee8a45dbb124f71a9b2909cab005897fd167710eb7406cbbe4b7d4acc589"
    "en-CA"
  end
  language "en-GB" do
    sha256 "0b76c3af570dcf998bf11ab96f49aedcd7ce43fe6940521a7705a5afc5ac252c"
    "en-GB"
  end
  language "en", default: true do
    sha256 "282468459b1d33cabce969939d0fa038e6fdbeb8088d253472da8f83bb22ca2d"
    "en-US"
  end
  language "es" do
    sha256 "9cca13723556c72a8722adec528ffa2b869b4f9f3b254804ba1a49c9c805cc90"
    "es-ES"
  end
  language "fr" do
    sha256 "1529f3326be9e7f4a9d0836673baae43017a3c887580c6b626e4c5d77f662fd5"
    "fr"
  end
  language "it" do
    sha256 "98e71de5e276bdf2b331ea7d4e071c20c4d8bdd89dc1cf89ce80d40e9c796e3a"
    "it"
  end
  language "ja" do
    sha256 "f579c50146391814234c6f1bdaf93fb29d30b35a9d1dcea80831431b83f997d7"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "e05e204e242969afb7c7cd1823009c4ad8080104c8542e4bc7a589e43ae749b2"
    "ko"
  end
  language "nl" do
    sha256 "56d68983e482b92339be932a8fe624fea4545d54a646f2bf0da60e47cc173dc7"
    "nl"
  end
  language "pt-BR" do
    sha256 "3201259f989606d95c810a8a6dcd29a6137e67777b6f1e712afef628e6154f11"
    "pt-BR"
  end
  language "ru" do
    sha256 "c794eff43e156f8f88fb20ad7942098b1720667dc96239f955954cac4e906ad3"
    "ru"
  end
  language "uk" do
    sha256 "e9481ea7f1dc88dd5da3759510c4e27ea66ab9e632942eaf314667f087d3a319"
    "uk"
  end
  language "zh-TW" do
    sha256 "551ec40297625cb55487ea8785caa86e49914497403f70c0d2b0de51ccfa6a34"
    "zh-TW"
  end
  language "zh" do
    sha256 "9e17a8c888987e797a7d9d919d5307cad3887a6078373e8341e8a2eaa260a3bf"
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
