cask "firefox@beta" do
  version "149.0b7"

  language "cs" do
    sha256 "cf1eec2ad2f42c2f57f0f32d5a203ba723cfa04e3519f35ea48f515e3fc901b0"
    "cs"
  end
  language "de" do
    sha256 "f1a96d89717d22989f26b3ac2fa7c76340cfd94581dca029e8f1de2e3d44011e"
    "de"
  end
  language "en-CA" do
    sha256 "0b2597c0ce77bb3af6163b0592fc2d84b767ee10e6ae55b10b03e78bac865297"
    "en-CA"
  end
  language "en-GB" do
    sha256 "a90b292e987dbef7e871c26a3615e3d2bfb648550a047a74fb243eb0bec773eb"
    "en-GB"
  end
  language "en", default: true do
    sha256 "721f7570df9615c53174813969eed6c52beba8a119dd7106e70ab4faeade67f5"
    "en-US"
  end
  language "es-AR" do
    sha256 "1244045460b7c836e2870179d1e18a83b38aa09b2de474c8dc70651b5ac8a28b"
    "es-AR"
  end
  language "es-CL" do
    sha256 "58534f191708894ef48c3a0a242bc5b78a9dd3511eb81789c21d9018b69511aa"
    "es-CL"
  end
  language "es-ES" do
    sha256 "bbe1628d35121ec7b8ae96148541f45d61e9d93a11070fbaad184b404b23d450"
    "es-ES"
  end
  language "fi" do
    sha256 "4497e4ff7ed89251191f4c8ab358efe80de40d98c39c6c012d6410d2d9fba88a"
    "fi"
  end
  language "fr" do
    sha256 "26267315838316814a13f36b5e0fec5b4ff201d2a04b4fe4d5287778cdb30943"
    "fr"
  end
  language "gl" do
    sha256 "11eff6cc46075ef82d52417c9c096c783a3d0b091e0588f7a397ceb1969d03f2"
    "gl"
  end
  language "in" do
    sha256 "852675e85a5732ccae98a7aca2f45f0b6ec027af2a52610d0e12358bac716659"
    "hi-IN"
  end
  language "it" do
    sha256 "a2b852bb5c43f020f8672ca28dde9eb6b629af28ffc85aa02cfff2d98332b92a"
    "it"
  end
  language "ja" do
    sha256 "c938fd6637af1ff74571c05160ef0eaf8c4bf238f525041ce827cb96b89d272f"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "5a6595193c47ce7bd92343f182a38de6bde6730f098b8ca78370fcdc5eaa1313"
    "nl"
  end
  language "pl" do
    sha256 "7f91102c9479b690d596a2f02b6c6a6de6caf5d004c120b434eaa66f6e290428"
    "pl"
  end
  language "pt-BR" do
    sha256 "e7679debd49cda9f6274e6b8d0b15815a81a5f57aadfe7c0c483b975967edb3f"
    "pt-BR"
  end
  language "pt" do
    sha256 "3457235775bee16179fe07e32276345b504895ae3c695013825dc228f5bb610c"
    "pt-PT"
  end
  language "ru" do
    sha256 "1fdc67ea9bff801c1de5addfb834b5daf5ed8899753500b2b18a9160ecad7e8c"
    "ru"
  end
  language "uk" do
    sha256 "0bd580f0150ded05b25207b377acff3e4810aa68f2de69cb1246810998a9883e"
    "uk"
  end
  language "zh-TW" do
    sha256 "4ebd5adc1351196547c0d2503ee99e59f04c4b80702e20ba01b651deac28f4de"
    "zh-TW"
  end
  language "zh" do
    sha256 "b7b8b7ee13629e2840f8478c2b4dd72194cf44c2056a61982439e48c6aadde07"
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
