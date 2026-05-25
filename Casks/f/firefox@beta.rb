cask "firefox@beta" do
  version "152.0b3"

  language "cs" do
    sha256 "81e61e68999def6acb9c658d0e13f3dce247e217ea38dbf5c6b18ebf6774989e"
    "cs"
  end
  language "de" do
    sha256 "65baea8f941d9fb227788b0f372e64da8b5c9af449f7aec0ab68ff3c933089d6"
    "de"
  end
  language "en-CA" do
    sha256 "14e6259267dc1a23d56c503542787323acd5a59ddfb0f7c509fad43293e2ebba"
    "en-CA"
  end
  language "en-GB" do
    sha256 "d5565a98b08f87eab1976e85ae75bcd16281c936821b8b95264a2deda0b9ead9"
    "en-GB"
  end
  language "en", default: true do
    sha256 "d1c701b333031437ce653b8d992c3b9b3109a2ea45ff6d63b75e77e6e7e9d430"
    "en-US"
  end
  language "es-AR" do
    sha256 "02449a2a38706eb2b25dd142c47c9f2c73cd34256437714c3f5dc1fb09e29d75"
    "es-AR"
  end
  language "es-CL" do
    sha256 "03f4f106ee005bcf4e4ce180a188d040efa652fbbb3d4bf5c15b450660e9e9d3"
    "es-CL"
  end
  language "es-ES" do
    sha256 "83285a914bd4ba34082f7e276eb97fd0ff4e351d9c005b50d5e68c58d8995277"
    "es-ES"
  end
  language "fi" do
    sha256 "fbe6e15c81884fa10359d20230bbf3b556e96fe986858ccdc96f512234e0de9f"
    "fi"
  end
  language "fr" do
    sha256 "aaa556e4c760d0c88917fb9e68f89f8088f05abfa1f4069d815a4e8c1ed56f49"
    "fr"
  end
  language "gl" do
    sha256 "4f5acbc14189b75cc948949d276619c14f67198a54205714e381c0aad21288fb"
    "gl"
  end
  language "in" do
    sha256 "2f61a3d32ca67003b9a103076563a46e834c858a19a45cac751ca48e3f5ad0b6"
    "hi-IN"
  end
  language "it" do
    sha256 "f589ac4b3dd2a8323fe477a41ecaa81b9279472a021344d8c63d5f9e2a3c0aa9"
    "it"
  end
  language "ja" do
    sha256 "c550eacc0279678d69e232aeacec6f2fd89b1582142d88d3253c1647ec4df6af"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "1bac4c9c6f8f40bb0293dbe0a7bb65d3a03af123cf1cee19fec5533d6f81f2c6"
    "nl"
  end
  language "pl" do
    sha256 "0f12e8347e37e4c5825edc1f3fa3df85741c6b209c21a45c13e01ed640f979a8"
    "pl"
  end
  language "pt-BR" do
    sha256 "6d9f284c90b741850eb214de038806fceb9b648385e5f385193db4799d0f840d"
    "pt-BR"
  end
  language "pt" do
    sha256 "ea59ec8760792e6ae813878d2bd571e77308667b1a56dce37481b60b7145fe3e"
    "pt-PT"
  end
  language "ru" do
    sha256 "cd26f9214f5c2be49485ad97349b34560544b56909a1eda4af2685ede0d11e90"
    "ru"
  end
  language "uk" do
    sha256 "8d1602b19d7921d3b3456a790e675616ff71732710130e1beb902fb79f63201a"
    "uk"
  end
  language "zh-TW" do
    sha256 "5e196a71f9d4bb97357476dd34d5f5213275e1c700e291c9772af559537ea14a"
    "zh-TW"
  end
  language "zh" do
    sha256 "d43a352abe781dea846df5321d7f62ba2c565164a7db53c7d03234a686571325"
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
