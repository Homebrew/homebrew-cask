cask "firefox@nightly" do
  version "153.0a1,2026-06-12-21-16-20"

  language "ca" do
    sha256 "b93db17a9c330bfe5513b6189171c31a8bd2787aabcb22a9e2babf966f6a61a1"
    "ca"
  end
  language "cs" do
    sha256 "db08b062a79385b0503ea81d9eae0e65671087a00417a67306cd79d2cdbf7373"
    "cs"
  end
  language "de" do
    sha256 "b5c1bba9c75b16670aad236f8b7d8d4043f09c7a83ab88b247d26276f1b8b852"
    "de"
  end
  language "en-CA" do
    sha256 "128205b1f8834d72dd79cc4f85de8089a9b4fb271ac1c5559c4cba85909ef973"
    "en-CA"
  end
  language "en-GB" do
    sha256 "8518767245f3862b16932f0612dc67ce364b2ce544e1e43044c736b0a0c73dd0"
    "en-GB"
  end
  language "en", default: true do
    sha256 "8cbc132ce2a6b31f8a62db57633dee2bf61c0d41b9ab8e4ef556a41ce8951c56"
    "en-US"
  end
  language "es" do
    sha256 "5da746f49c8921c22c59b84ec8f63aabd14c07e9ad7af5ce369af2eddf4f7e27"
    "es-ES"
  end
  language "fr" do
    sha256 "edbca4957cce91c4d475095ac195d72c4acbfdac48300cb310d5d1a2f4c19bef"
    "fr"
  end
  language "it" do
    sha256 "6359c1c9e976818c992c258b00ed53b57ece48e06944ef3e27ac0f455f518f49"
    "it"
  end
  language "ja" do
    sha256 "3578fb67dbeb1645827db1b02f9ae8275dd2d72ec48a9c026ce168ea29e9689e"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "88e9b3fc9b49c48c449231657de98c3b407ce8c8eb44ffa097e03073bc4c8e60"
    "ko"
  end
  language "nl" do
    sha256 "7db3929110c8674994cdb2dc6c03c788f389f3239722eb46c9da94761f59564f"
    "nl"
  end
  language "pt-BR" do
    sha256 "dc4a4bee20b3d5f368b44e93897b8dac4aef6e0bacc0bc97ccfffb0c25fd1c1d"
    "pt-BR"
  end
  language "ru" do
    sha256 "747a081e764bd65d323c18c063547d61c5159382878a91ffb3d6f9abc89385a9"
    "ru"
  end
  language "uk" do
    sha256 "79f0ad03d7c1b2a0b871972ddbfcbebe127892dedfc026bbe2c531ce6f671ac5"
    "uk"
  end
  language "zh-TW" do
    sha256 "8d12b7e53d00b535539d03743c7c293e1d7f1f819e01872215e5f2bb01fb7409"
    "zh-TW"
  end
  language "zh" do
    sha256 "534827651e5a5483f5f43771b1735147ba04d9fddc5f2ff0f67eb71e00574df6"
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
