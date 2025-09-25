cask "firefox@nightly" do
  version "145.0a1,2025-09-24-21-20-23"

  language "ca" do
    sha256 "f157ec8867ad73717a0561870b9919c0ae986b50ad4d82daf014c0fe07b79a7a"
    "ca"
  end
  language "cs" do
    sha256 "29f1a8933c5346f374f1add388284fd0896edef07b59a04eb96c1ed9ce42971f"
    "cs"
  end
  language "de" do
    sha256 "436da60e44cbf861c50dd26556cb5f9accc9411c3e37d5809ec7b2223f530367"
    "de"
  end
  language "en-CA" do
    sha256 "97181e900d23ed8e12f27c2b0b87bb4e55279e3baa21a821d6b33a948e304526"
    "en-CA"
  end
  language "en-GB" do
    sha256 "30cc2da8573d14f47df5e6c8c5ac38605b2c03346add848c290ca541b3021f29"
    "en-GB"
  end
  language "en", default: true do
    sha256 "819e7b5703eff7384b042b8075a3c59d1811e361b3363b2c3c22fbd1ec04cb4f"
    "en-US"
  end
  language "es" do
    sha256 "c08aa46782525aaf0ed6d28a1d30c9fb542e6c862e91d1ce8e040d65703a8f7a"
    "es-ES"
  end
  language "fr" do
    sha256 "93b3c42639fc2906cddb6b30ab35155b526140e88bb1effd7ac5c60c50a07ab4"
    "fr"
  end
  language "it" do
    sha256 "e8b8d27d4b453ad69991057b60622ca67c9dbf222ffea19fe44f576eebc7011d"
    "it"
  end
  language "ja" do
    sha256 "205e2edf81f9ca9b006661e11d93cbf14b8982c01c3b192970f8114d193997f5"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "c718d5e2620bbe7a4f242fd28f92fbc3eec8ce2015ece6c1db0f3e62683b02bd"
    "ko"
  end
  language "nl" do
    sha256 "d5379324328392408e4db556e7aebddca28e8f02b9da58a798067ce243361400"
    "nl"
  end
  language "pt-BR" do
    sha256 "f8203e19e825f80c2c91f7f6164dbecc12ac67e210787774ee1fe8dec17dbc1a"
    "pt-BR"
  end
  language "ru" do
    sha256 "f0b799f66789cc1b6442e3152e5a773a3cefa46c50d58df88bcec76e6221b6d5"
    "ru"
  end
  language "uk" do
    sha256 "e6854c009373aaa78b3de0872137a0973b1826eeee46138735fa5ae12067d360"
    "uk"
  end
  language "zh-TW" do
    sha256 "68d2744930684b9f558a1b5c0bace489b220b1e829ba92c4d47af627a1d2d00d"
    "zh-TW"
  end
  language "zh" do
    sha256 "6e61918bcbe72224edd2204ea6edb16ed9a3e2c68db14195f4ca6155cf3a8a87"
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
