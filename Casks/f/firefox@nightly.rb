cask "firefox@nightly" do
  version "151.0a1,2026-04-17-21-02-24"

  language "ca" do
    sha256 "2aec223e510da6ad0678eae7113fc4220c608cf643b6db32e04d57ef5a19fd1f"
    "ca"
  end
  language "cs" do
    sha256 "4899f10ff31dd4596bd7cb52eac8e9e43583ba806e358898fd4fdc0522cb885d"
    "cs"
  end
  language "de" do
    sha256 "293e36918c96caef67586eee5b3e95bde1ad0eed78b3c02c7049abe689bcae89"
    "de"
  end
  language "en-CA" do
    sha256 "1566d6c6458dac917aea90f8dc64d1c08d8445e2126b3729069e75ddb686d93c"
    "en-CA"
  end
  language "en-GB" do
    sha256 "6ba48ffad9590cf6e415367d7ebd809370f9b79487437e5163da5094b8036908"
    "en-GB"
  end
  language "en", default: true do
    sha256 "3535f57744a56b5c2dc8c8abef65472ffffcb1426a99ee0d538c2ad5bfc55d66"
    "en-US"
  end
  language "es" do
    sha256 "f56a4a7e000695d4533ba5e71b1a13c3931416d27d92d1dd3363beb5e378cfbd"
    "es-ES"
  end
  language "fr" do
    sha256 "7d808a72b64b1a23b9e804d17fdf6bf48a9e93f10e92d41257129ff4e8bc8682"
    "fr"
  end
  language "it" do
    sha256 "3cd9c7231c25ea76e2e8bd59b16ddae78e3a28bb3bf3a8756bfbcbd1c206cb39"
    "it"
  end
  language "ja" do
    sha256 "2fdd1c747d8acf332527336884ffdc758e54899bab3d9e8c0b91594b96e286f0"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "cea7271a545e81b692580f1d0bbd866a8a131dd91787d4ef2ce229325849c0d1"
    "ko"
  end
  language "nl" do
    sha256 "e587ff09f4542a284d7fdeb7dc1bf70b891974a4dedd7c4cebc9fcd720709fc9"
    "nl"
  end
  language "pt-BR" do
    sha256 "88e843e49594ca500e4dfd44d08a1a3d545670e61ddc70b5f6912d1668c5cb18"
    "pt-BR"
  end
  language "ru" do
    sha256 "493fc59b8e05b3c28d0872f1a4a87fe09f727470fc317a30a49b19a6025685a0"
    "ru"
  end
  language "uk" do
    sha256 "12cafe9f8678ac3edec19b8b3618626ee214c2e2e483fe088afb0a2c44a37ece"
    "uk"
  end
  language "zh-TW" do
    sha256 "57e39fb1d7a6b827c134887754582838563f5c396f879813b7fdadbff2568d79"
    "zh-TW"
  end
  language "zh" do
    sha256 "b7d9d10d1b1eeacccdabcce0813695fd98796607eca5a230a04621b3226f1adb"
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
