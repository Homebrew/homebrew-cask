cask "firefox@nightly" do
  version "148.0a1,2025-12-13-21-40-24"

  language "ca" do
    sha256 "6810015593a81844bf2d389e9f967aa5a14696c5c1e1fa99da63f01f46b31c60"
    "ca"
  end
  language "cs" do
    sha256 "3b482aa7d181212ece1b6731c95dd29469acafc7d3140ec6734eb7868f872378"
    "cs"
  end
  language "de" do
    sha256 "1cf1488684f2ad5b8e0e34fc58385cbad434cd602f2b9b9e70ad274dbbc8f911"
    "de"
  end
  language "en-CA" do
    sha256 "114adb229a25b059a5086c0a725f7b602a8125f6cd345e27190b76874f35b3cf"
    "en-CA"
  end
  language "en-GB" do
    sha256 "3bcd40aefc83a9ca8e18a4805993d9081fa7a1b8f57123eba8c3197dadcc3776"
    "en-GB"
  end
  language "en", default: true do
    sha256 "51d3fdaa6dc89c0792d3a13e546601cddcd07c7c0ec574bae419f5962d65cf02"
    "en-US"
  end
  language "es" do
    sha256 "056caf5b8ec09d86003b5a7c7ff1b24103a2857e6fe0a2ea795bfa9e82944854"
    "es-ES"
  end
  language "fr" do
    sha256 "63525dbf80785eac9c3d281d4a4d6cc2d5f859de52b6615fc990679e627f5501"
    "fr"
  end
  language "it" do
    sha256 "64256ba0b9182b785a118f9c942fbface84a8439b01179975ec0f854466dbe5c"
    "it"
  end
  language "ja" do
    sha256 "049d20199bf1bac42ed2cc8cb3686d3056bd94347517420053aca623cebccf66"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "6ea5135ebf8ae12fd61d6a93e9031a9aa4a82d6425d426803b7d75ce57e3c8b1"
    "ko"
  end
  language "nl" do
    sha256 "487dad43d910e5ae81c52aa26320902173367edb5ecee01287d2de35028ea2d8"
    "nl"
  end
  language "pt-BR" do
    sha256 "58beace0dcc4ab789b61e260d228807575783699e0c44a54976b71a9713c942c"
    "pt-BR"
  end
  language "ru" do
    sha256 "803722a52e6c75aed64fa7a2523f5fefe44effaa35d86dfff52a773321ec73c6"
    "ru"
  end
  language "uk" do
    sha256 "7837c025fa0e5bf7af522c3e9ec09cdbeb5a3245763447255f0ebf0df55f5cd2"
    "uk"
  end
  language "zh-TW" do
    sha256 "f07aa3da70903b7152564e06a5c3bc4274fa3022a1856092c04a262d127cce72"
    "zh-TW"
  end
  language "zh" do
    sha256 "5aa7acc568bf7a59ea4832d93f2b7cdc7f703f91ae55eaf00f8754130e9b0080"
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
