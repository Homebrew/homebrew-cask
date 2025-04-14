cask "firefox@beta" do
  version "138.0b7"

  language "cs" do
    sha256 "38cbfea5ea5d955a2bb2264a212a2363450f6976b13c0aedbb0eb16c9cc76f54"
    "cs"
  end
  language "de" do
    sha256 "1da91bbf0ee3a4a4c091d2455855305f96a90368a0874ec99efd680badc41a03"
    "de"
  end
  language "en-CA" do
    sha256 "0567e53a4b3ce8df681bbd68d27c83ba58116a9ebff1dc5f12d6be95ac13bd20"
    "en-CA"
  end
  language "en-GB" do
    sha256 "8d5e074a139415d64d83c36bd7d99311a14454d72c82d25e3fd2262e5fad09e8"
    "en-GB"
  end
  language "en", default: true do
    sha256 "c68c57ba5743e99079890f04a777f08cbe07364fce24ad68ffc19c804b86ccf8"
    "en-US"
  end
  language "es-AR" do
    sha256 "7d9265f9544a9b125c360a220320a5120790072093733cb4143b33acc7e9e37c"
    "es-AR"
  end
  language "es-CL" do
    sha256 "b4b4aa0557603d059ce8bfe3a2ec0a01866d368b0545eb5c3591d78b6717ddd1"
    "es-CL"
  end
  language "es-ES" do
    sha256 "cbc41634e8d57840876c4b68f2444ae4f05c76bbea07e0c72e2677fcf83aa9cb"
    "es-ES"
  end
  language "fi" do
    sha256 "3125dc94386873b8d7f3431003364fcdbcb7bafad85d4f0a5efbbd3efe598b56"
    "fi"
  end
  language "fr" do
    sha256 "ebab7bb5f1180136a03d64e98cd49f2d5b4fbbf88e25625996c5a37fb6d506f7"
    "fr"
  end
  language "gl" do
    sha256 "f0fb337e3f423fe7c67336f0a3a2fe454b5f5b19029e9516624d0d06bdfa8f38"
    "gl"
  end
  language "in" do
    sha256 "8a837c3c6416baa115804a7893a7563a432c787179b2c0c04f49df7a4d3ff4f9"
    "hi-IN"
  end
  language "it" do
    sha256 "19caf9a868da80871919dee53663f28e1f1b39c412e0fc99015413627753df2e"
    "it"
  end
  language "ja" do
    sha256 "c485784ad5cc5a19bc6812652c081ae02921aeca739ffcb2077935d50f471a1b"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "39132da05c102322e3aaf9f28af423bdcdbe6f3100e2f5aca68f870ce169b533"
    "nl"
  end
  language "pl" do
    sha256 "dd22b8a682b592ff1e4ca5a1e8ca504a41f4d2a5b1177973bb73d73162b74f1b"
    "pl"
  end
  language "pt-BR" do
    sha256 "7a5b8c38ddcbc4245dad426f80b6a3689cf81dac886a819efeb907a0048851d6"
    "pt-BR"
  end
  language "pt" do
    sha256 "9d4a4561ef5e731bf35bf48d16194d5d4d1724780b3c49abd59a8e7ab979d497"
    "pt-PT"
  end
  language "ru" do
    sha256 "0e34ab680b204c7c9833a847820387caafcd4a3df623f1f73f36e8a4a5be8fdc"
    "ru"
  end
  language "uk" do
    sha256 "72fcefb7d22f7410484fdb36d7c4d1d95ff23b7173178163d00a8bffea5dabcb"
    "uk"
  end
  language "zh-TW" do
    sha256 "7b5b2d7a7958a55193e1cce341b236c255a62072542ce9694228ed1e4b4b0a2c"
    "zh-TW"
  end
  language "zh" do
    sha256 "cf7d118d5ec28b25fa3b58835ae82c509984e23766247989e8b480d78272051d"
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
