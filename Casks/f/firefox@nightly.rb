cask "firefox@nightly" do
  version "146.0a1,2025-10-14-21-33-42"

  language "ca" do
    sha256 "34404419fd0f37152dbbdb59bc645a2be7ecb506a21df14042fd58101e2391b8"
    "ca"
  end
  language "cs" do
    sha256 "1f6f6dc8a6f0b854e75defda0b48f89575081de94b94efb5fc6e25230110e4b1"
    "cs"
  end
  language "de" do
    sha256 "2d0822584a0c8574290dbc5eab5aed287ae3dab5413361f70df445c4535eff39"
    "de"
  end
  language "en-CA" do
    sha256 "d562a345dda77df484131d7d05a9b2e2d3b2d2b95ce604c3f8746184446e144b"
    "en-CA"
  end
  language "en-GB" do
    sha256 "e6ed9908e2bae112999207fcc8db8681d5cf51d649c76c0ca872fb6a64b94f6b"
    "en-GB"
  end
  language "en", default: true do
    sha256 "136116ffeb82721d15a92f63dd79dd8e09067b68f6595f326d149d2d9ac39e53"
    "en-US"
  end
  language "es" do
    sha256 "284d84fb2065fd37303cbd1869f0452c8ee192943230160bca6852c583d98750"
    "es-ES"
  end
  language "fr" do
    sha256 "a650fae8b485a4ad298745a5def8c43e81aaa6b0677ea7510f9db36ef97badce"
    "fr"
  end
  language "it" do
    sha256 "6b8aecc90dd8d9ee35fe37f979f7b52b586de0841fa96e53e3904f97c1258852"
    "it"
  end
  language "ja" do
    sha256 "74264a861ddd1b371b8246a34dafd0cb26733395a89c45c0ee25a24a5c0180b7"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "28feab9c27e2ad92474ffb146c431b7f128da35ffa08b262779b14673aabd834"
    "ko"
  end
  language "nl" do
    sha256 "dc2ce6d34bea723a82ff8617b0514158b0f082e6e480c596377ca7ab84d56536"
    "nl"
  end
  language "pt-BR" do
    sha256 "5745e4d33a8f1658d4684ecb44a847152557affa36247b5ef87fa40d905f9e8a"
    "pt-BR"
  end
  language "ru" do
    sha256 "6b621daaf42256d32b5a4923360f0fea19ffe19363d7e84a8b3b28f4603573c8"
    "ru"
  end
  language "uk" do
    sha256 "a59701c9b73fcc5d6f24753c08e7e6d17c846a7473b593f8dcdeba159731edfe"
    "uk"
  end
  language "zh-TW" do
    sha256 "6f0e21a4c37fd3a60beca628128397325dbe568aced7eabf68ca3368ad3a62ff"
    "zh-TW"
  end
  language "zh" do
    sha256 "46ad43cdce59119cdaa0c798c9c7612545f6dcf1048f61d57b305909dc1b1017"
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
