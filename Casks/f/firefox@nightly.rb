cask "firefox@nightly" do
  version "148.0a1,2025-12-26-20-43-24"

  language "ca" do
    sha256 "4db1c8c4a4a461f4111fc4581247366646bde8c5ad0e8a94e94220bdcf06f79f"
    "ca"
  end
  language "cs" do
    sha256 "f291cf0e03601d8d0d97fea827b0a1c338b585f6ee4adb78b9837f665f09f755"
    "cs"
  end
  language "de" do
    sha256 "9f3794622136fdb4e45bd68cd0b393b5f8f4ae2ed1059754e833812550d023f9"
    "de"
  end
  language "en-CA" do
    sha256 "2f809cb80495261d215a8389f17ae40480e983a3b1aba6e23926a37c9e136cb5"
    "en-CA"
  end
  language "en-GB" do
    sha256 "044aaf95f39fdad7f1aff4237999cbee991ca8baed2940186d3766e13ccc5435"
    "en-GB"
  end
  language "en", default: true do
    sha256 "cd35658ce2e0d7f267977509ad986e4c96769a065c7154795dbbd737683d35ee"
    "en-US"
  end
  language "es" do
    sha256 "00ee9032e6fcbafbf232eb6f6a1c3ffe3ada6ef1485e4221dd57515343e633ef"
    "es-ES"
  end
  language "fr" do
    sha256 "a58157919f197b1693afdde758b3b90809b4434a83ec32ab6d015a3ac5ef3c10"
    "fr"
  end
  language "it" do
    sha256 "6b39b2d3f508655e8e1ee147b90207bdf68c1e5d43c171660a0c110608e35f6a"
    "it"
  end
  language "ja" do
    sha256 "64b84a30d1ecc2a2e1da37661905569b1ec4c4bd9ce8f7e5aef662cbd20f228c"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "a7e8623e1c0ccbaa13de677f6eddc43d7c7f250e9e2ac3b2f23094400a10b1dd"
    "ko"
  end
  language "nl" do
    sha256 "99ee1f507898d1071a64943ae880112d3a4e28f94f3793c9862adfcf0aa8d5e4"
    "nl"
  end
  language "pt-BR" do
    sha256 "7d191b2ea0e034d483992dc5accec5b168350b8a4fa3ece4fb383edfb80f6e7a"
    "pt-BR"
  end
  language "ru" do
    sha256 "cba9c45de532899843cf3c04c4b7fd618fd75c3a225a3aaeb13f7aa6af8507c1"
    "ru"
  end
  language "uk" do
    sha256 "506b22a7db9e6bef51d8912a7a824fa1b16fbd88259946d0bdda77d8156f4b66"
    "uk"
  end
  language "zh-TW" do
    sha256 "eb6721be393c92afcee73316753a0f34c99386dd6c3c300475db1d9736d7869d"
    "zh-TW"
  end
  language "zh" do
    sha256 "cc371fee0fa1d696177bca147deb90d3e120ad9f25f2127235321fd11174f260"
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
