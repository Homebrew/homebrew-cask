cask "firefox@nightly" do
  version "142.0a1,2025-06-23-21-28-38"

  language "ca" do
    sha256 "5cf4c5aa24078c17155ed72e091759b5544628d3b4b5092966d19a45c5214a65"
    "ca"
  end
  language "cs" do
    sha256 "971a5f9a8e331da59fbbff4ebf7d6aaea788f2833b9096897fe5b5da8e6e657f"
    "cs"
  end
  language "de" do
    sha256 "4f990b0fc7f242e593602b5ab62a5c0a87676ebeb2a5f372c58071e2425b0cf6"
    "de"
  end
  language "en-CA" do
    sha256 "b04c6a28d7fb6564a42b17c214b25972ed33bc4eae451812f51e86a381f91cc6"
    "en-CA"
  end
  language "en-GB" do
    sha256 "0273f07a4cc3c763922c3a66611a9c66e370ce3a0642c6c9cbc31af11dc8eefc"
    "en-GB"
  end
  language "en", default: true do
    sha256 "37f9880f4cf5b75120a06b8e0e696e7e7573111151e71801c60163783c3ec3e7"
    "en-US"
  end
  language "es" do
    sha256 "564c6aae2ed23579a0e2da63278d1bdaea6fff1efd11b09cfb43373c882dcd04"
    "es-ES"
  end
  language "fr" do
    sha256 "e957c5969184b675303c9b79bb588301cc22e9b91d01a045a1856b5b4bfeac87"
    "fr"
  end
  language "it" do
    sha256 "67a3fa2b5ad7a0ac2845832a273c06a9367489dd306f9d27226d176d8bb61df3"
    "it"
  end
  language "ja" do
    sha256 "92befc7363a6974a74bc58c6d7c3c36e30209bbd77be88b2a61414baf8905c2e"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "37547a8479be5742f44bab3cb5911602f7e67ee8bb01ef6e86a1875269e4d24c"
    "ko"
  end
  language "nl" do
    sha256 "f4ef9f2bbcab0075c8d42cb5368e51f65f8479f296520452609141d1496e5bad"
    "nl"
  end
  language "pt-BR" do
    sha256 "828ba1b6b31c758fef11a69bf7721fad5d8db8543a2c47145e0528ba0e10d540"
    "pt-BR"
  end
  language "ru" do
    sha256 "0f344c899c06efef363abbcb1451cd22da477b5aeab164534dfb8bbdc5a5372c"
    "ru"
  end
  language "uk" do
    sha256 "08258930fa7984da6da1653c630ca5cf65041e3adf327f66ae1475d60963e70e"
    "uk"
  end
  language "zh-TW" do
    sha256 "af9eda85fddaa43d5e0dd22d33b00ee77277f384a5d0dee4c730bfc692510e40"
    "zh-TW"
  end
  language "zh" do
    sha256 "dde1b3a991fd27aef65abbb058647969789eb239177921a58496959facda6a13"
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
