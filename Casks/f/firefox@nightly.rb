cask "firefox@nightly" do
  version "148.0a1,2025-12-21-20-50-59"

  language "ca" do
    sha256 "13600e7390b76f9af0e36af23b5560b6202a2c2970a0b58f998f8762dd4328a2"
    "ca"
  end
  language "cs" do
    sha256 "d377650fca084c1c6b6d200d3db1b0d271372855601c3191815b8bed008e6194"
    "cs"
  end
  language "de" do
    sha256 "21a803bda6d6c2cad27be4d80dd176fcf9ac6e3868d47a8ae0120e9875ecf68f"
    "de"
  end
  language "en-CA" do
    sha256 "7707193341595ef28d1be6122ce4fef47a9bb32048dd9ec4700e39cf8c8c5372"
    "en-CA"
  end
  language "en-GB" do
    sha256 "40d0bbc1a4b373023c488502fafe45ec7063ff7eabea6a9503238e5212744b66"
    "en-GB"
  end
  language "en", default: true do
    sha256 "2ad61249514742e9d849fe35e4d3e51377a9267e9a0750c3284ea3bc01e66278"
    "en-US"
  end
  language "es" do
    sha256 "ebca8e994ec82c93f266c0bc8cde562df814e8d69e61dddb51456749c4bd1bea"
    "es-ES"
  end
  language "fr" do
    sha256 "e688b570bd01cb8e8fae90efb13e201381f0b9fa0317dfbba8fcccce1d855a6c"
    "fr"
  end
  language "it" do
    sha256 "6ce8f931d4913de8ad5d8bd5539035f9696692a57c64ef0d4238e3c252c85ea4"
    "it"
  end
  language "ja" do
    sha256 "fe7fa031c1440acca97eb52c394568212ff4f9da85725a5c819a9c01c8d97657"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "141f0811874c8da5a0a7e665f9117f53c1fea492def0bc958bbf86093764612e"
    "ko"
  end
  language "nl" do
    sha256 "aa244dd24d18afc7cac81157a2affa2689d02d1ee3d4bf9f179e539c88931cef"
    "nl"
  end
  language "pt-BR" do
    sha256 "5108fe9bcd5c4f2c81bb653f9adf48a4a79ed20bdc81aaaf700882cf8d81f219"
    "pt-BR"
  end
  language "ru" do
    sha256 "b7a88575141db39973770b62d3394d9bbcac9640560a93e1edc038a51542345d"
    "ru"
  end
  language "uk" do
    sha256 "ed21cfe4332550123938e9f67994bbbbb8d9567ebbdbea3fb109fc2c6dc240c1"
    "uk"
  end
  language "zh-TW" do
    sha256 "91f7881d24e4832c93c2673a92c9296d350f43c1a6814b77e1d74136372ab758"
    "zh-TW"
  end
  language "zh" do
    sha256 "30893291cc072609a4388ed6425c9aafe9456032c03290091b8ac2714eb0f485"
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
