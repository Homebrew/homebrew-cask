cask "firefox@nightly" do
  version "153.0a1,2026-05-20-21-16-20"

  language "ca" do
    sha256 "3fe1ff9660e1e0c8d71876b2821d35f16a86c07bc712568ecdbed2eee6256e62"
    "ca"
  end
  language "cs" do
    sha256 "56095a47b51ba145bf4e5e44e48612343e7f9342cf5f98925dc74abd968230ae"
    "cs"
  end
  language "de" do
    sha256 "799061814542640ed91bee53a2536f343ad56a39f4789aa730fe70f6eaa901f8"
    "de"
  end
  language "en-CA" do
    sha256 "1c719653eb3141ddcb319727b2f93de797ee84f723cfcb16802078c1aa7e645e"
    "en-CA"
  end
  language "en-GB" do
    sha256 "ca753e5d9ed4fdff9d517e5693424a3486c953b76ad831261f06837186029a1d"
    "en-GB"
  end
  language "en", default: true do
    sha256 "bb6ba68eaed3aed77b967a66265d57d93bcf1dd68ba222e3f499d143222f6f58"
    "en-US"
  end
  language "es" do
    sha256 "cafd6e1da14ac108b585a7d349e6a49c651b014bb044b5d96f36297b296502f3"
    "es-ES"
  end
  language "fr" do
    sha256 "8ef9f08323ee5fd94e25a33044e49dbebb35028389beacd95a4bd28753e6d6db"
    "fr"
  end
  language "it" do
    sha256 "718b294c9aef853f3d2377cd0c8694462fbdc97e10139a94ff49d1948c2c2ed7"
    "it"
  end
  language "ja" do
    sha256 "92710636d1ba82f704eaf85a47a9e690047ccd09e66fa0b704855c88b7e2ea41"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "2efd1fa6a1a4f82628a3284203fd8e896a2b0bc843702983525fb39daabc1669"
    "ko"
  end
  language "nl" do
    sha256 "ae9dcdda47dce9ea5f67d298ceb61ab0c4f6b081e8483b9aee3648d1947c8a89"
    "nl"
  end
  language "pt-BR" do
    sha256 "d6a6062d15a912dc6a9a97fa32ccfa00f24b38d34eac65da61cc62c5f508ba83"
    "pt-BR"
  end
  language "ru" do
    sha256 "bd941bdb9859545f57a2a226e4fdcf0bc361fa5aa2fd5ac9fa382f2eb688aabe"
    "ru"
  end
  language "uk" do
    sha256 "4ef1aca1a65b12005b351f0f68de84223b20c35aec340fffb50c418dfa79d083"
    "uk"
  end
  language "zh-TW" do
    sha256 "3f845902b41fb6f36e3d7989583f5e5a990a40b8d696d14528cc757ce8674546"
    "zh-TW"
  end
  language "zh" do
    sha256 "f431c9d3869abb3694c0227cd9338d692eed2d2fde8161e16a0216649b87410b"
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
