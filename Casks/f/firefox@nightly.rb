cask "firefox@nightly" do
  version "157.0a1,2026-08-29-21-10-45"

  language "ca" do
    sha256 "cb435e8084e7e2c17b0e0f9f374734ba8a6c659c29956820fffc33a0c2711f02"
    "ca"
  end
  language "cs" do
    sha256 "71cf0ef9529fa2f133f8038d7d0c24873f1e3e3832242cad3a575757a358e395"
    "cs"
  end
  language "de" do
    sha256 "a08f0ac465937d08a8879a0a697a294ec26ca0219dbf8317b7b77bf2d7e6cb4b"
    "de"
  end
  language "en-CA" do
    sha256 "e52cc8d955cfa58b836eea71d4ebd973ce0510cc2c2dd61733196df54b12634b"
    "en-CA"
  end
  language "en-GB" do
    sha256 "b2a427ae11094518685380769ec0c93692ed8ce4fbd7ecbfd480d4cda283b1ad"
    "en-GB"
  end
  language "en", default: true do
    sha256 "adb027776b208064d6738b10d738167485941f13efaa990b57e0fa3543ca09e5"
    "en-US"
  end
  language "es" do
    sha256 "2f79e7bcdeb1b1d4ea6b1e4ab06f21641f73c715d65c0f440c8d369a31342f47"
    "es-ES"
  end
  language "fr" do
    sha256 "b14cca50d13000ded426b16dc6acab1249470f23d1ec0de9c06cb01318123867"
    "fr"
  end
  language "it" do
    sha256 "5c3a2085b68c465b276af8fafc582e002a3061031c7a1319d0c990709210a517"
    "it"
  end
  language "ja" do
    sha256 "d19e839ba211ed66b4331ef69eb79657581d013923cb32738ec0a89cde76f8ec"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "54749cfa7cbb535d6c228f0013760e206311068c03458fd46854fcfed3cff6be"
    "ko"
  end
  language "nl" do
    sha256 "11c63c0713b7dc00debb45cc9191822963124769da295b230d63931dcd343c5a"
    "nl"
  end
  language "pt-BR" do
    sha256 "a7514fa9ef3b955cbba6d4eff2c6d4d44da2f8963e4557e771c242b5fd21dcd9"
    "pt-BR"
  end
  language "ru" do
    sha256 "66387159394f66a1f8a68e17ddf75c18f8068d26ec39196ff08dd66f2831227a"
    "ru"
  end
  language "uk" do
    sha256 "ebf68dcedff197d5bf0c6b844b652793fab18a24305468469506bd89429d8b09"
    "uk"
  end
  language "zh-TW" do
    sha256 "c7cb6e8f5edccc143fadc461ea41d454b1880507554303b0d4692cee0137307a"
    "zh-TW"
  end
  language "zh" do
    sha256 "38b3e0c5ad979867a1171f32fbf8201257af4e45c6ea46dc25c31519a741b970"
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
