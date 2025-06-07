cask "firefox@nightly" do
  version "141.0a1,2025-06-07-08-31-23"

  language "ca" do
    sha256 "a97206ad9dfd2c278d802e4c57dbcb29e918bf89a8bf74bcd45c7f3b365af33c"
    "ca"
  end
  language "cs" do
    sha256 "67ae0d940cb891a136d69615433e3bb9c9c39c1ee9bfc69c65818c76939d10a2"
    "cs"
  end
  language "de" do
    sha256 "4a5cd44f2cdc9507382e7f76a376f2350feac1351a6e8012e8524bc9a85a13b6"
    "de"
  end
  language "en-CA" do
    sha256 "f56eee3267b6c4642f93ae5d7c03c4941fb49916429f0389b2ba9fb31408b523"
    "en-CA"
  end
  language "en-GB" do
    sha256 "bef41904a744dd185bceb043b16f2b4d54dbb384ce5a1d53e0655d2ce4e669af"
    "en-GB"
  end
  language "en", default: true do
    sha256 "c3ffc50c6ce7305acd835cc28639817fdcb04778bd5abbdda8bf11a2eea42024"
    "en-US"
  end
  language "es" do
    sha256 "1114e84606d66e98433230a2313507ba031d2151dcd4e83d3435754fac0d67e5"
    "es-ES"
  end
  language "fr" do
    sha256 "57ebba6906d82315ec376f655fb2235a3ccd22d83a9cfe7a8ec836da1da78d89"
    "fr"
  end
  language "it" do
    sha256 "ae9746d23ef5146052dd4c1f37c7b75287e67c06a119f373899afb2aafd3127b"
    "it"
  end
  language "ja" do
    sha256 "bda520b4ed89f7cafd7618b3b2047cae2410a6d63ad7dfeba32a73f212378b9c"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "145878b883e34a40cd136e439aea46a0c1a043ccf67061a9c9eb2c7b585ce3aa"
    "ko"
  end
  language "nl" do
    sha256 "59db923e4b842385ba08158460869c5f1914b60f62856f4ecfd791bd9f057950"
    "nl"
  end
  language "pt-BR" do
    sha256 "c2df58846486729acffbebea40ebaaca01d87ab8e0cf1660f209e2014970e445"
    "pt-BR"
  end
  language "ru" do
    sha256 "d83db9f216e4b87e1c7942f17b04b6479d1ac27c0eb5bfa8e5e3cff0192d0f2c"
    "ru"
  end
  language "uk" do
    sha256 "e8fbceed04d7e65d21317360e8fa4b5d98fc46eb9fc205e0b37fc50186a25d33"
    "uk"
  end
  language "zh-TW" do
    sha256 "10db505f6b813bcb26bf12e662662b27b3c2479b59c239f84d99a0cce4d23293"
    "zh-TW"
  end
  language "zh" do
    sha256 "f422e665c000a0cc534501e25cf9949b839c13f8efa7087263dfea0216bc1bf3"
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
