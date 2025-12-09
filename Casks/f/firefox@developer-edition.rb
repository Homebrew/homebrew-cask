cask "firefox@developer-edition" do
  version "147.0b1"

  language "ca" do
    sha256 "b1bd59ad27a2d1d22c93200b13866efc82eff47527675e0dcef75492b7d07d37"
    "ca"
  end
  language "cs" do
    sha256 "268e0ca57aaa17a3f2228fb039e32e678c73af7ea805d604e67cf8a0dbf1705d"
    "cs"
  end
  language "de" do
    sha256 "4c8dbbac76bbd2c439b67f035f53b2798ffcf40090b90e4382e3c4d6ab85ceee"
    "de"
  end
  language "en-CA" do
    sha256 "152827d6c6635a521ae5cd95db9422257f18cc38044966a45461df1ab7232fac"
    "en-CA"
  end
  language "en-GB" do
    sha256 "f495ce8ebda30609f9a592fbe300e93e8e95c381aa109ede6a24212bbd3ec28a"
    "en-GB"
  end
  language "en", default: true do
    sha256 "158b3c3f4f1877c3441c69387c3bbd826f4401eb43822a60707846150cf353a9"
    "en-US"
  end
  language "es" do
    sha256 "02d30bc577bf2ad1ca09b2f6a2bb0c48c2cc093a33a291e5a1e5f57cae219f8a"
    "es-ES"
  end
  language "fr" do
    sha256 "2695f4ce7ecb36dbcd43d728c5f92b9a452eaa11efc5145b7266cc4ff686eb98"
    "fr"
  end
  language "it" do
    sha256 "76a87571941668d84225c5a9b23877750aa554d3b5dee29f76e1773667cceff1"
    "it"
  end
  language "ja" do
    sha256 "5ff0a3aecc5a81b54734f39ebfa54da8af7fc295ac4eb9770e13922193b032d9"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "cf6826d73c8c3429de449eed8b3fd48c7b09b640db8c0972546ea6444623dc3c"
    "ko"
  end
  language "nl" do
    sha256 "1f6402e0944d9defc47ed62098da181aedaa255c9776c5f4a4c030538730e8ff"
    "nl"
  end
  language "pt-BR" do
    sha256 "1876e1e20860850a2308697aba0b3237ece02046f7e7d9edb4465cd6371963ff"
    "pt-BR"
  end
  language "ru" do
    sha256 "6d5506350fe0f89c2deb0766c7eefda46baff2bff240533ffd9319dba928381d"
    "ru"
  end
  language "uk" do
    sha256 "f249c67b94d2a24516c1c6f981bb025516988b449cd1c028e1dfa82ba6bd5e49"
    "uk"
  end
  language "zh-TW" do
    sha256 "cb1ad072efb5c618056e3ae7a39bacfcd8c231d4b65c93df245a2ab8f64e9b7a"
    "zh-TW"
  end
  language "zh" do
    sha256 "29aa69eeb2e57582be9e510e42ad79c6332f53481651ba222b4da02ae13f4a4c"
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
