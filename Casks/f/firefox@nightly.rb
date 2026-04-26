cask "firefox@nightly" do
  version "152.0a1,2026-04-25-20-50-49"

  language "ca" do
    sha256 "1b8685a5c19c17e700aaea63e623c76bc833e6ced9ab1229cd45fac80e09f62d"
    "ca"
  end
  language "cs" do
    sha256 "8b045d658dd5fbbfca0561362d0ca0fa2bc0b5807efb58960b0e2785364ebf42"
    "cs"
  end
  language "de" do
    sha256 "2d3f8a1be80a3719b8cb5e6b908dbd60ac2019f64366041df51b7b66e299747b"
    "de"
  end
  language "en-CA" do
    sha256 "97c3213486886014947b8c625541507bfa3470e6c2090ef24e59ad5610a70445"
    "en-CA"
  end
  language "en-GB" do
    sha256 "5c08fe909a9aa6b9444913c5b61a464b785f74ad415d93fffd47de5d82d3fea8"
    "en-GB"
  end
  language "en", default: true do
    sha256 "df294f0e800d3f348ccdb09468836c3b374a1ab6f6fc42ee5e8d3e298c7c5f2d"
    "en-US"
  end
  language "es" do
    sha256 "8e4f751576ab699db30b11df524831282d07c3d9f9b1c38e69ed570e2b261c08"
    "es-ES"
  end
  language "fr" do
    sha256 "caff17c0938601652dfa9cdfc0f5f27f64f460687cb8cd788998f817f6f902e5"
    "fr"
  end
  language "it" do
    sha256 "a9fd05b8e01126c1fcfaac5a14d47d2c042152443f280ca13c44c9fb3f737bd7"
    "it"
  end
  language "ja" do
    sha256 "ebc93d735c0accf927f83317f832f9072c132e88cf89e4fa17c2ece7fccfe875"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "ab07942d699488978677f31b0d8a6bce0bea7b6899c64d97e3d0c9c90b01063e"
    "ko"
  end
  language "nl" do
    sha256 "0a88e76ae3294b4a94f13c3b438c568b06bd8ada6a3826985cb225601ab1aad4"
    "nl"
  end
  language "pt-BR" do
    sha256 "915cf83156153c1e86bd56c771e0daacd2155ea1c13fb04ae8849f25191e7a02"
    "pt-BR"
  end
  language "ru" do
    sha256 "dba9b249d74f7f0b11f7715340e40d74764c784edcf2826908e2c661a99913d0"
    "ru"
  end
  language "uk" do
    sha256 "6eee231cba67fba5fbdadfc044eb2e99fa239dd46c3ac1b198d6dc1a9eedd8a2"
    "uk"
  end
  language "zh-TW" do
    sha256 "05517a44556686eb378c13109072fc53056a518c255ecfa65b39b1bbd3bc4451"
    "zh-TW"
  end
  language "zh" do
    sha256 "7a64e698e8fcad725fc8856069dd68852748d237b3f2ecb3ac5d0fcda99c13d8"
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
