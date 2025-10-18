cask "firefox@nightly" do
  version "146.0a1,2025-10-17-21-05-34"

  language "ca" do
    sha256 "fdbba8241c1a20c6b51f8a951e473ee70e180ba2ec72ea2e69046238288c7492"
    "ca"
  end
  language "cs" do
    sha256 "6bfab7260903a35a88033a2bf65717cfb1a0d6b9c4889fb42aefe0b995b5863a"
    "cs"
  end
  language "de" do
    sha256 "c2d24817bd323e36910b5f1835f6b5932f878983a6d7098f7f47261602f7d7dd"
    "de"
  end
  language "en-CA" do
    sha256 "48c30f9a015dffffc6c178f3650240342eda21bb3b8fd962a3219950153bbd59"
    "en-CA"
  end
  language "en-GB" do
    sha256 "96b0de859b86d306344abc682cae9e904549a68ad45b31582f81aee245c1df33"
    "en-GB"
  end
  language "en", default: true do
    sha256 "f39f427ad95dea7ea1d836fa0e6794a2dfcb71e895ceaa9b7a7b74f2dd20550f"
    "en-US"
  end
  language "es" do
    sha256 "cb9e45e1d89c6bc2cb24886e27474bf30f9f14818dbfd103ce3667a314f79d5a"
    "es-ES"
  end
  language "fr" do
    sha256 "6f1aca6596f9ee645d2e839fa51c039ab29bc850f770b367bac50f3e0152b53e"
    "fr"
  end
  language "it" do
    sha256 "24766ad0b87585c6886f7406ec2dcd29efd75bc494c388a9d4bd41c3e67791eb"
    "it"
  end
  language "ja" do
    sha256 "4dc8a73e8f1cd2bb536ccd67cba53caedcd00476f880b4ef2da4cd26b7f182b4"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "2f4b6a8ea770ebe95ad417e73582ea319ccbaffe4404b6ee3966c437cee92374"
    "ko"
  end
  language "nl" do
    sha256 "5083d22f0b16a146217d037a82505d077e42a7d70bde9d70c8c80036850a1dac"
    "nl"
  end
  language "pt-BR" do
    sha256 "589d2cda4deba3f329999d3de3d4cba89131c75d0a30dbc4152743cc6bed3918"
    "pt-BR"
  end
  language "ru" do
    sha256 "d8efaa4807648c5ee9b6dfb564bb1ae281c87d2400c97c6588741a9410aab733"
    "ru"
  end
  language "uk" do
    sha256 "366cb4c3a898e5c3164936a55ee138a4fc2e631097f240399b6efd98c10e67e7"
    "uk"
  end
  language "zh-TW" do
    sha256 "c8ffdcb07cef2932a2ef41d453448601a9f661d97df6d181aa0fb940ec3dc723"
    "zh-TW"
  end
  language "zh" do
    sha256 "abb131272fda982dcd90ad9efdf6e8ba95d93571d2e4ad8a53713073e8564956"
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
