cask "firefox@nightly" do
  version "144.0a1,2025-09-05-01-01-30"

  language "ca" do
    sha256 "326aa62925680238d56631f2c374c38fba7eeade0a0ced3ffce131928d357316"
    "ca"
  end
  language "cs" do
    sha256 "11b1ce824b133689a6ffc1e9432b9be3b7c9c9f231fa12340ae06706181f86c2"
    "cs"
  end
  language "de" do
    sha256 "7d6abbb2306321d92963afa91d55e11ce9f588058f62f1adffe6ccd33fed35d7"
    "de"
  end
  language "en-CA" do
    sha256 "283ebe88c5a01be7495fbdf3be1fc54ab20a345012a82390793db026a0b15947"
    "en-CA"
  end
  language "en-GB" do
    sha256 "0797d7b267cdcc46b0e0c10c3e10e32e5c4c200646b2bc6a1a43a2dfa5f903e2"
    "en-GB"
  end
  language "en", default: true do
    sha256 "36aa964e9ab167e5e92237d7110b793775c0291ec6b661699e3a19b0ff6676ed"
    "en-US"
  end
  language "es" do
    sha256 "d1ba7c0eff18371cda72d27d0ff620b2ebc2a0f6e26029b126d0f67a98f189ae"
    "es-ES"
  end
  language "fr" do
    sha256 "fdb6fdb62cda26de7fdbe22a7a0f000c39db78a2dcafacf19fba814754caa829"
    "fr"
  end
  language "it" do
    sha256 "1a6225bfbf98adca3edd5d4441403eabf5887922c850294912e4c12bd26693fd"
    "it"
  end
  language "ja" do
    sha256 "e72abd01eb0b85b63e4fad4ccad4aecce30903af98b6b5c3fa48d9b75a761b7f"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "19f8aa788ecdf130dbae0fa1895a9e6d3b7c98bd7205b119555e21dd29b7bb5b"
    "ko"
  end
  language "nl" do
    sha256 "d6c34bbaf602de476cab6e86f377beb6e6eff88a85a4809da5f99f08dae64c96"
    "nl"
  end
  language "pt-BR" do
    sha256 "b6fb4906b01d801dac389465d5386a3c3aeadfde182c6020c93e594c7cda5a7e"
    "pt-BR"
  end
  language "ru" do
    sha256 "4c159c00743fbcdf6997963ae416152de69880099cfa1521839a059d9ce2c060"
    "ru"
  end
  language "uk" do
    sha256 "1e316c93c2560f3682c6c469baf2b7aeb4ac9d22a95f302d8234cd3ed9006c9d"
    "uk"
  end
  language "zh-TW" do
    sha256 "8a17aa5f8da2392599ffe6c0ea1b3893ef8ea6db6be09e7d6cf09879235dffe4"
    "zh-TW"
  end
  language "zh" do
    sha256 "64f2bfad8af42d4e35428e369fa941f129cd5844df444510868d76f0cd87aa0a"
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
