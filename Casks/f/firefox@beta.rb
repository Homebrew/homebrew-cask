cask "firefox@beta" do
  version "156.0b4"

  language "cs" do
    sha256 "659f1f60a321cab4f3daab62b4b300a10748ef6962e79270652fa8306b635cab"
    "cs"
  end
  language "de" do
    sha256 "44abe982f347e6db6fb44a38bd38acd3cd46bc5b2f8593762f775ec6659ec3be"
    "de"
  end
  language "en-CA" do
    sha256 "bad38016d58ad774609eb79f193ac29cc5c8a6607b7c2b27944ebf57d3cb6760"
    "en-CA"
  end
  language "en-GB" do
    sha256 "f3cb59a361cd79c3a8c036c52e0815172205f0c18ec2f249d598ca5faab57320"
    "en-GB"
  end
  language "en", default: true do
    sha256 "3305a0283d4c45a541adbdb37655bb7bf73534697171c7960fcc794c1fca4566"
    "en-US"
  end
  language "es-AR" do
    sha256 "548ed3e68a738418868f17548762eb8f8586d3dd5861ccd07533dd0002e118e0"
    "es-AR"
  end
  language "es-CL" do
    sha256 "741f5ea15b98d3d37a4ab2a2138137fd5331009b681bd51d2bfb62a2e4f83d7c"
    "es-CL"
  end
  language "es-ES" do
    sha256 "6ce82608648563872e0ba79134356d9679b4a7a643c8cfebbc0324a7810d045e"
    "es-ES"
  end
  language "fi" do
    sha256 "a237046b2be1df75197239ad8f053b7654a48d9d8717c1edfd50c156098e57ba"
    "fi"
  end
  language "fr" do
    sha256 "5250c284ccfa95ceadc1d36c46b99c907753015edd6e6989874c8671bf3d529f"
    "fr"
  end
  language "gl" do
    sha256 "8cf3173ffa05556aad1a268f1324d94128a41b7503abe29a4a0718e43b6b299e"
    "gl"
  end
  language "in" do
    sha256 "e0382b01c4b929b18398cf1c4da7b7ce6ec30106c87b0e18a56c0d1224a83023"
    "hi-IN"
  end
  language "it" do
    sha256 "92d3e9830287ab72c9fd8d9d3a9eabcae1d5611d77637d7b8e607864569df1b5"
    "it"
  end
  language "ja" do
    sha256 "2881323d50ecfd372f01fb66edd050d2bffa4baf49491fbcae0ba37807017b17"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "fe6ed9d35f802744651332eafd4cd373151c654409e04b59b5f952c34468ddfd"
    "nl"
  end
  language "pl" do
    sha256 "15daeac6f22032d428e8c63f8e652d91f849895a90e5560c5ae76ae4fcfecabe"
    "pl"
  end
  language "pt-BR" do
    sha256 "602bf8bc52f443f4376b4cd9f89b1372df819f5697029b9c26c6cd3157798ba9"
    "pt-BR"
  end
  language "pt" do
    sha256 "2090e5e8a60ffdacf6725b466183a57b1e00a63d24879f71f4b0a53d231f15ce"
    "pt-PT"
  end
  language "ru" do
    sha256 "eeb13e8c678940d2a9fa03851070c451aaab19d4e7954d550d18a3f9bd8b0e76"
    "ru"
  end
  language "uk" do
    sha256 "6896b6e1d6e7666d841d3108ade84d9ce5098138fd38fd8e30a1255ccb1a1981"
    "uk"
  end
  language "zh-TW" do
    sha256 "8fd879aa1bfcc5a2eab661ab6eca74ad2377121ffd76738e292b9e0f84a32f37"
    "zh-TW"
  end
  language "zh" do
    sha256 "7a3e6a72aa46b5fe157f3bad6809b34cca2afbcc2d409e315b67850991e18beb"
    "zh-CN"
  end

  url "https://download-installer.cdn.mozilla.net/pub/firefox/releases/#{version}/mac/#{language}/Firefox%20#{version}.dmg"
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
  depends_on :macos

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
