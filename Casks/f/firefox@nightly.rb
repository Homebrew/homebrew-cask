cask "firefox@nightly" do
  version "142.0a1,2025-07-07-09-35-46"

  language "ca" do
    sha256 "d33767c50bc872bd7e12715424d704a974b5127c578a0ec15a59c292c4219dbe"
    "ca"
  end
  language "cs" do
    sha256 "ab8783a7b891650661979175b6058ef04b27a35a2ffc6c55041b0788f42b6407"
    "cs"
  end
  language "de" do
    sha256 "df9b6bd82721d05d3529413166c2f278d5ffd88ca4108b1f97d86cb14d32194c"
    "de"
  end
  language "en-CA" do
    sha256 "8551b70a4cc6ba45af6b071ef8f850a818247281bafa4313453af2c06914eb35"
    "en-CA"
  end
  language "en-GB" do
    sha256 "3b744f46dc9e85634eb2fa3c02638be77d0582f11e256e8aea2abaced37c947a"
    "en-GB"
  end
  language "en", default: true do
    sha256 "6d0679e4d5aded1c817f90bf46fefa43f6fe348f2a5a346b03a60e551ee1e2eb"
    "en-US"
  end
  language "es" do
    sha256 "71ca323408bb6ab33930363b73099181ffe50554984aae251471d613f24931bd"
    "es-ES"
  end
  language "fr" do
    sha256 "9388d6dc7eed9c9b36da2c5b403ac801fa749bc895760576821adf5e8a88c3d3"
    "fr"
  end
  language "it" do
    sha256 "25d2bef91a462fc157ac2d6305765176a5520b13e05d2ad9b7739a27519120cd"
    "it"
  end
  language "ja" do
    sha256 "a71da7d4fd99cf03aca328184418b06f66a347bdecd5fb15fedf11d5ab97570c"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "d1195ec8a859bf287562c38f7b2ff617a8d9afd4549ab155421c393ed1c15811"
    "ko"
  end
  language "nl" do
    sha256 "86f3a1a0da6be184359cbe29bee6647c161a25032c882d03b57ebe525a670b63"
    "nl"
  end
  language "pt-BR" do
    sha256 "a0ec749b17bcb7e4cc2e40e275de8125578220a8c2728ebad8e37f83e6377180"
    "pt-BR"
  end
  language "ru" do
    sha256 "18e1152de5e125d59e288c32fc7bf93fbc1b8874848c296b8c5630570ab695c7"
    "ru"
  end
  language "uk" do
    sha256 "0f6c3f18fbc811c5d813bc5c3529b825f0f38f94c6e12484283591f5d058a67b"
    "uk"
  end
  language "zh-TW" do
    sha256 "f8e01410e56790d5e8dc2e127e6cd2ef9d99546ff47d8cd99891f8afaa1e27f9"
    "zh-TW"
  end
  language "zh" do
    sha256 "93f8d7ab82e3adac1e5272c52dceca4fb9e957a7f29a6d61e568aff46003473a"
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
