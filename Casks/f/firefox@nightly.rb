cask "firefox@nightly" do
  version "154.0a1,2026-06-20-16-00-29"

  language "ca" do
    sha256 "8689de076e829750c93b9c40bbc71df651e59611c237e95b61d7b8f0ff206133"
    "ca"
  end
  language "cs" do
    sha256 "c1180b4d0f0fd3694bc805dadd47d34c0d39882e9ad2497796688a22376868e5"
    "cs"
  end
  language "de" do
    sha256 "c076d390f48276f174aef5c4e195a91f711d2a919c6083fa3370c5a88d693dc5"
    "de"
  end
  language "en-CA" do
    sha256 "9603b6e6df6fa1bc32747d0fcf681f1530a549efe6848a395a6e836dc6f4a634"
    "en-CA"
  end
  language "en-GB" do
    sha256 "9bd4b8a6bc4fedcfd3235abd1ee77ba2dcc79a9bcb7969b3ff7c85b49b8fd013"
    "en-GB"
  end
  language "en", default: true do
    sha256 "1cf933b85d3aa1146d13542bddd08f90256352e9641e4acc9c6faffd29a6c752"
    "en-US"
  end
  language "es" do
    sha256 "5e89cd90779238c650e90ff2f104c16f7a6f0690c31002441f96b34daf11d196"
    "es-ES"
  end
  language "fr" do
    sha256 "9ce0dea33c655bf0cc28bd5fb1d5bb11bd77856e268a76033c485a9c4d3a00d5"
    "fr"
  end
  language "it" do
    sha256 "98b977d6597e01c2008de071a7020f8f5cbdf8c9e26c8cb4c43a13afa5aa2ef4"
    "it"
  end
  language "ja" do
    sha256 "1f589d359029d859e06a9685b540ad8a5ec9d03bcd2323d757f4c27be40d2475"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "82ab50ba7bc16f84fd8c51e3026758fcf1f2abfafe0da135a41ed63d01b80c4c"
    "ko"
  end
  language "nl" do
    sha256 "3b71d73b0e76a88e95aa7fa0edbef147415169cf44f0a9bfb0d364e08103f163"
    "nl"
  end
  language "pt-BR" do
    sha256 "c3eac018e84f0ee0a6855b57f6af9231ee8587cec27d0b079cc65e615fddd40a"
    "pt-BR"
  end
  language "ru" do
    sha256 "57d55097033094cbebd76506c8f4fabf295fd44b1c4bdb444a297d368a7b0819"
    "ru"
  end
  language "uk" do
    sha256 "b149165453e8755b2a21ab72bfe034cce25128c28498d2f249af29a8e2f81f6c"
    "uk"
  end
  language "zh-TW" do
    sha256 "eb6e5c642944b81d40f66d430df287273f4d65f3e941ed85a741293b1a61c3c2"
    "zh-TW"
  end
  language "zh" do
    sha256 "9530aa7703cadae334c6d1e150f108e50c95c6d02f00b85eb62d9d0f3d905956"
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
