cask "firefox@nightly" do
  version "156.0a1,2026-08-22-10-20-29"

  language "ca" do
    sha256 "a8576e69004d572e104ea73c29b737626e07467ba41152fd8b19f1d4c91d5c7e"
    "ca"
  end
  language "cs" do
    sha256 "2bff578583b057c0b9c7d2083eec700d06dfced533e4dbaea66a288e689bf3a0"
    "cs"
  end
  language "de" do
    sha256 "0ea6ce0d3203080af2b394c2bcaac43c5d85b3f523e5f69b22edbca7e43b2ee6"
    "de"
  end
  language "en-CA" do
    sha256 "e7f731a966c58a8a0b3fb2422bf0bcb8faff88955819686dcce26b77ef6fc283"
    "en-CA"
  end
  language "en-GB" do
    sha256 "a85275614711027da7a50b921207a377f092658ed5cb6ca19888ca461d0d95f3"
    "en-GB"
  end
  language "en", default: true do
    sha256 "20250db83e03d37bb08bbf0784e8a07503be85d3c72a41285c9237eb4fbdf778"
    "en-US"
  end
  language "es" do
    sha256 "97bfb361874dd43ac56f6133165d4941f4d22c5c914ee0fd96a0fb0dd95ded20"
    "es-ES"
  end
  language "fr" do
    sha256 "9334e9da3788f800997410704ba2aada89bb157555cc60f682e40defb7afead1"
    "fr"
  end
  language "it" do
    sha256 "a696c5b5db77f416f9bb427311911ae0b4568e3c21834b4130d7c45cb11dd77c"
    "it"
  end
  language "ja" do
    sha256 "56511bea2e2ea26f0d69ad2aee06975f201c16e5090bc1cb9d5c39e7094f6878"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "5135cb2b81fda9583c047a57aabc6a703bb00c2ee9ea11286272108234b51ebd"
    "ko"
  end
  language "nl" do
    sha256 "73e79c4ff210aeb3c34f111289dc656b1f4779f2815de0cb024147b496543fdc"
    "nl"
  end
  language "pt-BR" do
    sha256 "e0b2c34ab0b5aae261e369ed2b4c060e9f4cbcf1e961c0894fd11b8df29331e2"
    "pt-BR"
  end
  language "ru" do
    sha256 "5bd06704d35af0ab02028fff35acf086bf55a926df0335b41fad11f862d1bfe8"
    "ru"
  end
  language "uk" do
    sha256 "9b0efde1cf44a7921f2ef8875349dff5732246772eed9fd3e6ea0c7919f6706a"
    "uk"
  end
  language "zh-TW" do
    sha256 "a0569ebfbd791e7526e554b6480d90655e401453fdc54ad87c814d66d1d5b826"
    "zh-TW"
  end
  language "zh" do
    sha256 "15b1d435f9a2e71be40248826a84b7a52ca05dbac83a25c38552d98dd917193d"
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
        "~/Library/Preferences/org.mozilla.nightly.plist",
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
