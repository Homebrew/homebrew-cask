cask "firefox@nightly" do
  version "148.0a1,2025-12-08-22-02-32"

  language "ca" do
    sha256 "b427d34f8075dca170db241a32c50884130883bd2b14236a60f54dd314aa3b6b"
    "ca"
  end
  language "cs" do
    sha256 "96ba4cd40d16e5158e8521c28e47c18e91c3def54fa13b179084fe472303a123"
    "cs"
  end
  language "de" do
    sha256 "7355a07969667ebb2cf734ca3e42ec97fce23630a1961137bdc6ae67de1e266b"
    "de"
  end
  language "en-CA" do
    sha256 "718eeb219dd8e6bfb06c56c61e36e19598e03521da773b2e4dfa9e9212967ec5"
    "en-CA"
  end
  language "en-GB" do
    sha256 "c150ea0156a2c6a5cecbd0a74db6ffc35dfa602f0020ac0e093df010a716fd91"
    "en-GB"
  end
  language "en", default: true do
    sha256 "2bbae3894f8042cb76c04685608d9bfad22c5e06b746440703e972aac239ea48"
    "en-US"
  end
  language "es" do
    sha256 "55945c1b04ed3c2f0d69b9a656a6e960f58691742ab65c1e2c84c73c3142a3bb"
    "es-ES"
  end
  language "fr" do
    sha256 "5965de2e06a48a14d3cac447ad0fee33693d8dfbf4c0b0428dc20b72a186d60b"
    "fr"
  end
  language "it" do
    sha256 "4d76b993fa1695b69992ab645b369b9228337ac1e6bdcaa522e1dcedbc7007e2"
    "it"
  end
  language "ja" do
    sha256 "69ee3fc986e838605e4d767aa23f5e7cded9bb27d59f867a593462a2371ee15b"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "39d68d56bfd1c3d86ecb559338f8f24262cb1e92de07b37d6f1134e0a0b20e1e"
    "ko"
  end
  language "nl" do
    sha256 "d9b57dc35784d1915b3f6809c08695ebbd9160f1eda891e7338284681b858b49"
    "nl"
  end
  language "pt-BR" do
    sha256 "a458450bd23834b2f1bc9239a38d44b8e565ccb8df459acb67d891752029140f"
    "pt-BR"
  end
  language "ru" do
    sha256 "0a89243567858ef657d873eca8844434359c684ab84175eb98bf029f9510e628"
    "ru"
  end
  language "uk" do
    sha256 "e3f1d2938e97d95a0db1d6f2888ad5c92f1b4030a463cb5463e58347533464fc"
    "uk"
  end
  language "zh-TW" do
    sha256 "8ffa2512b556fc6ded4b0329d29e50be65d1238d12c6f6778032bd7795315215"
    "zh-TW"
  end
  language "zh" do
    sha256 "5eb9a86219f08de4a87fc63ff6b9da90480ed6a78c0463ceb3095da844601ce7"
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
