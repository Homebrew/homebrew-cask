cask "firefox@nightly" do
  version "149.0a1,2026-01-28-21-55-03"

  language "ca" do
    sha256 "3a429d5167ea5fa5dea65e0c29785ed8eb2c67ca9f7b2aad21b7c2152a0c1830"
    "ca"
  end
  language "cs" do
    sha256 "4e2e68a5da963935aaadd1d126e1476689da9194e82e584e09437758be4afc79"
    "cs"
  end
  language "de" do
    sha256 "95c00a1b4b27a427f92e984ddfbb8958e5e7a68d6466768d055ccb5926fd85b2"
    "de"
  end
  language "en-CA" do
    sha256 "01c9a7fe3609a9321e2f13c7595a8567e29fa75a1be98094283fd4002bb1f19e"
    "en-CA"
  end
  language "en-GB" do
    sha256 "b3b66688f959557347059defc314286655b686f0f72a79443698f76d6adc4816"
    "en-GB"
  end
  language "en", default: true do
    sha256 "774800f4a3633e3011756944da71b0defda80fd3654ebe86da897b523ee0e0dc"
    "en-US"
  end
  language "es" do
    sha256 "9447050073e937c5502d870fc721c0e361f9e78cbdf4cb12cf92a747b7ce3f7e"
    "es-ES"
  end
  language "fr" do
    sha256 "012c09e64d9edecca199acab60ac92122add6409db7a8c05eb87237d9d25ec74"
    "fr"
  end
  language "it" do
    sha256 "9264b7135108eb617bb1d1b6f56274af6eb3adbd9903317b0cd0e9409d3d8549"
    "it"
  end
  language "ja" do
    sha256 "075144577ebfa66e45e4d274ee4ba9e44b33a8e5573a54a5860691a7d8860d69"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "4ac4524e9cb2006482d6fb1c7d28234fb273bbfbdd5a3504cd06fdc25e88b115"
    "ko"
  end
  language "nl" do
    sha256 "65abd69dc997bae7dcaed81d838bc1af84399815ca07e92d33f42c5607be7ad2"
    "nl"
  end
  language "pt-BR" do
    sha256 "d7cbe5850217ebfb9d87306403b0876212a775003d8255eeb668d69a8a69a0c2"
    "pt-BR"
  end
  language "ru" do
    sha256 "00a57b8111c5eb1c848dad86dcf848300e81d94eb4a45b8fbaeb337ed0b3be6a"
    "ru"
  end
  language "uk" do
    sha256 "20e2e4d0f2dcdf50be4ab3858fa28dd2326e42d61c6b299d2b169e165f3f989b"
    "uk"
  end
  language "zh-TW" do
    sha256 "d400ce7ce2c93db73afef5797f11447eea05871d31e1c4dd24ee3f9a6e46f149"
    "zh-TW"
  end
  language "zh" do
    sha256 "009f4ac0c4dbd0248ea19ed8c0890f9610ba27e0dfa3bbe309113a675a14bb63"
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
