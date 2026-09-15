cask "firefox@beta" do
  version "157.0b1"

  language "cs" do
    sha256 "c8ed47ba158c81166652fe059d0773a1c9475780b8282d9631794bd20818492b"
    "cs"
  end
  language "de" do
    sha256 "fd180919171f36bfcd1229608b97701ff61171fb1d0cb1005752d3b16292cc3f"
    "de"
  end
  language "en-CA" do
    sha256 "24a1ddab5bb5ccf8554f1523f02d090e8c3ed92e71da36c7bae8850e3a252dfc"
    "en-CA"
  end
  language "en-GB" do
    sha256 "a15008c2156fe388fa87de99c346182fc980d3d1e22e07e2c08e7127dd2a1a25"
    "en-GB"
  end
  language "en", default: true do
    sha256 "1a5e40f975e2e96c8c06bf2611072a5f40f470ba6d2e952053ffa61b541c08b4"
    "en-US"
  end
  language "es-AR" do
    sha256 "1f609b104cdcf5025e7dbdae244d2f5fd55fe3f8a634cb4f64b5be82fe7d156d"
    "es-AR"
  end
  language "es-CL" do
    sha256 "93e4192e400b1164d6049ed4874ffd05263dec0a48d2601f8613bd5f056a5e16"
    "es-CL"
  end
  language "es-ES" do
    sha256 "85166e7a31d733ae857ecd9f425e13820e59ea93277810b640ba0011b90cf248"
    "es-ES"
  end
  language "fi" do
    sha256 "ccd9939e40041d07df2c3fcdb17b621bfef5e365a17f6a1a5adff368968fc076"
    "fi"
  end
  language "fr" do
    sha256 "46ea54707ff7192433a01385b612ae42e449ad1e6fb6d14f2ac0734a163704d5"
    "fr"
  end
  language "gl" do
    sha256 "f0b64062f9cb9e1b4ca444c4ff5e9f85649c451ebd66668058ac09689fd03b40"
    "gl"
  end
  language "in" do
    sha256 "3366b636842c99c8040cfaf5929051ba0e01490398a91d790a2a92b5ea29971e"
    "hi-IN"
  end
  language "it" do
    sha256 "492e0563b32d62519bd6d188a6babe7ed3d4eef86f1aa3e98122d450abb19658"
    "it"
  end
  language "ja" do
    sha256 "9950d490f24745bbc48007247958f106185a582f0d034062bc4259bfce332a2d"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "f2dbebb8052bc0da22fe0653f380ac9c995b267390e6abaf4e5df62f862b503e"
    "nl"
  end
  language "pl" do
    sha256 "c2eddf4255aa02893e1eea7f5bb04068ae56970e94dc23ae200052e92f2fe9ba"
    "pl"
  end
  language "pt-BR" do
    sha256 "64ee7e886754206c28642d066877f821eead7f130dcdf8dafe7520fcc84753e6"
    "pt-BR"
  end
  language "pt" do
    sha256 "6fc3ae1ab41da87823f9dd4b971cc094188bd4a386c79655c98986957b9b1131"
    "pt-PT"
  end
  language "ru" do
    sha256 "264470c7156632e589035a4fd87327426e2843752972c721365a560633ab1a93"
    "ru"
  end
  language "uk" do
    sha256 "b41d3f83c36ea225c17d34e92aa943e5e61f074e72d18883741ed9bc0b2ae343"
    "uk"
  end
  language "zh-TW" do
    sha256 "c614bd4e49e1c90ef04af21366545331c03e90a9e08b0031c5ffd9004cb7fd93"
    "zh-TW"
  end
  language "zh" do
    sha256 "aa8b1db120327bc222db180529a4db7a8c63b4b14b8150af9653ed12f34cc6fd"
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
