cask "firefox@nightly" do
  version "163.0a1,2026-11-21-09-35-49"

  language "ca" do
    sha256 "efb038e04eb481af8851e360dbb59f1ffb094ff2d5ba928a65911ad9d17a801a"
    "ca"
  end
  language "cs" do
    sha256 "75be839bc7d1d77a758eaa07b0558f33c271da5afbfcd9d5fe2a6edb653b4984"
    "cs"
  end
  language "de" do
    sha256 "c3508ffc36f5e5a6b582fd69ef401ee7bd6cbddd28c1f879a1551f101350f5fc"
    "de"
  end
  language "en-CA" do
    sha256 "099ebea5dc2a45f68f6c6d792e7bd402a37399dddd81d8e19f9814b68d248f51"
    "en-CA"
  end
  language "en-GB" do
    sha256 "57e541e8e69000bcfbb072d17d601797e4a6faebe66864b20b8adf210cd1d86e"
    "en-GB"
  end
  language "en", default: true do
    sha256 "2d960e8d1ac1776cdd5571844358a26b44442374e11793992fc731334c2d8a50"
    "en-US"
  end
  language "es" do
    sha256 "c368e45550680b136b7bf0554cc07f5e5af9e4a61b1b423b4d4815b9444a6db2"
    "es-ES"
  end
  language "fr" do
    sha256 "26f3cbd3d4970774cfd59ef8f83c8cfaebad26a74c6a6e5ec0ead725f5437a66"
    "fr"
  end
  language "it" do
    sha256 "489477410bd87f42465d20cf0e652d39c9278863a5d137533ab9daf72dff17f9"
    "it"
  end
  language "ja" do
    sha256 "6d012ab0ec6f9fab855a3e2c4a9d77c42e1a5cbf26ad257f2421ea29973c45c7"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "c5df7d97a0ed25fb776c7160e61158ae9bda316327fc1a7201d335a73ea71467"
    "ko"
  end
  language "nl" do
    sha256 "63c369f65c96f2870ca7f8130c5278d772cec152890eccc5c9526929e9d9fdc9"
    "nl"
  end
  language "pt-BR" do
    sha256 "c26a4ec82ea90232799d787f70e48c6bb4d913f864b273a197690e792ca4b8d5"
    "pt-BR"
  end
  language "ru" do
    sha256 "2051cda7754f5c571283c56c043d23c3c64b75a1746f2b84c90e6498ee7af23e"
    "ru"
  end
  language "uk" do
    sha256 "22a68a4d4e0d5ec7060118b98b6533d0011e0beb0dff252021f055a743edc1e4"
    "uk"
  end
  language "zh-TW" do
    sha256 "1790d0f0f17e4858b14eddcd4fac7c59fc3f77c2e789552feb86dd36d602e860"
    "zh-TW"
  end
  language "zh" do
    sha256 "19679d1438f8fd4ef33437d2646c956fb03d31d99b9ffcaf7622ac7b671be9e6"
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
