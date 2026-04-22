cask "firefox@nightly" do
  version "152.0a1,2026-04-22-04-21-07"

  language "ca" do
    sha256 "36d0c9b3c9b506736fb3d5e3a61339053e72ef4408c71fcefd9163f460d66cc9"
    "ca"
  end
  language "cs" do
    sha256 "bca55da3c44a95e326892a43ae170d87f25af37bb456f95808633ab558842348"
    "cs"
  end
  language "de" do
    sha256 "d8835508debdee27416ae98447b17a15a6d43878b66a2c7f17358e4edcf9b6f5"
    "de"
  end
  language "en-CA" do
    sha256 "c07f7acf4884c81be3d652743a8882d59010d38e1ef4785cb10d713381791605"
    "en-CA"
  end
  language "en-GB" do
    sha256 "275fa0a8e506a494e38fd14bf4ea33bb542931f3a11b503642db3792d2be1dfa"
    "en-GB"
  end
  language "en", default: true do
    sha256 "601251fa9ca040fb024b1d705cfd0da2d953d386cd109a28cc65130ff322539b"
    "en-US"
  end
  language "es" do
    sha256 "206d96619970c92851d0f03698449ce8c89cba7dac77641f303f064c954db1f0"
    "es-ES"
  end
  language "fr" do
    sha256 "493347aea8542c5a67a65628f81faeec84a6c0503247d56060f0125585e8b28f"
    "fr"
  end
  language "it" do
    sha256 "96890cc56a7fa343e31e824af049bdcfe02372e452d1cdfc4f9642c893a46857"
    "it"
  end
  language "ja" do
    sha256 "acf755c194593dc3a89544235014b6d746e1a68db681efb973228a7f152ea5e3"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "47bc255a13f95da7e0dfc73651ef50158cdcf4cbe8d23ee871eea8697ef2244f"
    "ko"
  end
  language "nl" do
    sha256 "e390a2815e7050d669589b9d11ebf5ad983f0d51fd6c932f9fed7cd41ab8dc70"
    "nl"
  end
  language "pt-BR" do
    sha256 "204f1332b370a6547213f815742aff52aea46ef9abf0fdfeb0879fa74639c908"
    "pt-BR"
  end
  language "ru" do
    sha256 "96a34275755eeda5793c9273adf543428ce5fd79ed3211d3a313b883cccb0076"
    "ru"
  end
  language "uk" do
    sha256 "371dee7f1d3b198bcf9bc5e61ac3f5746888f81a214aefd2193bca073634849f"
    "uk"
  end
  language "zh-TW" do
    sha256 "d347a49efbaf3a525753c215994a78e8b6cc48e8882c49d2d813385f22001965"
    "zh-TW"
  end
  language "zh" do
    sha256 "b42815fdc3e06715c25375ed51c01f302100ca3dba792125048350bc708f8054"
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
