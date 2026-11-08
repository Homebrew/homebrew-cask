cask "firefox@nightly" do
  version "162.0a1,2026-11-08-09-13-45"

  language "ca" do
    sha256 "2256dcef90d85a87513d72a91661882df764353b01e45d813ff9c2534544e05b"
    "ca"
  end
  language "cs" do
    sha256 "a6c9d071469811ddad1d8fed6b747109a4a771c86cf1c4376fe68e9fa607554e"
    "cs"
  end
  language "de" do
    sha256 "ab908fdaa2aa6f1f1f4f164bd45c4af95bd3f19d2d08dec19942696ce0a731f7"
    "de"
  end
  language "en-CA" do
    sha256 "5631f2c9069edbd94a7c2255aecdd464d2c40b834c0df054ecaac39e470e9763"
    "en-CA"
  end
  language "en-GB" do
    sha256 "e6822179d4428fca982f3daa38faa88939b705af65c4bd0d3118a692382bf261"
    "en-GB"
  end
  language "en", default: true do
    sha256 "b8e945af6fe0f60d9efa6a3dff5b51b5aa2e6583a717f1cd3e0a99336b587198"
    "en-US"
  end
  language "es" do
    sha256 "e150f44dcedd8ef36f605cdd04d788d4354b3b8141b1d59cb055ae555189b6db"
    "es-ES"
  end
  language "fr" do
    sha256 "4ab840b812ac3f1031886f8ff28c2185f54ad45f07b58785f3d755a7288085a3"
    "fr"
  end
  language "it" do
    sha256 "56ed4b14dc4af57b43183779efc4794522a448c6060b10ba16072bc6340d151f"
    "it"
  end
  language "ja" do
    sha256 "adafa4dde6ab1836546157dbcefb7b73d999ab1294e76d2ba7f75549c402407c"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "8080db8c6773127a47778006479b62deb92520931890e437c68c821aabd5c872"
    "ko"
  end
  language "nl" do
    sha256 "0bd964da00c511124ccbf44ceb61d8f026c032685ad0111a62a7d93cea71ea4e"
    "nl"
  end
  language "pt-BR" do
    sha256 "4d3f97371a385789ca2c75bdb283b147944d79749d65b3a3f52c423b9f36bc33"
    "pt-BR"
  end
  language "ru" do
    sha256 "17422c10cf52041a99f2615742ca36a6921fe8a54fcae5a36f4add839a2220ef"
    "ru"
  end
  language "uk" do
    sha256 "7089d7bae696d346d5f701ef14453b52d5577728c8b872bcf6e324337fd4e0a9"
    "uk"
  end
  language "zh-TW" do
    sha256 "4c33417472873179004a6269eae2543495f225e25c4579c17ed20b0088e25634"
    "zh-TW"
  end
  language "zh" do
    sha256 "fcb16bebc58107c7ceb87189c6109ebddf7e4efe6899738ac2be6956ad7b2591"
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
