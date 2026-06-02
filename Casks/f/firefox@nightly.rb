cask "firefox@nightly" do
  version "153.0a1,2026-06-01-21-00-56"

  language "ca" do
    sha256 "1e83a62c76495e4eed182c8fcd161334bd7f14730e4896fad9cc531e0029b10a"
    "ca"
  end
  language "cs" do
    sha256 "f33ce2a14c73844d53e734b5e8881276714bc9597f75ff6476fe298ee937f664"
    "cs"
  end
  language "de" do
    sha256 "494a0fe50be55e793a469eadae35e6aa6ca0c86e92abba4abc28645013b88bcf"
    "de"
  end
  language "en-CA" do
    sha256 "a41ad446bd45001a10b9972c02e6160fe90012a3118d357824f25e0435992e17"
    "en-CA"
  end
  language "en-GB" do
    sha256 "1df9c38b19d82c5bc3f871a341eae50ce80bbed250039383f1505bb86492a7a9"
    "en-GB"
  end
  language "en", default: true do
    sha256 "8a1a4fceb4951f548933d93a4212e562d532a0d93f6f0448f78671a2a25af0b8"
    "en-US"
  end
  language "es" do
    sha256 "c0039269e1f5b67b3eac560b291ed77557dc971524f6c464f396889e95b0c09a"
    "es-ES"
  end
  language "fr" do
    sha256 "c18d6e1477d30e2d35dacc307bfb8f78bbeeb92d119c12bd3c83b3480e9a6637"
    "fr"
  end
  language "it" do
    sha256 "866228e528cd32562543f5ff6760f556237e9ba80c15c1591251b1cd94e61885"
    "it"
  end
  language "ja" do
    sha256 "e20fc8be01f515260a1a6dcdbb26fc8a98f45007ec6f5b06970dcfbc4c6ecb64"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "c40137e3e97455de78ca89fed75aab67ec5a2fbe71f9aa86da54585ace94beac"
    "ko"
  end
  language "nl" do
    sha256 "2d08f909f77f7b56f47ce9969a1018657f6a987fd70a8d72fa0dbb4dd262c7f8"
    "nl"
  end
  language "pt-BR" do
    sha256 "fe6d26fd1481d6c246084aaf0ab5d40b14b6a999b40b59fc59bc25df33befdcb"
    "pt-BR"
  end
  language "ru" do
    sha256 "06025e900ff2fcc03b26d68d6d6b5fdf988e45e7a76c9de2b8c21357877493d7"
    "ru"
  end
  language "uk" do
    sha256 "18b77fe377b979b5612174593633176038d79b2cfb61eb9217d018db0a13b2b6"
    "uk"
  end
  language "zh-TW" do
    sha256 "3d7717d628dee10b676a0fb8171710e1eef9aa0432aaf622b0cb0a984b4f6222"
    "zh-TW"
  end
  language "zh" do
    sha256 "9c78431498abdded1898c964c4d1d89d8557e130a3374772b58017fd9ee6e58a"
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
