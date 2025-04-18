cask "firefox@nightly" do
  version "139.0a1,2025-04-17-16-30-04"

  language "ca" do
    sha256 "3b22e131c00a9d4e54cf30a7e2a609a184a70e024e91e09c160a5a2309b1219e"
    "ca"
  end
  language "cs" do
    sha256 "5bf843bc8eba3dfcdabddb4d78f9b0cec9e9d59c300680332e39a7393997850c"
    "cs"
  end
  language "de" do
    sha256 "a19555fd0b74484ca29fd1075f4c6c270012144a2311d1bff1fa0ccfb01d83a2"
    "de"
  end
  language "en-CA" do
    sha256 "c7467d4f976e66512453eceffa38f4be1b96195bc63b61f60e4c1a35eac89eb2"
    "en-CA"
  end
  language "en-GB" do
    sha256 "4a50392fe90739cb145eb4d6142036240564ad980d0a54c6735e99402f36658c"
    "en-GB"
  end
  language "en", default: true do
    sha256 "dd851e9227b7e0bd1c084e0bde60095c5a6963e24d6534d34442150e1f4c5fb1"
    "en-US"
  end
  language "es" do
    sha256 "b6c2b7009d554ced8f99ff6573694b163c2bd8c74423be1baee6fe87cbe0390e"
    "es-ES"
  end
  language "fr" do
    sha256 "215d383cec46b8839f5c1d2531cd46257773a426d3209d26addb19d23c8403bb"
    "fr"
  end
  language "it" do
    sha256 "3e9433f9855467a388f17aaaa8af4b808d23540fe91461bd505c933c40751636"
    "it"
  end
  language "ja" do
    sha256 "2c189d6ae4fceaf8622f4e76f9f42bab1df2ddf32d9090a7203594a3cb042204"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "ae4285eda18ca47ce1112285d7bfdb5bded3c9b42869f02e93943cd624ac883c"
    "ko"
  end
  language "nl" do
    sha256 "fdc746df60f62491b5c09f0ee4f2743ae48aecf647be24c37a76b8deeb88245b"
    "nl"
  end
  language "pt-BR" do
    sha256 "31fbb81e08800672d50975b1a1b0935540876f792a16f4f35e95b37630bb194f"
    "pt-BR"
  end
  language "ru" do
    sha256 "55b6666880549996689092735436a99ba4b7910def7f781b0f996609dec6f7b4"
    "ru"
  end
  language "uk" do
    sha256 "05388f3b570a442cc79243929733c86b5f6233b04522354628c8154db460caf6"
    "uk"
  end
  language "zh-TW" do
    sha256 "ed92dc5b713ad54dbca17b811825841f4b8ce13dc9c8325c699424d770f5cad2"
    "zh-TW"
  end
  language "zh" do
    sha256 "5a1fbe11e1b4d05cfd9e822542714bbafa48480937c9129f0341b3879a1add36"
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
