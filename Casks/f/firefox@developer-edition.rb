cask "firefox@developer-edition" do
  version "134.0b10"

  language "ca" do
    sha256 "9feabaf66fba309e0a2532e21553f7f991e48c90e445377874b854a433bb7100"
    "ca"
  end
  language "cs" do
    sha256 "04e3cc3bc86c451ca677f8a839722c121c40aaa6f76ad138a742a796cda4df4e"
    "cs"
  end
  language "de" do
    sha256 "634175e3c52ddf7d1c01561dada50ec45c76298a8e76034bc0e03204da2e21db"
    "de"
  end
  language "en-CA" do
    sha256 "aa40440a27fa686b0f406004a05b17031aa079b0d4a2f98937836eec3a264591"
    "en-CA"
  end
  language "en-GB" do
    sha256 "cd8ed987fabba27aa28fcab50fa568b0bd198eba728715a2792e0ada544b9649"
    "en-GB"
  end
  language "en", default: true do
    sha256 "55926258cef27510db7187ec3b59374503adb09891ff356d0671c041df97a7df"
    "en-US"
  end
  language "es" do
    sha256 "b968495b8103f49fcfe717badd7ccb44c2e3bf09632e599cc49b30b92db91426"
    "es-ES"
  end
  language "fr" do
    sha256 "bcf2d5a490f9d5de708792c597d572de9bda04f67213efcaf625111c685e6156"
    "fr"
  end
  language "it" do
    sha256 "792c80fbe844ca930b9fab39cd002c6549bb3dad2acff582a83f33d810c15133"
    "it"
  end
  language "nl" do
    sha256 "a0899f92a5fbcb1b54601298251277f123da99f31d2d33f9713bd711ab1a2d03"
    "nl"
  end
  language "ja" do
    sha256 "a001b72dd24638b96229a717dd0e10c95219df072dfe666236c87c45ebb31d68"
    "ja-JP-mac"
  end
  language "pt-BR" do
    sha256 "6ba6d925c84aa886216fb0dd6bb8e48d43618cf39ef398d3866e178e4ce78e24"
    "pt-BR"
  end
  language "ko" do
    sha256 "cd45cc2a48266dd8bfc6c7aed7ec955c530a68a6dcb488cce09dd81657b48c1a"
    "ko"
  end
  language "ru" do
    sha256 "3432eaef88ed28ec2b45eb7dca180d942607cb98b74994212a9222cd84485de3"
    "ru"
  end
  language "uk" do
    sha256 "48503510855e9c9a5c76f85b42cb5d81deb37e844b3602c7e578ee8ea8130cb8"
    "uk"
  end
  language "zh-TW" do
    sha256 "7183cd27f728cd09bd6f7870e52232525a1a4fff6d930b8f7e83d291ffa9c8e3"
    "zh-TW"
  end
  language "zh" do
    sha256 "abae7575628a7519249ad17688162725f53dbb804af3b7561298d43e7dbf208b"
    "zh-CN"
  end

  url "https://download-installer.cdn.mozilla.net/pub/devedition/releases/#{version}/mac/#{language}/Firefox%20#{version}.dmg",
      verified: "download-installer.cdn.mozilla.net/pub/devedition/releases/"
  name "Mozilla Firefox Developer Edition"
  desc "Web browser"
  homepage "https://www.mozilla.org/firefox/developer/"

  livecheck do
    url "https://product-details.mozilla.org/1.0/firefox_versions.json"
    strategy :json do |json|
      json["FIREFOX_DEVEDITION"]
    end
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Firefox Developer Edition.app"

  zap trash: [
        "/Library/Logs/DiagnosticReports/firefox_*",
        "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.firefox.sfl*",
        "~/Library/Application Support/CrashReporter/firefox_*",
        "~/Library/Application Support/Firefox",
        "~/Library/Caches/Firefox",
        "~/Library/Caches/Mozilla/updates/Applications/Firefox",
        "~/Library/Caches/org.mozilla.firefox",
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
