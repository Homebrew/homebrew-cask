cask "firefox@beta" do
  version "136.0b1"

  language "cs" do
    sha256 "b20ea1f661980551ef9f41df4b9fd69387ac0a63f398b053e91cd71f743563d6"
    "cs"
  end
  language "de" do
    sha256 "61bd2f7c4462aaa4b0412efec3d9643e71f104adb00a79faad1e7a75e77bbf2b"
    "de"
  end
  language "en-CA" do
    sha256 "3274dd9dfb606dcf30614be0b664874242cb6ee5f01c6b5e0e4b848323208f8c"
    "en-CA"
  end
  language "en-GB" do
    sha256 "a232780481416868a5ebe5178abbcbd9fdb117152f88cb1a57b143cfe4903c70"
    "en-GB"
  end
  language "en", default: true do
    sha256 "5cec5caff12654c7a0c79d4b211f4bcaca24a9e647b28a0f21c8e8bc31439706"
    "en-US"
  end
  language "es-AR" do
    sha256 "ed666bdd4870a5d3fca52f730b9704740ece63f25bfa2cdae3f222c0e030c484"
    "es-AR"
  end
  language "es-CL" do
    sha256 "fc328e0a6154b19dcdd54bd13399b8dfec6404388bf5f0d1f34088450c25fc07"
    "es-CL"
  end
  language "es-ES" do
    sha256 "d679cd5fed2869249a8e9fe9772f4afaa2879de51db6bc31e3c4521c505d7128"
    "es-ES"
  end
  language "fi" do
    sha256 "26797981b0b1f44e9ae84228e6e288f7124102e4c116f8ecea0838e9efbe1973"
    "fi"
  end
  language "fr" do
    sha256 "e8a9e1fcc262c16d5bd0abf2d21af9a8e58a6373cf657db3640ba3b6cc089b09"
    "fr"
  end
  language "gl" do
    sha256 "8c7303cd8a07f93e8da6280e0f49a23404d09f744823c3b69e6639e3aedeafde"
    "gl"
  end
  language "in" do
    sha256 "406b41cde839c05ad61c1db892339aec35b367708e12791830a55be3e9df0eec"
    "hi-IN"
  end
  language "it" do
    sha256 "f33eb761180f509d01930313be8adfc759be88d5da0a3d298f4afdb1bce2a64e"
    "it"
  end
  language "ja" do
    sha256 "a9eb7f6d9a074d9bb7bec24571e50c21a7c2acd5752935aaea69cbac03c3edbe"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "0156533bbb2fe707eb402360f74b4d72977ceb51121af7539d375489c697cc9e"
    "nl"
  end
  language "pl" do
    sha256 "14b945adb18806da7b560ea1f3b20560703755f26fd88dd5303878581cdcac10"
    "pl"
  end
  language "pt-BR" do
    sha256 "79b3c21869ee9f00fe9b2a4c9205e0982857d9cfe2f8400a44394aeaa3c8c1b0"
    "pt-BR"
  end
  language "pt" do
    sha256 "ad46945719f5b9de7d6e34eb9432dc227edf94c64258d75fb3b675c896ba95ef"
    "pt-PT"
  end
  language "ru" do
    sha256 "86fce827a6132e1eb9da62215a1428a214f0c99ff0a8e691af3f1bf518876b5b"
    "ru"
  end
  language "uk" do
    sha256 "31a2f49eec9e99f0eb7fc5ffc9b21aabd84b85c85ab06bf577556c6199c9c8f9"
    "uk"
  end
  language "zh-TW" do
    sha256 "39a41adcd5cf6d8e3e0961173e8cf1fc80cd36c674720dfa702924cc4e082694"
    "zh-TW"
  end
  language "zh" do
    sha256 "b631b617cea1a43c2f026a8c0609155027470474818fef478ceb999720725a1f"
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
