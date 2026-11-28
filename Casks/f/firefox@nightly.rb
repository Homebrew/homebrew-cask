cask "firefox@nightly" do
  version "163.0a1,2026-11-27-21-43-27"

  language "ca" do
    sha256 "5aa0783bc37dd063c55444be0587cfc6abcaf3fc1381da5831ba30c142e05f28"
    "ca"
  end
  language "cs" do
    sha256 "5c519e64e1505e27bb5c2d42c0423010734f5be971cd1310e07ac9108c281783"
    "cs"
  end
  language "de" do
    sha256 "7ffc0b188fa4e3f74584a5fbd22d078be67d4da4a49184a20b64ec3a35f96992"
    "de"
  end
  language "en-CA" do
    sha256 "9f8288241623e6b3c939aadaafbb1676c46de73f430acd7361e1d882a27a24fe"
    "en-CA"
  end
  language "en-GB" do
    sha256 "c55e2c11d79be3714c4f44f1ac446fd7d4a460feea7c4e3b4f8d1b018455e95b"
    "en-GB"
  end
  language "en", default: true do
    sha256 "406752b44f3d3d0c2ca751501697391bd4e5970ac02b2f640d22378807fb925e"
    "en-US"
  end
  language "es" do
    sha256 "66b1d6b7cc84d60dccc546b6586087740dc4c977acd00b1e0cb9973cb9b18465"
    "es-ES"
  end
  language "fr" do
    sha256 "563b09adf45b16d72fd041c5e95fdb9aef918bfb05520f03b01159f43aec1de0"
    "fr"
  end
  language "it" do
    sha256 "ef26ff8bc3abc44ee7ce18bb0ac2a277718f9185a4dde20c62e485c9994a7772"
    "it"
  end
  language "ja" do
    sha256 "f83ff22ec6cbefdaa3b513857eb2a825b07cdba08c52425d658c6f5af7667179"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "0a804169a21ce145d05c324ca121d5af36c3ebb9632a3536cce1ad8ffa1f429d"
    "ko"
  end
  language "nl" do
    sha256 "87a66359b4d0c32fdc46aa57cd9e6e9d4d11896229e983c0270f031acf1726da"
    "nl"
  end
  language "pt-BR" do
    sha256 "38b1905fb24cf4be8ecaf6959fab33d5350f7e0a7861bb8246bc0883d14d514d"
    "pt-BR"
  end
  language "ru" do
    sha256 "03e9ea8d497edf91a46dc9961654b446711f3afa020de027dca06a37d1e131f8"
    "ru"
  end
  language "uk" do
    sha256 "7a8dfd0f2bd258e3703fdc6c2fb37d09b4e4d8a5cf01036631d054b2c34361a4"
    "uk"
  end
  language "zh-TW" do
    sha256 "3f0eeb6ec973cf0005591d1018c7ce853eb7af8364e853180ae6bb3e58b02782"
    "zh-TW"
  end
  language "zh" do
    sha256 "7670d4aa0a5ec2c47fd464a96a96e2f8404be1f46e7269357e6fe608cea9d192"
    "zh-CN"
  end

  year = version.csv.second.split("-").first
  month = version.csv.second.split("-").second
  locale_suffix = "-l10n" if language != "en-US"
  url "https://ftp.mozilla.org/pub/firefox/nightly/#{year}/#{month}/#{version.csv.second}-mozilla-central#{locale_suffix}/firefox-#{version.csv.first}.#{language}.mac.dmg"
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
