cask "firefox@nightly" do
  version "150.0a1,2026-03-18-21-33-36"

  language "ca" do
    sha256 "ea984590a545494882cc8cebb1bfbe3bbde382882b408e15416938004a4511fe"
    "ca"
  end
  language "cs" do
    sha256 "1cb30c4f2be1fcc58572ed6e345e88fa48e6e208b3368fb16d208262569a6d6d"
    "cs"
  end
  language "de" do
    sha256 "fbd15a2f13fb82bd2a8946d7ca3e99ef21c73f43b9a61e94d01bc2cae67cf6e3"
    "de"
  end
  language "en-CA" do
    sha256 "fedfa521c927a482501e8e24f2b12194f2ece1d7e1bfd52c418eafa3dacf5dc1"
    "en-CA"
  end
  language "en-GB" do
    sha256 "210ce4fcb35916fceceee26a9f9eb31238d72f5242dbf340adcc946b74d4224e"
    "en-GB"
  end
  language "en", default: true do
    sha256 "ff2a647efe8072477a606602a34d444398ee634bfcb81134602108da80fbf072"
    "en-US"
  end
  language "es" do
    sha256 "300205199f89ed72ab419d6e74456fc9710e5cc5644061e521fdd70acaa9a41d"
    "es-ES"
  end
  language "fr" do
    sha256 "829dfc53e4454494c314b9724efae6e33b770553a29a2a0cd1cfdd91336c710f"
    "fr"
  end
  language "it" do
    sha256 "1eff973a7657649b7bcdaef3808a7a19f3bd8b28a81b8bcf6f2b248d7b68566e"
    "it"
  end
  language "ja" do
    sha256 "0ce73edcc6383a198de11c6eeb4b35efc9b877013be668f9ea8ff84a4f7b2bbe"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "0ab33489548e07642e85d2bc5a429e63f0f35fae9b09299cfda69bd7c543d3e1"
    "ko"
  end
  language "nl" do
    sha256 "4500df120b6a2979ddfbd2d367b08bb06ebc3182c275601d51f36411b3bcc968"
    "nl"
  end
  language "pt-BR" do
    sha256 "fdae06aeeee447b3e16f18cfe6eee5d0c0e63719fdeac0657a82b989543782d7"
    "pt-BR"
  end
  language "ru" do
    sha256 "0bdf01988f4ccfaf98f90b47b595854c5d4387d382ee7ff76ed5e2adbb92916c"
    "ru"
  end
  language "uk" do
    sha256 "786afe54af1012bbc4e26a4db1ad8559aa6466b1804cc5a52f1acef9ed702dc5"
    "uk"
  end
  language "zh-TW" do
    sha256 "08e0c7968ca63b44d6244bfa51471fc838bf5de4553f5e54bf2c5d6feb82772a"
    "zh-TW"
  end
  language "zh" do
    sha256 "e2e84503aa97151804d5d0287fb5e5394be915499030422c286a833ef94196cd"
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
