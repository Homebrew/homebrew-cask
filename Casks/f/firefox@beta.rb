cask "firefox@beta" do
  version "148.0b8"

  language "cs" do
    sha256 "094a65959b9974463f987e5cf7efc67b1e053c5386a7fe3f25af4eec67b91838"
    "cs"
  end
  language "de" do
    sha256 "52625c5bfebb6609948fe952c4d0731aa2bed4277411935d23a9ae71393ebc27"
    "de"
  end
  language "en-CA" do
    sha256 "43ffe00d3e3597185c008f7dd301599786cb8751b627ecd87c4c5d5bf98953ac"
    "en-CA"
  end
  language "en-GB" do
    sha256 "314648349ee6ffe70a558935a752ce75283317088edb69955e9ee07414922327"
    "en-GB"
  end
  language "en", default: true do
    sha256 "c53892361c068b6cf5b571566b1e879251f0db2a3bc37e07a865a605268b6ea2"
    "en-US"
  end
  language "es-AR" do
    sha256 "fec51cb6ae5aac18a4599bef156a79a4dd786cc5bfb5d895fae9a0a7e684412f"
    "es-AR"
  end
  language "es-CL" do
    sha256 "95a880f839d05f7d7d109cdb1c64b995b7b40fede6be4d13b98f44dced018cf0"
    "es-CL"
  end
  language "es-ES" do
    sha256 "9cfc65f0cc3f5987195bf604511e4c44b02cde19c9d8f6a9d5ea208677519a89"
    "es-ES"
  end
  language "fi" do
    sha256 "c1b5a6588f7e58049a645bc6e4fdd2866a84519cc08018eb547e282cb0d3ab63"
    "fi"
  end
  language "fr" do
    sha256 "2b029c778bbab4ce33983b2d3c6f3dc14760d40012149f7ebda3051f19c16d3a"
    "fr"
  end
  language "gl" do
    sha256 "d108b7656309e3be44ba7f3e9338654aa8ccda983457a8787885625500750c88"
    "gl"
  end
  language "in" do
    sha256 "f15c6062552d19e11ce62b88ccdc83d2388f5a441e36dec97e2976d4b93b6c9c"
    "hi-IN"
  end
  language "it" do
    sha256 "8ee2a54fe3f3d025e0706de5b7238f76393eb623b7d06057ad842d37f73279a1"
    "it"
  end
  language "ja" do
    sha256 "eaf29c5be73178decb07663e7ae8cabbb192b5e9f68ce95ad11f9dd61a9e4f1a"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "63e294dff0e181f860844716aab02c8247ba33772dfdd88b933c43d705b17e47"
    "nl"
  end
  language "pl" do
    sha256 "6b31a5e8933449d3127a4159a9fcb7151358354526bd8a35109ab40b15e05ba4"
    "pl"
  end
  language "pt-BR" do
    sha256 "e34e3f3a838a8a574efa02612954785df0fd012c8b6bceb802e26d1b4f60390a"
    "pt-BR"
  end
  language "pt" do
    sha256 "f13616f2ce5f2439faae97d1ade85b67b1e66497bdb0901c96c63830bb64df39"
    "pt-PT"
  end
  language "ru" do
    sha256 "376bf4216a20346c55480414dd650c7a5c595c0fa1d9c627333a36f22ae65fe7"
    "ru"
  end
  language "uk" do
    sha256 "aad889be21ec5129dae11ef76548a4dde9c163dae760a510cbe21c0d732b253b"
    "uk"
  end
  language "zh-TW" do
    sha256 "cfdb2faa2a7b61951725afcbbe0e9b85a579e5c76744c78cc34db9aeadf5c76b"
    "zh-TW"
  end
  language "zh" do
    sha256 "f21c952519398e8cc3988655149173f50660334eddada0ecae7ce7b45477d042"
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
