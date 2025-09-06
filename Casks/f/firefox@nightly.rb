cask "firefox@nightly" do
  version "144.0a1,2025-09-05-21-09-09"

  language "ca" do
    sha256 "e18b3621ac4c2c31a2bff0649718dc5cf1c4718e0af6dedd7284b631d4e9cf45"
    "ca"
  end
  language "cs" do
    sha256 "5c7271e64cae26399e241212e417216c03c1e33670f100f429d170994410b7ed"
    "cs"
  end
  language "de" do
    sha256 "0f20e1174d503cc07d9b9ff5e9c19d8669400c8da1c597ac7553607b06d2ccd6"
    "de"
  end
  language "en-CA" do
    sha256 "c99b93c6ba02b8e9908883f741026c2abfb75dd2d1d98d777628150f3a7a6ad4"
    "en-CA"
  end
  language "en-GB" do
    sha256 "1ad472f7c8250bd90532a7ff4dfd6e1998122c2ed8aaef784639f89ca54691ff"
    "en-GB"
  end
  language "en", default: true do
    sha256 "7df27f556d4b903faf4bcd03b73a82afadb8b9ca03222c73fd25011b942c7c10"
    "en-US"
  end
  language "es" do
    sha256 "8fc6a95d302874b626b4fcc573f2c24fbb3cff93bf83fa48f91ed962a8714e9b"
    "es-ES"
  end
  language "fr" do
    sha256 "b313476de8b22574732c45d578690d60cb17bde5fc491057c3014b41cc2a63c6"
    "fr"
  end
  language "it" do
    sha256 "2d9a9a6dd00b7e8f7b9f72f24af8fc8ff2ab863c1249f84cea15a1817309c5d4"
    "it"
  end
  language "ja" do
    sha256 "d2d7092ab91a8c9b218825c1d90d7bdb265253afefb411047fc50630a9ce94d5"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "76a02637db491283beb886df55d7c374f536174021768edd333883a475c22028"
    "ko"
  end
  language "nl" do
    sha256 "ce717ea6d04d16ee297cbf7ec8e3498175d1574b8213112228cf134dee7b91ac"
    "nl"
  end
  language "pt-BR" do
    sha256 "91a825cec2cb5fe0c885c878929b65560bfd76dcacc59dcf280daf335b7b6b38"
    "pt-BR"
  end
  language "ru" do
    sha256 "31eaa3649ac01e02dc37e15cafeb90574ca112013972bd1e2afbd3c52e0e455d"
    "ru"
  end
  language "uk" do
    sha256 "d41178a2982388f35894749845ca1b6ebbb0b1caee1ee855f98a075f9837dc8b"
    "uk"
  end
  language "zh-TW" do
    sha256 "1212542e07e4c18cadba7b6628ac307b52e19ea40aa221829099a5823aa2075f"
    "zh-TW"
  end
  language "zh" do
    sha256 "16e05156f3171f2f32b080f641ba967344598c0853d30d7d9dd942613c5d1516"
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
