cask "firefox@beta" do
  version "147.0b8"

  language "cs" do
    sha256 "a54a0b20ec911fb50a5cf6ffe018ccdb11a3b9c7ee5649cc10559866aec25f12"
    "cs"
  end
  language "de" do
    sha256 "01ed7a6a7059d9110bd857de8148a25d54f5c065a5d744f477478d5bb7cfc7fe"
    "de"
  end
  language "en-CA" do
    sha256 "a8c7b8a4176554eda839c78688733c78c059215a53774df6fa739458a4b271d2"
    "en-CA"
  end
  language "en-GB" do
    sha256 "3d042cd177d42300691529e32b31d31adcf72fb6e46b251b54b74e1513e9155a"
    "en-GB"
  end
  language "en", default: true do
    sha256 "4e9fcb29079a1f273aa9fe030d00eaedd2fad40f305ca01fa13f5dd37359b358"
    "en-US"
  end
  language "es-AR" do
    sha256 "3ccf6c560a97b3cde2610c31991c36c48591dbe3ef7ffb9592ee1a1fe7e7d297"
    "es-AR"
  end
  language "es-CL" do
    sha256 "3abad49dec3f88b33bc1d7c69312fafc94c057b11dd7dc86e37cdec5592b8979"
    "es-CL"
  end
  language "es-ES" do
    sha256 "6177156255295d6f3edc3ef90a4ca0453ad8cff368305ffcc5c77d2dc7e8dd07"
    "es-ES"
  end
  language "fi" do
    sha256 "70e2a773328d3fe72174a3949bac6324a10d141f5d1471570c564bb25355e71e"
    "fi"
  end
  language "fr" do
    sha256 "89d179a1438c159e21d88a50911ad02fc7470e01e930551231dfd8dff5384f01"
    "fr"
  end
  language "gl" do
    sha256 "37f75cde35aa380d78bb60a42367e1c4cb3d6b79d1dce469468ecd83d1acb136"
    "gl"
  end
  language "in" do
    sha256 "b4556d26a6db88bf65a0ce64a11e5326ee29e3e6d24f78a9a4f9ab3b946d741a"
    "hi-IN"
  end
  language "it" do
    sha256 "1c584bdb3e066b93f2b756c8fb7c5a7bbba77fc5b3c46496e94a29d5c00cf007"
    "it"
  end
  language "ja" do
    sha256 "dc49715558a1a737b7568ea376675d6733fabec6a34cfc677691cdc111300332"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "11c118976ddc0819afe031175f8865835660c6f6fbd219a8f77dd6e097eb0ad4"
    "nl"
  end
  language "pl" do
    sha256 "88d8cf7a418e80ea3083c69c6ab2e4d7c1f2541c0826c5447ade98ff45d3db5e"
    "pl"
  end
  language "pt-BR" do
    sha256 "f4dbd32bee47c57ed971bde0728e30403562ba3f8e6dd4ee139c32c7fa6ffbbb"
    "pt-BR"
  end
  language "pt" do
    sha256 "ed6a06d8502852a04cdf00e7958a414c839053e594075c229e122a1c8efbdc2a"
    "pt-PT"
  end
  language "ru" do
    sha256 "b0f279359a530499a69cefd3631ba7cc7331ac90d330eca23708add6303ca982"
    "ru"
  end
  language "uk" do
    sha256 "ed8a10a36fe89638155069128c6d17afea6652a97066df47aaad75939a2212d8"
    "uk"
  end
  language "zh-TW" do
    sha256 "13e9c2dfdb3c335be5d0744cc11278dd67e92424b1ece40db41a91528003c419"
    "zh-TW"
  end
  language "zh" do
    sha256 "68efeb4413ed5767e152167ae0d1b47b8356a1a8fe6032a6364b9d2b1a99220a"
    "zh-CN"
  end

  url "https://download-installer.cdn.mozilla.net/pub/firefox/releases/#{version}/mac/#{language}/Firefox%20#{version}.dmg",
      verified: "download-installer.cdn.mozilla.net/pub/firefox/releases/"
  name "Mozilla Firefox Beta"
  desc "Web browser"
  homepage "https://www.mozilla.org/firefox/channel/desktop/#beta"

  livecheck do
    url "https://product-details.mozilla.org/1.0/firefox_versions.json"
    strategy :json do |json|
      json["LATEST_FIREFOX_RELEASED_DEVEL_VERSION"]
    end
  end

  auto_updates true
  conflicts_with cask: [
    "firefox",
    "firefox@cn",
    "firefox@esr",
  ]

  app "Firefox.app"

  zap trash: [
        "/Library/Logs/DiagnosticReports/firefox_*",
        "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.firefox.sfl*",
        "~/Library/Application Support/CrashReporter/firefox_*",
        "~/Library/Application Support/Firefox",
        "~/Library/Caches/Firefox",
        "~/Library/Caches/Mozilla/updates/Applications/Firefox",
        "~/Library/Caches/org.mozilla.crashreporter",
        "~/Library/Caches/org.mozilla.firefox",
        "~/Library/Preferences/org.mozilla.crashreporter.plist",
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
