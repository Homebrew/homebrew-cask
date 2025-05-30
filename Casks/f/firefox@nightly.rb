cask "firefox@nightly" do
  version "141.0a1,2025-05-29-21-07-02"

  language "ca" do
    sha256 "c7a375e5d191852b67855f623313b984cbb25193e75160a5ad7241dc6dad31a2"
    "ca"
  end
  language "cs" do
    sha256 "a16bd2269e7777f12999bcc89317fd631831fdc6434251f14fa39f7b087cc234"
    "cs"
  end
  language "de" do
    sha256 "1f94293e6dfe86b06f7295950a17437e862f029221ac985a8a0b63e5540c5313"
    "de"
  end
  language "en-CA" do
    sha256 "a2545d54c050ce49145ad98049304065b6fa9fb2dfedfd0a0001bd61bed7f1d6"
    "en-CA"
  end
  language "en-GB" do
    sha256 "7707f9c2ad23d44cf14870b884ae4f677933098e3c9b522d308d52fc55c3989c"
    "en-GB"
  end
  language "en", default: true do
    sha256 "885388ab286492e6859115b7050a96541afb82b9cd3e40ce64d26db9635bf9fd"
    "en-US"
  end
  language "es" do
    sha256 "d44e01c85cb5a3ff35bb7ef37f5eb3c31c19dcee92738932ba134fab9c54b429"
    "es-ES"
  end
  language "fr" do
    sha256 "7eaccff8003b72a6ab777cee0f6cd51836d70a39320acabfd945e54a3c784ec2"
    "fr"
  end
  language "it" do
    sha256 "4d8ded911f8d6560b660228c3c0de0528c3e6b939184beda156f0add99cf0624"
    "it"
  end
  language "ja" do
    sha256 "9a5f9d04688ef066ba05d11863e6c669c5addb76a1c50f7250731bd0df213395"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "cbd94f4eb334c8663c94a0b44b3e37008ecbac4ca88cdac36ac6dd952ffaaed4"
    "ko"
  end
  language "nl" do
    sha256 "6909b59bd257805776cc49e5f6647ea6edb1b7298551cd699e4e262e40b3c9b8"
    "nl"
  end
  language "pt-BR" do
    sha256 "a3e0ae6dd5d841d57b7c4f984182ac94fda1c8ab4d3791c60dea5b16540aeacc"
    "pt-BR"
  end
  language "ru" do
    sha256 "c9b5463bcd733d171e64dcc502951937a22d60a2014de7a4e56162a765a51fec"
    "ru"
  end
  language "uk" do
    sha256 "a9fd22cc1072f1de18b42da2b258deb0b1af5c28ca8c92efc54ac3d9681fc210"
    "uk"
  end
  language "zh-TW" do
    sha256 "cb72c13d250b3602aeabf7c946dacde1cfed9a9289ac7e86458e078ef5c41c3e"
    "zh-TW"
  end
  language "zh" do
    sha256 "fcf153be3a7d90ec201aa3dad5af5218455a4436700810a2caba65efe319a809"
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
