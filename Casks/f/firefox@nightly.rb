cask "firefox@nightly" do
  version "142.0a1,2025-07-19-20-32-25"

  language "ca" do
    sha256 "f74630abc38fcd2a83c2f6d1fe761eeecf02a82b0df177d19f11c698e4f0bb62"
    "ca"
  end
  language "cs" do
    sha256 "f923fb41776e9dcea29e14a2b6a4b74f1433ebdc56074aa176640fb92f3be35e"
    "cs"
  end
  language "de" do
    sha256 "4c05b67180394df6a3b269200d21036ba6f92125c1b3fcb4f2a79e63f61bee34"
    "de"
  end
  language "en-CA" do
    sha256 "af950475f7d5c42ab80be556e2b641f911f7524099c899e0bafdc63da88239fc"
    "en-CA"
  end
  language "en-GB" do
    sha256 "9fd82ec995f241c89d9f7080fae7c9762cc694eaebefe586fb3c9a6d15829563"
    "en-GB"
  end
  language "en", default: true do
    sha256 "b89221aa0477e2b1d8e63ee38c9e4b2235d00ba874c24192f2d490b762ddf4c1"
    "en-US"
  end
  language "es" do
    sha256 "7451c0ca8af63cfc7d6d46ebaafb2a6efa05b9725c3de48fae381347d2cf27b6"
    "es-ES"
  end
  language "fr" do
    sha256 "9fbcea328b05628b9507bec0d8edc8d447a9263a0f1b9d928134779e7922bdc0"
    "fr"
  end
  language "it" do
    sha256 "7d086632c639ad6ada5b14a31f78bf818edb3c1a523c1fdc7ab4c543f9c87871"
    "it"
  end
  language "ja" do
    sha256 "169b1c63a85974a6f25bd3123855640627c335814702c761545a33e5bb11a823"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "2f257bd0de7d781ce13e50e1bbe57eae22ac79d772cc34a70890a1fbce5a6fd2"
    "ko"
  end
  language "nl" do
    sha256 "85533edba48b406855a18f612c9acfe5de8b076eb35c5352aa89613156f1e043"
    "nl"
  end
  language "pt-BR" do
    sha256 "61b173a937318cc1dcd05e3bb3ae86d10293dd25ed7854ad413a5da70ddf8b65"
    "pt-BR"
  end
  language "ru" do
    sha256 "98c8faae859f9e0e2fce5f2eae6e0881fe6808f01dce604bad576bdd1e7189d8"
    "ru"
  end
  language "uk" do
    sha256 "92acbbc68c2d620be0027d66743b15b928af60d85339829a699251d7d3dc436e"
    "uk"
  end
  language "zh-TW" do
    sha256 "2423764bbe9ba9acb327a9e9df080c617e69f46a208388e33c990e11830d18a8"
    "zh-TW"
  end
  language "zh" do
    sha256 "b4fc173891a08fb840a3c5958fd887e702ab43bafc5a49b661f8846937891687"
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
