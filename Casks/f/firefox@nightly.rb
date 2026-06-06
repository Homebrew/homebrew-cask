cask "firefox@nightly" do
  version "153.0a1,2026-06-06-08-08-28"

  language "ca" do
    sha256 "da576682b57d5e13d2b5c62d0be297acd31475a70b78f09872b5dfba54717f46"
    "ca"
  end
  language "cs" do
    sha256 "788f7bbcf68e35afccd172c368cd4af6bf692fbc24b1ce4051865dab31b2c47f"
    "cs"
  end
  language "de" do
    sha256 "066cb3f429aab82f455a157abd4617a8b52f77d14652013e73adf7fb39bb825a"
    "de"
  end
  language "en-CA" do
    sha256 "194933047f30ed34f169f817f2bbc9915b96829c19833421f131f0df6cf4f141"
    "en-CA"
  end
  language "en-GB" do
    sha256 "a80b0e86a77455f5da6db6354d5eaaee3b0caed01a24fd666a535218a80f5d6d"
    "en-GB"
  end
  language "en", default: true do
    sha256 "ce91e8bfe39200802950f2bc169b788c8343aeca77804a64c1e45859e1930ce3"
    "en-US"
  end
  language "es" do
    sha256 "e2b2f8996f80de1d6fa82ba65d372e9112b751f0d32029fe90c50d830320cd29"
    "es-ES"
  end
  language "fr" do
    sha256 "46a7e38952c8c753636199d90233a3fb7563e1f8a5e74ceef78afefd4a54a053"
    "fr"
  end
  language "it" do
    sha256 "56cffaec0d91a5a27d4546f2554d1d5e5eb89835f0d2e4a9da17646d160c9837"
    "it"
  end
  language "ja" do
    sha256 "6fab26ecefa25a370e0543dcfb60d1c9ad67fa05ff6249ed4890f35fabbe691a"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "127fcb1fc3ff70da5ff1b990973a5d91ad81fe026ff43bca74d0cf0615976a98"
    "ko"
  end
  language "nl" do
    sha256 "6be36749d070d8f2ae9773de303d19846334098f713e161714a3337def571f95"
    "nl"
  end
  language "pt-BR" do
    sha256 "9c3a9d4fd7b4e8d12887d1dfad8aa9beb1715f8531dbd77cb6a391a3aa550f42"
    "pt-BR"
  end
  language "ru" do
    sha256 "f61b1be1e61d68b0f37f0300fffe21bf05a87013890acec544ae35afd864cc4e"
    "ru"
  end
  language "uk" do
    sha256 "1652129d92163b8c14c35cd9faa4c748c7209c6eadd5bdff76ee68140f59e6e3"
    "uk"
  end
  language "zh-TW" do
    sha256 "fa3ceb0133f808a409f5e12e21923bdcdf0b530be277f75d111eacf62fbd594d"
    "zh-TW"
  end
  language "zh" do
    sha256 "f6e33f7532c16d9b2f3df7d426fe669c901cc0fba6ad772a341b262931255fde"
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
