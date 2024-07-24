cask "firefox@developer-edition" do
  version "129.0b8"

  language "ca" do
    sha256 "47b419a8543900093aeeaf0a3d80e60fe6a44746b59e7ecd725c4850e7ebc5bc"
    "ca"
  end
  language "cs" do
    sha256 "e236c65b3ddc022c06034a1a5389bba98d62060c4be7bc810a52cccfd1e50ec9"
    "cs"
  end
  language "de" do
    sha256 "1a2e60310119a9f180b332ea299ab4aae050a17824eeb2863890634bd283317a"
    "de"
  end
  language "en-CA" do
    sha256 "890ac7215ac1db06d057aa17fccbb9fdbcf97ac8545a4fc49cb1610dad6c697d"
    "en-CA"
  end
  language "en-GB" do
    sha256 "dfdb00bd7889a5ae53e7075c0c749dd0ba643cb2f942cb6b5ac7b6cc3306143d"
    "en-GB"
  end
  language "en", default: true do
    sha256 "d99a9381f0862c9a15b9e05ebf6b5684f9622444413cca23ab906394dcb421ed"
    "en-US"
  end
  language "es" do
    sha256 "6aa5c6ab4df98372e3987102f87949a89285e9ee1021c4d05b8bd732379946fa"
    "es-ES"
  end
  language "fr" do
    sha256 "69ab5e738a3148a9b855ee5553a9b06112861dbce26c5173da922cb5d5384e97"
    "fr"
  end
  language "it" do
    sha256 "04e6eba471aaf73fbb05b30433fe8c5ba31c9765875430a7a25101e60642d77a"
    "it"
  end
  language "nl" do
    sha256 "3c9589d1163d51f4ce743b571bdb16ec7f4520d37808bbe949b7fba55b42a915"
    "nl"
  end
  language "ja" do
    sha256 "90371e79ec8138148a7fd722c6fe5b18e4a005efe298792e40b49f1b8de03abd"
    "ja-JP-mac"
  end
  language "pt-BR" do
    sha256 "b2372db20a9257489d3f25713dbaeb4d1f4baa4a5ff7733e582c7791c4cac018"
    "pt-BR"
  end
  language "ko" do
    sha256 "55eb92c7915b21dc19eb26f1bbda4097efa589b6884cf7be3e5d7a6b2057f91a"
    "ko"
  end
  language "ru" do
    sha256 "91114a194c6da4ed8798a4a331c3bb9bf8bf126f351b1ac94a22ac24333cbbba"
    "ru"
  end
  language "uk" do
    sha256 "52f1d62095f60f7e6fd80d152b39b1b1f6295bd6e2f09aa523e3e8dc3c891356"
    "uk"
  end
  language "zh-TW" do
    sha256 "79d5d89ec84b7dc0a320c8a597103a344554e7f54fb05ec1e98eb6610e4bd980"
    "zh-TW"
  end
  language "zh" do
    sha256 "5c2e29e5c4a260ff64430ce398d5e00b447e347fe044273a7467873e78050f04"
    "zh-CN"
  end

  url "https://download-installer.cdn.mozilla.net/pub/devedition/releases/#{version}/mac/#{language}/Firefox%20#{version}.dmg",
      verified: "download-installer.cdn.mozilla.net/pub/devedition/releases/"
  name "Mozilla Firefox Developer Edition"
  desc "Web browser"
  homepage "https://www.mozilla.org/firefox/developer/"

  livecheck do
    url "https://product-details.mozilla.org/1.0/firefox_versions.json"
    strategy :json do |json|
      json["FIREFOX_DEVEDITION"]
    end
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Firefox Developer Edition.app"

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
