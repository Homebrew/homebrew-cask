cask "firefox@nightly" do
  version "162.0a1,2026-11-14-21-41-00"

  language "ca" do
    sha256 "e3d68520005ef9d4a0a121d7ffc7cb66f61a8439a2707fb8e5b2e2470bdbf6b7"
    "ca"
  end
  language "cs" do
    sha256 "9d9edb70a1fe16408a53e971b9d84a2cbcfdadf8f09008c46a97d0cc7223adbe"
    "cs"
  end
  language "de" do
    sha256 "853dce6d4c4aa53ac3720d4319f6c437ab5d0cb7dcd5a8ac51afbe3fcc06df5c"
    "de"
  end
  language "en-CA" do
    sha256 "a03bb2dd47c3f3107529ff55b92c02bb49619d5aa5575dccc54b8fc8b7e62cd4"
    "en-CA"
  end
  language "en-GB" do
    sha256 "f0f3efc0b2c3303fcb9c7aef8ae3e130e8448f11f305e5cb275475f54d5eaa36"
    "en-GB"
  end
  language "en", default: true do
    sha256 "8bdbc295eca4a7ed7c77734a643d0a5a13256418370cb0c2f82262fa40e5b387"
    "en-US"
  end
  language "es" do
    sha256 "48e2e28e04473dc4ebf7747c86ddbd0da288b73630ea2f6737b076bb2fba00e9"
    "es-ES"
  end
  language "fr" do
    sha256 "243fa28d17214c63e8b34dc9b68beabed835114f6edb99251bf12c6c9f255804"
    "fr"
  end
  language "it" do
    sha256 "8e6e7b1c224a3277d62b571777a64ea0674933ea976ffc66bf5afa3970b09ab7"
    "it"
  end
  language "ja" do
    sha256 "0bd4c658db39ce3f82d3f142c872b4b9da8c0d3711452d53ac8129ed6950bc5a"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "18418b21ea72dd576fdb3d1c239d111ffea6a8d7f3c5606cb208a4ae1b5c77fc"
    "ko"
  end
  language "nl" do
    sha256 "785ad847b13eb7e39e6ab7b57ee57f7498c5e91725b26dffe137d0bc3823b079"
    "nl"
  end
  language "pt-BR" do
    sha256 "289205102e69e6ad833b66c8cbd7d6b86d78b6c7ce54ee1a4855e39cd2166925"
    "pt-BR"
  end
  language "ru" do
    sha256 "4387f209089ee9abc5d27ab19bcaa26d9780ecfdb334f7fdce6551cc8c66d00c"
    "ru"
  end
  language "uk" do
    sha256 "0a77426755540dea8f92f405b7b646cd552d33cc928a675f52d349f04103f402"
    "uk"
  end
  language "zh-TW" do
    sha256 "1e52f1abee203298c29502a72ddd9ac2b6c84eb153b0c8ae8824ae0b9b3ccbc0"
    "zh-TW"
  end
  language "zh" do
    sha256 "9993d6ad5aae199c8216e0a38056f4c0306595b08f8f7739ba4c5c5676a98e06"
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
