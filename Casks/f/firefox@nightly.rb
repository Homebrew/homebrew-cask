cask "firefox@nightly" do
  version "141.0a1,2025-06-08-09-23-35"

  language "ca" do
    sha256 "db923640fe343b1474a3b0223e1c834b25e25b2b1c873d7a8467b1619d543072"
    "ca"
  end
  language "cs" do
    sha256 "1197e9a4f770982d1d9651b86a3cdea0739cc4e024335e1f511ecd7808504437"
    "cs"
  end
  language "de" do
    sha256 "fd10f9e92d8f86af082c7e2e276843713c134bd1e50d1a4d991778adcee26c58"
    "de"
  end
  language "en-CA" do
    sha256 "85b6f10e4f6dec9d44407c21eb0f7ad8a0c5af61a58410bbbecb454ea80ab56c"
    "en-CA"
  end
  language "en-GB" do
    sha256 "f7be6db0393a0ffa8d04b33c34d98e1a602db37bc3ac8925fc5f5e961cc5e92f"
    "en-GB"
  end
  language "en", default: true do
    sha256 "fe7bec9998d30812ac9dd60569fe29e25d3d81230ce6c63d0371be1e68233376"
    "en-US"
  end
  language "es" do
    sha256 "5b9d66f0bdb7bf479f6413dc651a84956b826f87d6daa01f95abc06218c36e8c"
    "es-ES"
  end
  language "fr" do
    sha256 "368e525b612e434d62c9ca38eaea73ffde4e064d76cd6d068ebd56965af7b2ef"
    "fr"
  end
  language "it" do
    sha256 "f869e48247d3231dadd6d72eb864111a032bf699c51865491a1414e4d99975b1"
    "it"
  end
  language "ja" do
    sha256 "41970881330650f0b1ba77eedb78116dff3386f87c90db378aacfc024f1852d7"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "080caa010523b005ad55b139b1bb1ed9aa6cda79342d67f45c7f3f10df00941e"
    "ko"
  end
  language "nl" do
    sha256 "960760fcd112c0a5147e0779af494e2743d105d598a4217f28a863d0cbbc4c33"
    "nl"
  end
  language "pt-BR" do
    sha256 "156c4c850dcd29385c5e340d9baa296a5a4526ac314e33efb79b0ff8e598604c"
    "pt-BR"
  end
  language "ru" do
    sha256 "c37d48d9e74169fb5bc3f094d594f2d41deb557c0912bd647c1ba7e291dedb47"
    "ru"
  end
  language "uk" do
    sha256 "1891ba7efe12073f8f9120f8b3c03bb27dd874bd01e0e37b83c9448d2e8bec05"
    "uk"
  end
  language "zh-TW" do
    sha256 "0637dca00ccd17828123f0551130cad7f439426f3f62679d93d18724cd243dde"
    "zh-TW"
  end
  language "zh" do
    sha256 "ec622271085b6c6361abbc562014792c2f13747bcb473df00a1c9c57e54f2c4e"
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
