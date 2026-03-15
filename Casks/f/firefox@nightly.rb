cask "firefox@nightly" do
  version "150.0a1,2026-03-15-08-57-00"

  language "ca" do
    sha256 "0ce0c5627ded45c8a5bb97f7b3f0cb409739c39f1c80d5ee0bd407b25a4ef7eb"
    "ca"
  end
  language "cs" do
    sha256 "16b3a0987abea7c9592c640f2c4b69e0825ec4b95251437dbaeef8195a73c28d"
    "cs"
  end
  language "de" do
    sha256 "2759b454237f3a565d1181a6d56908d25895fa764b162cebed680f347e8e5ad8"
    "de"
  end
  language "en-CA" do
    sha256 "355bb3f4a3105bca66971194227c0d8d0f01c65cc479dd0a8f43ac62bef42d2e"
    "en-CA"
  end
  language "en-GB" do
    sha256 "a6965439f306d41290193bc7aff4974b86a64e61e5b9eeb5c0435d916a13bce8"
    "en-GB"
  end
  language "en", default: true do
    sha256 "88dac03aec1a508e8ea9fcf8f458d1077123011b6525a79066bcd989e70f9b3f"
    "en-US"
  end
  language "es" do
    sha256 "b6e18a0bc30f5401d975a1edf8249d084b67fafc38e2d06e0ffddf508740e929"
    "es-ES"
  end
  language "fr" do
    sha256 "4d9c99f0dc0fbe9d6aa8f71a81940e5a1dfecee8a2a0af6c19091ced65dd1ebc"
    "fr"
  end
  language "it" do
    sha256 "c7225a292bf137f4ae670be55880ad38947ee3f9eade5eb73fdd8987f086265a"
    "it"
  end
  language "ja" do
    sha256 "08f0c3f978e979d265416baf45d0c790fbb0e5de573934d91643d7264420e9d0"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "8419f53ff544126a0306bab9501a3f2694c09b63cf0374d573d2e0a71a0c5ea0"
    "ko"
  end
  language "nl" do
    sha256 "dd5b4bac997b7cb9cc361c00ea053e0bae71982994a1877a0d28dbd6ac4e99f7"
    "nl"
  end
  language "pt-BR" do
    sha256 "cb0629c243f322deb98ccb1ab63af740135a7703c4e547ac143f06b55d2ac02e"
    "pt-BR"
  end
  language "ru" do
    sha256 "66153d53f2dfd5bd12b52b256ca4dd2efde1ea78b59f6c35fb3e13332f64ceb1"
    "ru"
  end
  language "uk" do
    sha256 "7453176b6dc246eca972988bdd4216a2bcd62b778cfd23940ba4387f06e2357b"
    "uk"
  end
  language "zh-TW" do
    sha256 "a7ae8667da82565dbd04388d38368f62d6bf72b5c9300fdb1688d9ff801d8bec"
    "zh-TW"
  end
  language "zh" do
    sha256 "ca376ce079b5980485eaecf0be534089de2638679c76db3f2bffad6b3db0f120"
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
