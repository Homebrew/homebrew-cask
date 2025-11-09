cask "firefox@nightly" do
  version "146.0a1,2025-11-09-09-55-40"

  language "ca" do
    sha256 "97502098f87b79f2842e3c3729867a0576e6bdd53b107886a892e81618ba3df0"
    "ca"
  end
  language "cs" do
    sha256 "81c4e231279f346c530532a0bb85421a52d0595e9f2ab851af836f1a5f872a1a"
    "cs"
  end
  language "de" do
    sha256 "19dfeb02ce76250d9ca06579acc462081dff5ee8f2329897c8cbc5c0f49d151a"
    "de"
  end
  language "en-CA" do
    sha256 "6a4d224649654d19fdcd29ca7f621185ad09faae76d13598b7a7ffac1c524bfb"
    "en-CA"
  end
  language "en-GB" do
    sha256 "2d4b5e42bb45b830298e8ce902e12268a7a9559d8fcacb45053701f17ac7471a"
    "en-GB"
  end
  language "en", default: true do
    sha256 "4f6a910b4e04d0ed2d4f177f4387155049a599229e83f20b6bed9794ee3626c6"
    "en-US"
  end
  language "es" do
    sha256 "f2f8de0b0eefc2bd5ccf36d5b3aaef77c423a3d6fc6c584e3530831ef8eb8ef2"
    "es-ES"
  end
  language "fr" do
    sha256 "0965300fbf8ed8d07834e28f87f5df22c7c2372fd3613af0ce4a09dfd270d80c"
    "fr"
  end
  language "it" do
    sha256 "e0df4d705cd69d5bccb9d64863bb16f6845d90807fc073c3fce45ca3d3579e4d"
    "it"
  end
  language "ja" do
    sha256 "52f2ab8dc9c5b9032ae0078cad4258571eeae4afa3c2cf571b89b73d3d5543a1"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "efda6cd570980e16c48d01230af3aa9654a876b6d940ab9e6d47fc801c091fcb"
    "ko"
  end
  language "nl" do
    sha256 "6237f13c7d5aedba7aa184b6618f75dae96f7db9d5f5c9399743c2dd345ccf10"
    "nl"
  end
  language "pt-BR" do
    sha256 "6b8c57210a287abffe089b583fae5596c23c35bd4d0949867231ab19ae873e4f"
    "pt-BR"
  end
  language "ru" do
    sha256 "11a3fe7e47e8629ba9622a3ef8361b1ef8dd941edfad92ce78de7f1940017844"
    "ru"
  end
  language "uk" do
    sha256 "00f5f22f1db2e40a6055575315cee4df7cf4faef2faf71bdba90a0431e8c05b5"
    "uk"
  end
  language "zh-TW" do
    sha256 "7465017094276f44c6b26754da9f34e110987cb39cf98e2f2d177acdb43c0005"
    "zh-TW"
  end
  language "zh" do
    sha256 "732dc241cd28db2250cf395e8bffd56ec79dc1329c8b906f09f8d780ae787fdd"
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
