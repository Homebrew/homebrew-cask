cask "firefox@nightly" do
  version "158.0a1,2026-09-11-09-29-15"

  language "ca" do
    sha256 "1412ceec9b188fa13521b6ed640e5263607fdd0ce4f90bd89c65e47194d1e1bc"
    "ca"
  end
  language "cs" do
    sha256 "bf6176fdf9937df7ca98a586ae02e0e555da1f50d1c66ad5633eea8d03c2052a"
    "cs"
  end
  language "de" do
    sha256 "6d8921bcabd6790457d939a83fe4d1ec3adfde35496cd73d29d73332d00ecb85"
    "de"
  end
  language "en-CA" do
    sha256 "0b6903803ddc565e6a171edffa3fc12cb15601b57ca1fc9c1907ce09d09dcec7"
    "en-CA"
  end
  language "en-GB" do
    sha256 "9c8af67e1a6e2dfbbf1391e778f36b6862fdfe4864837abe9462840d8ca1b95a"
    "en-GB"
  end
  language "en", default: true do
    sha256 "3f9cfb866125ac0c1e0f9991227fcfbde2b9c773616fd75274a7135d7ad585e9"
    "en-US"
  end
  language "es" do
    sha256 "023dc9c9e17d4a8fd9ef0427fa5d0da1b6bec5e5e26e07db51c642802ee95d29"
    "es-ES"
  end
  language "fr" do
    sha256 "105ed0113cadc538129fa62ba08cb5ad7e1bcc607b531ccb22f5e3351d8b6bad"
    "fr"
  end
  language "it" do
    sha256 "f86debf312d01487cfc0feb5b1284861951cff2afe9273db4cb3751cfd630afd"
    "it"
  end
  language "ja" do
    sha256 "e66a0d6e8671436e4d80b6ead60df1c3bf1b88571b33ec28e1a43ebb6d3c6f27"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "2565a769aa2fe5bed72cb7c3c3af0515f40acd2233298a01ce4171dba0e9e8b3"
    "ko"
  end
  language "nl" do
    sha256 "dadc74da158776fceb8f2268f3f939b2e2019aef5602fdcb0f9474f42cc2373d"
    "nl"
  end
  language "pt-BR" do
    sha256 "317bcaf50366b5bd0a6ce8a8886ab9392b85123d5f26171583878ed8d4b960a3"
    "pt-BR"
  end
  language "ru" do
    sha256 "7d9ff8c9724045b97fdc7dfdcd410ced25e68831393dd21f1d286d826a5900d9"
    "ru"
  end
  language "uk" do
    sha256 "0c63e6588aa07ecf97e299a606bf35c40b182c61fc2c6da79db49119dd43fd0d"
    "uk"
  end
  language "zh-TW" do
    sha256 "3557a64061fdb932d0dc6f2c02d789cd15234676753b76905ea65a764d7909db"
    "zh-TW"
  end
  language "zh" do
    sha256 "48f630b3f113b356538b7f0ea10147b67e0dc17964690c3f9d3aa9ab4557b088"
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
