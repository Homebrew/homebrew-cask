cask "firefox@nightly" do
  version "157.0a1,2026-09-03-09-07-39"

  language "ca" do
    sha256 "4d411106b94061222274ef527c5e5607e1ace9217b1904932dc9d8aacbf9d930"
    "ca"
  end
  language "cs" do
    sha256 "0f9e85a324234bea94ac6cc8a213cbeea7bb4dd95a215b8acc1e4e98bdd398ff"
    "cs"
  end
  language "de" do
    sha256 "27bca461f1865774c5fbb87fb5f6625c6e68941bbde914206f701d24ce2b2ff4"
    "de"
  end
  language "en-CA" do
    sha256 "384b6b276239ca528d818c6249f7e43d672942f2ecc61da70adce25239a9453d"
    "en-CA"
  end
  language "en-GB" do
    sha256 "16b85cff4961a914f1ef30c774ca53236bca98716984e64727a4e432e3c05ec8"
    "en-GB"
  end
  language "en", default: true do
    sha256 "f693ee5b548ab74b4ee5ed6f5093ea559f45618d32c3b780276c5217f402fcba"
    "en-US"
  end
  language "es" do
    sha256 "1a34b62a0567cfa02a1e6f437f60ee74a5485187297c235056900a261d18e05a"
    "es-ES"
  end
  language "fr" do
    sha256 "60288cb88f2ce7a6094f34164b8a6ee63ad14910edc44f38d7f429d93a3f6a90"
    "fr"
  end
  language "it" do
    sha256 "06fa3a89b39db1960ee4436eb48eddef9f01ec3ddbaebbe9ff9f3cb201df7b56"
    "it"
  end
  language "ja" do
    sha256 "c196e65ffda5fd84bfc00944ec851f7c9949ef55446e35f77d3a1c224072d508"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "135e0e28eea05f49512379d0dd3b4892bd42fac4a604010fa2f9ab6cb9c4339f"
    "ko"
  end
  language "nl" do
    sha256 "6bab267bbd9e1cf6baa1bd5db70851e93f490c2ab199383d4a4a5401f4354073"
    "nl"
  end
  language "pt-BR" do
    sha256 "20c8146cee83fcbb1d090aed6884e9aad183466bc2606798709b49bcc2cceeab"
    "pt-BR"
  end
  language "ru" do
    sha256 "c807093bb640ff3d3e59403ebea512a8c4dc3f9dd943e3e9b5291e4a7a127335"
    "ru"
  end
  language "uk" do
    sha256 "d02d157bcf9ce8b65853a4d4099e745e3783a5e8df3c79db31064cfad76faad2"
    "uk"
  end
  language "zh-TW" do
    sha256 "c2cebb9fb68acc3046391d5e775ee5e0f8fc10faf4fad52a111138542b8a08fd"
    "zh-TW"
  end
  language "zh" do
    sha256 "afd77a1c2f241bcac81facfcd9a277831f783ea8f4d019da7dbd62e7243c5c7b"
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
