cask "firefox@beta" do
  version "146.0b9"

  language "cs" do
    sha256 "a05260923bebedfee38a609277d79b91cb8ce1ad88661ea744a97be38effde59"
    "cs"
  end
  language "de" do
    sha256 "124dc159407c181d8809ade5ab6b1d8d4cdad8b16c93d79813efc8e23cb245d0"
    "de"
  end
  language "en-CA" do
    sha256 "04ab2c322b96875628021d8bd546fc4a0b249ceeb1c9d0600c0cf9e2addddc3c"
    "en-CA"
  end
  language "en-GB" do
    sha256 "19e51ac212068b52e1a64728f23308cca3f81a76d0e579b79d4bce5ad282a783"
    "en-GB"
  end
  language "en", default: true do
    sha256 "b943d1235da598063c1f34d3f51825f8e8bab4d33b37c801f63a915b29d351f8"
    "en-US"
  end
  language "es-AR" do
    sha256 "0fea30227ca86e322372b3bd03e8b17606181367734bf16c533fccce5eda3f9b"
    "es-AR"
  end
  language "es-CL" do
    sha256 "99eade400dcd82026eca64c737c62b7fa5d57642d7cd64224463509cc6aac8c0"
    "es-CL"
  end
  language "es-ES" do
    sha256 "fd1aa9edc0ee99d0934ee790d4ef96d1f8b32c54d388faf4b0bc3fa3c45c2b0e"
    "es-ES"
  end
  language "fi" do
    sha256 "172ffe416bdb53b6dddc9147c4ab69c9b4784a318d973300f35df6f89377d3f1"
    "fi"
  end
  language "fr" do
    sha256 "138ce10cdf5d6dce66c723c79609a81b7f3c5e7822fd6710b14b3db437fb06bb"
    "fr"
  end
  language "gl" do
    sha256 "548f37f9f07e3f48099f5a845c0a8af9250de0e73fd7e196318fd4bd7dfc491a"
    "gl"
  end
  language "in" do
    sha256 "2cde5c41e5f2f369fdb48dab236af0bdc5a3e6a7d3f3d9fae29ca710511df457"
    "hi-IN"
  end
  language "it" do
    sha256 "920183a0a4fa93358563a502dc63b85cd3a58e3cdcbe604b44917d1c89e4b730"
    "it"
  end
  language "ja" do
    sha256 "bf708bcf2777d1b08c32d5d3941a9480831164140bbbac49d83a6d6c3afb632c"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "4658bc25adf99b73fe8988b1ba8ac488a220f0ab2a246614dc6db0d8235ac334"
    "nl"
  end
  language "pl" do
    sha256 "86038c0a0353d6784f07b014020e66b9ddc7efb2f9083c474a9b9fa7837e65d4"
    "pl"
  end
  language "pt-BR" do
    sha256 "260146740092c710077ea2ca7fd57a9ae718218e7dee250add919f1317a69c7f"
    "pt-BR"
  end
  language "pt" do
    sha256 "43167e62c53530f919adedfc783aed10cfb24b2e05f1102671257c74f5886358"
    "pt-PT"
  end
  language "ru" do
    sha256 "641a4f0437498cf6b894da4b1fc62381948e8446eccfca9f04b9fdc768f2c376"
    "ru"
  end
  language "uk" do
    sha256 "ea5d403015405dfc9cdcda51ee2e716b15c89dd393af1efca465aad3c6faf391"
    "uk"
  end
  language "zh-TW" do
    sha256 "5886ec5c87d6b05a92b83d561b4486b641604c056024d50ca2216e2ad6c6862d"
    "zh-TW"
  end
  language "zh" do
    sha256 "585d2b910405c1942a2de80711f8a3c7ea6cd8ce71fc2ee8ee5c774b7966091c"
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
