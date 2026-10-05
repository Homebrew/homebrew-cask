cask "firefox@beta" do
  version "158.0b4"

  language "cs" do
    sha256 "a23de29bea9347d3f7f64dceda5c60bcb174ba5a256f41e1d8e4bba2e61f4ffe"
    "cs"
  end
  language "de" do
    sha256 "08d45d4cb404b83f844f7827c2d4dd587797e3a65ec9e867a2eb4a5a055d2e6c"
    "de"
  end
  language "en-CA" do
    sha256 "eb50277ef5a4747e87bc2825b4ffa1ed05d4c8e5c8afe2069806d42e5308fa83"
    "en-CA"
  end
  language "en-GB" do
    sha256 "9fe5df36b6b5efe4bd8ffcaaa62fef87d2d9dd971f22f51c887d7ddf089af6f7"
    "en-GB"
  end
  language "en", default: true do
    sha256 "d9c2a1e4a4aabc67a2cdccc5645a93d3771865eda28189470d8821cbe12f8ee5"
    "en-US"
  end
  language "es-AR" do
    sha256 "815268cc11ce67fd57cc094614b1883705779dc9ad8b4406de9240de6c02f809"
    "es-AR"
  end
  language "es-CL" do
    sha256 "58c796a9568611365f76146ce0ea0fcbfb4df5e5d5ef542fb71b103d19a1f4fb"
    "es-CL"
  end
  language "es-ES" do
    sha256 "4111e5e8e60b0b5135f71eba85ba13d65d4c80c19812ec526d1dbd397f9a0063"
    "es-ES"
  end
  language "fi" do
    sha256 "65ab360efb1f7588b69bdb7411ee17154c52afd0d748d3f31f2cb1c8fe3a1276"
    "fi"
  end
  language "fr" do
    sha256 "0660c9c5dd0de42ff7cb97bcb20ecf5c3e77f4e282cdf95a6a0a53cf150c73a3"
    "fr"
  end
  language "gl" do
    sha256 "0eedf2f6f507eea94a2fa32cae2db6981646371b7cb525a704c1208af7f4d627"
    "gl"
  end
  language "in" do
    sha256 "1f2d3220d6b24b3834fcac08c5f4d8f0b5bf66e67730109a6d18a871571c6db2"
    "hi-IN"
  end
  language "it" do
    sha256 "d97ad0465de4b16950c9fba1380c61cf62f187ab71cdc28e034c3f300f665556"
    "it"
  end
  language "ja" do
    sha256 "19596365f359f2c1431bb321d1cfec4e944c6ba83386405a735cb092355035ab"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "bc08768531c1867495ebc6d920c6f2f7ae3aaabdd0d4009d55c0e8af9936d950"
    "nl"
  end
  language "pl" do
    sha256 "9a79b38e1341fd0cbba16d78384afd8fca319055ae79771d65d3dfe6486c2ab2"
    "pl"
  end
  language "pt-BR" do
    sha256 "fb90cc14cbe09667e4c2ec42eea9eaea83f51b72f5060469686edf5c7e853df2"
    "pt-BR"
  end
  language "pt" do
    sha256 "7921e28fa68d1e7767b8219c7e1318834197c08a5c9f8f4d93b3078311c12572"
    "pt-PT"
  end
  language "ru" do
    sha256 "b639852be8aa6e5aa5792162942b76e570f42879ef73b6ab13dd318b3c3122a6"
    "ru"
  end
  language "uk" do
    sha256 "786da2f628008fa6b785bb1f9e5d36b3fa4cf483205883846e249e217102e893"
    "uk"
  end
  language "zh-TW" do
    sha256 "822d13d05a434fe2dd710581e830ef758859c1fa97692b75d28618b3989804cd"
    "zh-TW"
  end
  language "zh" do
    sha256 "131937c79ccfbb4fcbebe547c11a0161fee7b587d53d910b4db75defcce1d624"
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
