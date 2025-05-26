cask "firefox@nightly" do
  version "140.0a1,2025-05-25-21-04-24"

  language "ca" do
    sha256 "cbe7ea0b1dda2d6a1a6f5497facededef4fda71c25a71bf14e1b4121d6f59efe"
    "ca"
  end
  language "cs" do
    sha256 "919aeca9b66c9e91ab4550bda4c71e854a9f3581289e3bccdc7ff74fb643cde7"
    "cs"
  end
  language "de" do
    sha256 "a64712a43b3d06abbbb0080b9ec43ea2d4c30d83598292bde44ffd56a5913f9b"
    "de"
  end
  language "en-CA" do
    sha256 "a285ffee92b26f9696afdc5cbeaad4bb977c72ef2bc26fe939db450a6955cf99"
    "en-CA"
  end
  language "en-GB" do
    sha256 "ba2df90bd8abe91ec7e98b533d0fa72b7ebc1f907b305f8ea98a46b3da487146"
    "en-GB"
  end
  language "en", default: true do
    sha256 "3ec34b081ab104884fe79e23f0817cf58be835a686a440b54466711a232b17e9"
    "en-US"
  end
  language "es" do
    sha256 "2f180a30b114a60f77edbc1ae477b26961d769692858cb8e1a80d328c4855776"
    "es-ES"
  end
  language "fr" do
    sha256 "6831321019df0e09d3db8e5610337e8f141ae8f3fe3e5d75d173d77e1e57323e"
    "fr"
  end
  language "it" do
    sha256 "90a1bbebcba39f97cd00a62b30fd783236e6ad057db709d7de444e44fd9d86f9"
    "it"
  end
  language "ja" do
    sha256 "e0b806035c58770f1be9f7fb3246e75f411e8e1ffb87394633cc891703f95297"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "6a931ea7a0066413865c133bb6f884765697385d9ed02ca6067c5c00078b99ca"
    "ko"
  end
  language "nl" do
    sha256 "2d258017e2a0cb9f27ed4600f2df35e8b695fd3ad9427620666cb23dbec1cadc"
    "nl"
  end
  language "pt-BR" do
    sha256 "7bfa70e2b2a17bc2c681642291b9b933cdfcbd3f4f5fdb69b2d0a2ad3f984a73"
    "pt-BR"
  end
  language "ru" do
    sha256 "f3a6cb7e260f7f36f3b145805af687ba363ada7b7c931e17b2ad5086483a2376"
    "ru"
  end
  language "uk" do
    sha256 "568b093c54b0ebd7c3726d073f81bd5c1fcff0d18e707e39bc10766484e9dbad"
    "uk"
  end
  language "zh-TW" do
    sha256 "fa884edf48e52bd1cc1bef5303a9c6599ea14cff7e3131d3e935705aa6b625fc"
    "zh-TW"
  end
  language "zh" do
    sha256 "451c742228b1b414d1c8253ada6955121663c3c80ae12c1dd15f93e7769ccf15"
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
