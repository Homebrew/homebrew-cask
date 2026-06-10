cask "firefox@nightly" do
  version "153.0a1,2026-06-10-10-13-55"

  language "ca" do
    sha256 "1d3bd63283c866b4e5e3e2414b54de63f149a1f38ed7d9c44c2f11f3e0704753"
    "ca"
  end
  language "cs" do
    sha256 "82e1de8dc272d88cf475cbcbf8b813329d5263b217d67c3e53e72ee7749e770f"
    "cs"
  end
  language "de" do
    sha256 "cbc9bdd1da18f02e774c653facad9d3d13c19168bc6e04c61a82a926ada6408e"
    "de"
  end
  language "en-CA" do
    sha256 "a06cf6aab120c14e41ee72de9daeeb49322810ab34ab43b43a52ebc060f0bd86"
    "en-CA"
  end
  language "en-GB" do
    sha256 "315e8be690d7f15ca09e15f9fb1f1c3b9603eba08ca02d3a82f7610c32f51970"
    "en-GB"
  end
  language "en", default: true do
    sha256 "6ebed98d36677a909c2589ac95932bae077555d2523b2f6005cb3d839d9b0432"
    "en-US"
  end
  language "es" do
    sha256 "bd37a5e07547e35b132d44c02e46844bb33973d336ba406867f2c79c83785ad2"
    "es-ES"
  end
  language "fr" do
    sha256 "4020239dd981f21fa72b0a067e8db9732fb7d8852cf07cf6832b8c68e92a85ee"
    "fr"
  end
  language "it" do
    sha256 "4c0d55b7881367573447e57783dca0f9d2d0e2349a8ad47de90b9fc642774448"
    "it"
  end
  language "ja" do
    sha256 "2bbecc2e24f0f4ca61207731c4e0d9ee170bb667d7f0a856def3f98189ce1510"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "7dd6d268c15c7aa13dafccc385e428e7b4104e159f0eba2453186b94b7ab8389"
    "ko"
  end
  language "nl" do
    sha256 "ffd29aa12edb73d404616be199ccc90c141bcbcdeaa87cd942c3a507551325cb"
    "nl"
  end
  language "pt-BR" do
    sha256 "95a048e037427d9f5e93b1d0fb39b37bfc93ee01a66652b6cdc72651c8dfb20a"
    "pt-BR"
  end
  language "ru" do
    sha256 "fc6dc7e79e9b3600543b4cbfefea1be808c59bd90754a9aa20fedc5d0019a287"
    "ru"
  end
  language "uk" do
    sha256 "dc9cbb2f5809f6c3955b88689f97ef1b890042f859620da1e779460aecaf9e08"
    "uk"
  end
  language "zh-TW" do
    sha256 "91cbb0b6705196e923a6512faedb5d9818f72b30ad3eb91027a686267d9940fa"
    "zh-TW"
  end
  language "zh" do
    sha256 "a29a1b4e182f57c7514255f7e9e963c10436342ce7507044c4cf452087a01796"
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
