cask "firefox@beta" do
  version "161.0b5"

  language "cs" do
    sha256 "fd7984e705bbb2950dcaa85ed330e8177a44034bb28c165e0ac12cc3a18e656c"
    "cs"
  end
  language "de" do
    sha256 "d3196fd4f4e5f785f746b8a4c9d269a6a8f4c8387d81c0d8b478927a7b6f250f"
    "de"
  end
  language "en-CA" do
    sha256 "10dc034ed46ac29f2d3070204bae7763da8f2868ff35c4007312e7887e2af152"
    "en-CA"
  end
  language "en-GB" do
    sha256 "100d614261285fd527c42524dcf775382ead6031975f3f624f046b264b348f4b"
    "en-GB"
  end
  language "en", default: true do
    sha256 "4855174bf31a25592e62b51b555b7bdc62033534083c2e3d535eee222545b09c"
    "en-US"
  end
  language "es-AR" do
    sha256 "a22b7ddbb0539775943e356ac0ab2179b0bcc25807a58a622e426cba5a5aa986"
    "es-AR"
  end
  language "es-CL" do
    sha256 "258cccd58d14c5a23f20aa768baa8a5c56890d4eaa8484c2bac2c4c12f60162a"
    "es-CL"
  end
  language "es-ES" do
    sha256 "e1699c10c7ce56354e8a0a474ec9daacea3bfe745650ebdc44593033d25d8981"
    "es-ES"
  end
  language "fi" do
    sha256 "12ccfe04328fe119817c30814888e7305cc41f29f443487e0098a5580e86f2fb"
    "fi"
  end
  language "fr" do
    sha256 "3ead9ae9d56b550ce2dfad80f487681327768509abfa78e87a4f9913c4d99276"
    "fr"
  end
  language "gl" do
    sha256 "3e9186cf8c6e9e81814bb6e1f6fb709c7c8a9dd494d1f102bd32692f61bb361c"
    "gl"
  end
  language "in" do
    sha256 "90a7bdf282527a788df9fdd29dbe02bc36b9d9988d86a141f12b51e91a65650e"
    "hi-IN"
  end
  language "it" do
    sha256 "d859ca70889a921a64d6397ddb99a2ce66c8701c2acc2cfacd7b17c7d2f04ea8"
    "it"
  end
  language "ja" do
    sha256 "a23c905014e24951ab092e9585ff9778350dfe0db1bfbdca3a4a00128e9bdec7"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "57e69600ce00c4fa0324ce1f2a11305402456983d55decf35330c9f851bd7f1a"
    "nl"
  end
  language "pl" do
    sha256 "258c0a3ae552be50069f3eb12e16e882cb075c036b00977284a233cb259eb4a9"
    "pl"
  end
  language "pt-BR" do
    sha256 "2f1ceb4f50b2a3558568d819223ab00fe99e222d153cfcf764c23691d458f54f"
    "pt-BR"
  end
  language "pt" do
    sha256 "19c175069e722bec01218c4fd1da2052a8b166b27066e4adc54cdbb217cb45d4"
    "pt-PT"
  end
  language "ru" do
    sha256 "197b3806c959add5cd1440a7f685de70050db4bed7b25652d9014aa61f40a49b"
    "ru"
  end
  language "uk" do
    sha256 "8c6b51d3df83120cdda875a1cda01c6fd9ac1e5fc4bd19259b78a135b336d9a9"
    "uk"
  end
  language "zh-TW" do
    sha256 "2e1f36767ef7183c4afe5dd5e777ca34d7a0648aaac333dfd44b97c014b4c502"
    "zh-TW"
  end
  language "zh" do
    sha256 "1936e3e8d0624c24cee078f6c8f3fd1788a18b12f790281908a283ac8cfddf82"
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
