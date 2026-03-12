cask "firefox@nightly" do
  version "150.0a1,2026-03-12-09-47-48"

  language "ca" do
    sha256 "93f35f7310d687025768ff9fd16da9dd36f927ca6bab4b15917d91e28a27237c"
    "ca"
  end
  language "cs" do
    sha256 "324457e3e126164faf9e4a6a7fe4f826bf8342eed6e60a38c2760472c645c399"
    "cs"
  end
  language "de" do
    sha256 "fa37849b865dc7ba89e6a92ff8e176ae885dc104a03486707836dcc801601d0f"
    "de"
  end
  language "en-CA" do
    sha256 "6fb269a784e5b7901c3c28ebcb27a492253b8b672ab0601f5434b02a86496658"
    "en-CA"
  end
  language "en-GB" do
    sha256 "7d94550316d8d0e1be3459ac8eb59866c32339384cfad84eac36cabd1212209a"
    "en-GB"
  end
  language "en", default: true do
    sha256 "a83df3747e356d4bcd3f2697dcc7aad0cc9768969522e797749a5841675cb9ab"
    "en-US"
  end
  language "es" do
    sha256 "edb1c46b3487a9b4c37da36686ef4db63629ab295f7d159d3e5dad2d94db35a4"
    "es-ES"
  end
  language "fr" do
    sha256 "69c711679242e7b99c0157dc3600b2a4d5d966f818f7ff69364f4f7f1de015e5"
    "fr"
  end
  language "it" do
    sha256 "3740b6b93118a10f1552e4c933d60100382c93157024a9989638c2ec6a18641f"
    "it"
  end
  language "ja" do
    sha256 "e454bff3bb6887238ee3cf252a0f9548366a2acafa463f10aa8532af45ec0ce4"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "596b29b5963afa1a59989baece4aca532f59cd7c4c4012a28717890f69317fed"
    "ko"
  end
  language "nl" do
    sha256 "a0e0d56b91b37cde96c0010de33f33b8acb9bd63f12963887243ec0903552f3a"
    "nl"
  end
  language "pt-BR" do
    sha256 "c3f44d959160d227cdeaa6a05076bc9c207c6588ec08e67f3c6cef26961b2e2c"
    "pt-BR"
  end
  language "ru" do
    sha256 "d8272b8556b4aa8440518c9bcec06de975288b44ad27863de9188eded035d8dc"
    "ru"
  end
  language "uk" do
    sha256 "1e071def6974c8c5ffcb6215f078b92433f0198d0dc5bd609c8b152c88959760"
    "uk"
  end
  language "zh-TW" do
    sha256 "551a8b0aba6c1959b13f3efe14ec0d411dfb9aa5ab3c5af98d5ca19b48995d52"
    "zh-TW"
  end
  language "zh" do
    sha256 "88cc43b362df49fdb2b8e3873d2015f87689f8d16815915473ac5e7f2f0c9300"
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
