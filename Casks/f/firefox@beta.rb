cask "firefox@beta" do
  version "135.0b1"

  language "cs" do
    sha256 "d115bb3ad7ac43ddcd88013d145371b192d638180ce52b221d4b035ee7e78036"
    "cs"
  end
  language "de" do
    sha256 "7b086d00b5dbb2202addea13dcf246a6572d8f6327427e8900381bad7ea828fc"
    "de"
  end
  language "en-CA" do
    sha256 "61ee13b5b60bec99e0369b4e0e236e0c5d8954d34b2e8081fbb74e6fb18da556"
    "en-CA"
  end
  language "en-GB" do
    sha256 "434b9d9746b6a50aa526bff324275bf494c446ad6b5a2b60f2a7b6232667314b"
    "en-GB"
  end
  language "en", default: true do
    sha256 "050fc9db2897fab8455899332fcb4cb59c095b6e444d2112cdd7118d92e9096a"
    "en-US"
  end
  language "es-AR" do
    sha256 "1c47d6dfc7a0f3e5553bc524f4b97b928eacbd4f8f251bec28d5fd005bfd75b0"
    "es-AR"
  end
  language "es-CL" do
    sha256 "b48fa2579dfe47429c395652ab63ba7de766f3a19c12b439377130fe529bf2cd"
    "es-CL"
  end
  language "es-ES" do
    sha256 "8f85df8bb0cfd38ca66907b86b719fd68bedf129c743efb7f2d327e4b684a33f"
    "es-ES"
  end
  language "fi" do
    sha256 "5b2ed31e890fbf053171daeb6354ca5c2e5429f5fa72c369d78ee9d7660919b7"
    "fi"
  end
  language "fr" do
    sha256 "a51d1c9149f913778ddf405256c0e4f70dbc2829e7f909345ebdd51cf46b16fd"
    "fr"
  end
  language "gl" do
    sha256 "8189774caa4c51a8db9da9a40ebdb17ef7850adb7446a26dd7fe4a17fb5a6f5e"
    "gl"
  end
  language "in" do
    sha256 "3a6d9a4db683a994c5924f619365328a8dd64b72871fe88b41146dab968f50cc"
    "hi-IN"
  end
  language "it" do
    sha256 "8a13276b62635ebb5176b1c9e10c18e9f1edcb38d37fda51a996914cacb596fc"
    "it"
  end
  language "ja" do
    sha256 "cd5477c4b6321a3e1a12032939593167682ea9f2a776425629ba046119745529"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "a65e1596538ea1b40f29e26072ed113a680025bf91b721ef4afd8e47d282b44c"
    "nl"
  end
  language "pl" do
    sha256 "6f30f123f1e61a1fcc6636bdff06395b5debcc4192ad3570ccbae3469980dbef"
    "pl"
  end
  language "pt-BR" do
    sha256 "e1f710b01b365a842ec95d0ae9d6f417dab08bd36b8695aacc2b5c9125570482"
    "pt-BR"
  end
  language "pt" do
    sha256 "75764f79ae49ebd29b430f83b98113688dbba5aa028e5ff7627d5d5b698a2edd"
    "pt-PT"
  end
  language "ru" do
    sha256 "f0954aac7422770abc038df3cab2463c992f92363da8cf4fab4bfb91692de8df"
    "ru"
  end
  language "uk" do
    sha256 "d5ccb2d92ef24fa81c6ed81aad7aaa20d11c096643d0a89f76963c9ec8da463b"
    "uk"
  end
  language "zh-TW" do
    sha256 "fb479b81d67c62741c309de7b77213df0c4ae28988ce8b284c022dd3dc45e349"
    "zh-TW"
  end
  language "zh" do
    sha256 "5626b41bf74912b7a4eda8e5f9b597adbc14a332bbb5f3fd0eea6f8a9b8cffce"
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
