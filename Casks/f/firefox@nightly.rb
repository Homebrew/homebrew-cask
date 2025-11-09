cask "firefox@nightly" do
  version "146.0a1,2025-11-08-21-33-06"

  language "ca" do
    sha256 "cf4b56e273dfc46a19fc816a5bddd63067064c304c22c42318a7c4a777e002d4"
    "ca"
  end
  language "cs" do
    sha256 "eb7ce5d023e63b4e23bb714c78bec6846a66f564fee0256038a2e0cfe531e094"
    "cs"
  end
  language "de" do
    sha256 "4a368e0d335955ae3340d704d3f49cbfb788c15606a969e4cc8ca46878b55f3a"
    "de"
  end
  language "en-CA" do
    sha256 "70ac302054e69002b80230de3fcc274779ee8d9e4ca5c72ef1f483e7fc1b59c7"
    "en-CA"
  end
  language "en-GB" do
    sha256 "045b1e69e0384f89569f39b1037577308c6de414c023dbd47efc27dc4b8a3e15"
    "en-GB"
  end
  language "en", default: true do
    sha256 "d3ae99935fbba20b37bae4804c47f657cac56b311bbfae403fbdbd80fdd5f398"
    "en-US"
  end
  language "es" do
    sha256 "a14a81c7907fc17a2248f5995b2eed3ec27e30314929d0a5606b8f3621874440"
    "es-ES"
  end
  language "fr" do
    sha256 "0f97050a8d79f906f02d858176e5a6d6a9c2ea371b2e42bb80ed9ba873d2bcf7"
    "fr"
  end
  language "it" do
    sha256 "2afa400d8e100d8e3a137605e6a8a4c425336bfcd266858c33d0c38939ed6ca2"
    "it"
  end
  language "ja" do
    sha256 "c103cec18223dc599862bfbb298456e4c9452629d7038c3d74a63ec48b17666c"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "c8e66a737aca82e17903a86be8f994ecffa7408ae9ed1d5452190d45d7a1f510"
    "ko"
  end
  language "nl" do
    sha256 "b566d8d1374978a4ad53a3e438d91e508e2d784c18bc069074d288d67d8cb837"
    "nl"
  end
  language "pt-BR" do
    sha256 "61a1858eb0a79dd29f64ab0ee5b0c3c4719e59aafea05e05d363e4ec7116defe"
    "pt-BR"
  end
  language "ru" do
    sha256 "8ea15b4488f8e27745cf2295ba45298dcb964d709789abcfff806c33a1b5aef7"
    "ru"
  end
  language "uk" do
    sha256 "47df4254311358cc7f7af9ebabcfe0e89f904c60ee59c2eb18d9bccea6590ec7"
    "uk"
  end
  language "zh-TW" do
    sha256 "e68926e0ba2c74f53b32d911c17579219ef211dd2a16e8644df4130d95ed3863"
    "zh-TW"
  end
  language "zh" do
    sha256 "62c243d3f870ee0df71bd0cdda13660d402de11bfd8b04025c418ee9425f9a25"
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
