cask "firefox@beta" do
  version "136.0b3"

  language "cs" do
    sha256 "dfc82aac839462f0eb4d903e7b4e13f65bd4489e9204e6b66e7fad8a01195720"
    "cs"
  end
  language "de" do
    sha256 "597c561ea706abdb48dd307869f2d1da9590ba604059c883ed7b4f03f692dbf3"
    "de"
  end
  language "en-CA" do
    sha256 "37e5e75d70a606536efe487fe667b6dd06b46842d66449f4adeb91ff8f4e50ce"
    "en-CA"
  end
  language "en-GB" do
    sha256 "aa1f5f193e68327696232784c193d9acf98c44e7b25a5448c021537c70a01c44"
    "en-GB"
  end
  language "en", default: true do
    sha256 "b74e18c0183a0d8c8c71fb3a6019ee767cf13731e83ef5a2f8c1e280947abc54"
    "en-US"
  end
  language "es-AR" do
    sha256 "1b1b665124f5f48e4b016230cea81365e39682dbca48bcb3bef14c51cd5c6173"
    "es-AR"
  end
  language "es-CL" do
    sha256 "1ede5f9971423cd35f29101973afba882704fad1ceebac896e913bbc73d32435"
    "es-CL"
  end
  language "es-ES" do
    sha256 "35d857837db82380eb35beef467d08518b17136f7e995ba9feb39b985b97e366"
    "es-ES"
  end
  language "fi" do
    sha256 "3b01134ea77502b05b9f4813ec29f4e1c6fefdeff3b890c72b0aa9962908ee73"
    "fi"
  end
  language "fr" do
    sha256 "0506692fa830f13a8f77914ba38698c3b939718b68ba2422d484b1671ed84c62"
    "fr"
  end
  language "gl" do
    sha256 "569df315ac91e0a4b8be78b55e59480e9b881f679404a8614595e02cce9589f6"
    "gl"
  end
  language "in" do
    sha256 "7cd565c830c96d280ded4cde87298019c47130f994494e1ef664633d3253e3b8"
    "hi-IN"
  end
  language "it" do
    sha256 "382dd386ea8f7f539da1f10fae6545b78ffb1de69cee6695d03fa0d3c1d66587"
    "it"
  end
  language "ja" do
    sha256 "29938581caa3a253f352f61f286d7412fee060e60f874ac36d2d3d3509d9d3b7"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "c2a702fd69cdc70acaed7704aad106e7df1aa500d3bb6ab977e279377df2d7a3"
    "nl"
  end
  language "pl" do
    sha256 "56d472ec6c3bef36ce02e13e321ca990b909d575abc9be88073e1810fff21758"
    "pl"
  end
  language "pt-BR" do
    sha256 "dc1ca4490b0ba1883c7a75c0471a65eb6bf3b8362377416e3de4ad3be462d834"
    "pt-BR"
  end
  language "pt" do
    sha256 "3c9c3baac8509a1bc9efc56611f03c85271fcd52e05baed5f3738b54e67e235c"
    "pt-PT"
  end
  language "ru" do
    sha256 "10d30fb9b30f1c6ec07f62c7eece29dcdda544ff17dca650662f8f8bdcfcd55f"
    "ru"
  end
  language "uk" do
    sha256 "c0ebf64516145da8f4db4abca94147402a9c9bb669eeed4134baa158e8546b86"
    "uk"
  end
  language "zh-TW" do
    sha256 "56b2245318adc1b1116598f95d081f311ce7bef5f66fb31df755ce2d9d0a65da"
    "zh-TW"
  end
  language "zh" do
    sha256 "d43aef994d7b52e1326674f6b6a5997716eab0fd766e1589afd3ecea09e88b0d"
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
  depends_on macos: ">= :catalina"

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
