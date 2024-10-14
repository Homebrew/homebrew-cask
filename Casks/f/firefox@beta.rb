cask "firefox@beta" do
  version "132.0b7"

  language "cs" do
    sha256 "a439e636773f1a854c17f7a7fd763575a83087bf3d3c892304a0ac31bdde79f3"
    "cs"
  end
  language "de" do
    sha256 "31c2ca2f2761970efb1cac05aa10867a16d29bae6abaa09db007d1c40e72093f"
    "de"
  end
  language "en-CA" do
    sha256 "b258c72714c7e3e50d958d41f03f7dabba142223e3f3e7c8a48a9b3c1a13c49d"
    "en-CA"
  end
  language "en-GB" do
    sha256 "8bc8c58f9c5367cc86bd18c61bd7a85bdaa7dc22de80e21262d9b6fd64d08c51"
    "en-GB"
  end
  language "en", default: true do
    sha256 "63eebe9cb7029a43e37e4d7222bd81e0cfa7d95631096ffd497c8523520fd3fc"
    "en-US"
  end
  language "es-AR" do
    sha256 "bdc6d4b584268c94838b32bab2ec6aad588ba5df570d3b81da71f6a9acc0eb27"
    "es-AR"
  end
  language "es-CL" do
    sha256 "f843ed8996c7d73490460c33b3c901b8e7ee2258737cb7d81e6a0d19d2647f58"
    "es-CL"
  end
  language "es-ES" do
    sha256 "efa6c423e004af02637db07174463e49683da785ea18c5167b4fd533ac267404"
    "es-ES"
  end
  language "fi" do
    sha256 "e4f98fe365b7ad0c5e8d5b4f49b8878cd63a2deb7173afa5c186048a657a85dd"
    "fi"
  end
  language "fr" do
    sha256 "c17cd37c214ce872ee6fa5a5bd876985bbe69204638c7201ffff57532c638253"
    "fr"
  end
  language "gl" do
    sha256 "935728e650a1dd407205071a02470a365357ad25744915140c4ce097703989ab"
    "gl"
  end
  language "in" do
    sha256 "1cf4b2d530110ed402367567fb312407b6a622ac61e8e65d3dfe2b35c3dbdbcf"
    "hi-IN"
  end
  language "it" do
    sha256 "234b9378cf293c023559114e68f2a72b67e7f991658bd4be7b80b3078e311935"
    "it"
  end
  language "ja" do
    sha256 "995fd54527f0b25a8ac70a47e28c4071c776b5a0cb6adbce7aa223484fcc2eb8"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "ef13def1f23e279210beac2fcfdb1cc6e148c87e7992089844997b78acb44660"
    "nl"
  end
  language "pl" do
    sha256 "5653fe2f5b3d3f2b96d038a706b12dc8940807fb70700cf59ea13e04c9298f0c"
    "pl"
  end
  language "pt-BR" do
    sha256 "5a24e4aebb3a13e23f33a8d59526757d6b679e88c857385fb88860ea13631837"
    "pt-BR"
  end
  language "pt" do
    sha256 "355fcbdf4efd0985c07ba10c1645a95fcb3eb5b7b60458df51bffd157f2aa015"
    "pt-PT"
  end
  language "ru" do
    sha256 "a843ff28d63b68d03a56a905289881c69b19c52dd2fee4a16f99a06b007cccbd"
    "ru"
  end
  language "uk" do
    sha256 "5631db985b8c5bcf9ce3b062b2e24933e9fd2a6b82fc5182d1c058cc7202b19d"
    "uk"
  end
  language "zh-TW" do
    sha256 "e0cbf31d37be838e5b01aa76c9c276fbe259244b991f29eea3603c2b1858f388"
    "zh-TW"
  end
  language "zh" do
    sha256 "d98a475ff60f16eae56d1f081d062c8142c1031ff6d670f55055c7ce1c4f01f2"
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
