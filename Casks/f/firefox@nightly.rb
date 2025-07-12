cask "firefox@nightly" do
  version "142.0a1,2025-07-12-08-41-53"

  language "ca" do
    sha256 "5d7442a3ca747c8aa9c5519330cff13d8011eb5bb115b7350d70e45a7f976d12"
    "ca"
  end
  language "cs" do
    sha256 "360d3875265611eb90d8284f0072a2cae81f4a298789c0e6e84dceb8fadba55f"
    "cs"
  end
  language "de" do
    sha256 "4136d88b49b94723d0472d3cdcdac4b56b920e707c08b3ed7eec39624a517927"
    "de"
  end
  language "en-CA" do
    sha256 "06e1bd568a7731ba44f37f800233fe07f203a73a1b825c9659fd182633ebad85"
    "en-CA"
  end
  language "en-GB" do
    sha256 "1b30a62abbdc804895dcff853bb7e6ee2c06fc441b169f76e1ee527faf808e81"
    "en-GB"
  end
  language "en", default: true do
    sha256 "7aadc05b215a60642062d40359d2fc7d44d02308eca4603729728fa5b72b57a8"
    "en-US"
  end
  language "es" do
    sha256 "52ad814f73841058265890e981f7cfd4201bb7d0dbd934fb373a50b55d9cef84"
    "es-ES"
  end
  language "fr" do
    sha256 "55298b6fa4effc7b2e6f68fbcc5939e6bab43a32811b88f050a155e19318a29b"
    "fr"
  end
  language "it" do
    sha256 "a66e7a955f3be3e350c94bde5bb3a8578427eee7018237e8b74c7f632b424460"
    "it"
  end
  language "ja" do
    sha256 "e2b046a5a80621eaf59977022c30c1c1686c76b613c0ed5a9423e3648fe30176"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "e513a60ddd2d46898f5a69a62ea7b9ed1d3c821f1a5b0dd82bcf264494b2296e"
    "ko"
  end
  language "nl" do
    sha256 "b0f229cf8df4363432f78d54ba6e060aed8d42bd248a5884312a8b00b88c6dae"
    "nl"
  end
  language "pt-BR" do
    sha256 "5cafe85453097e7183d8ba901d45c5a54e0f3086c4b22759468811dde95d9303"
    "pt-BR"
  end
  language "ru" do
    sha256 "6253b66a7043a4267c6fa6644f9a88f02736ae46469910413237ca080c09639d"
    "ru"
  end
  language "uk" do
    sha256 "1f73dd7826c49a9df0ee8a6aafecddc15fff75d6ed5938a2422d36115b7c3d1b"
    "uk"
  end
  language "zh-TW" do
    sha256 "6f10572329694eea6056a866562af1d11b699615ad6f58c1a1559e34f4075273"
    "zh-TW"
  end
  language "zh" do
    sha256 "09e9372825457a41b33cb3b531e1ddb72dec67db2de89f66810ebfd45d8acc9b"
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
