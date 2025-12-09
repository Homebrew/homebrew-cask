cask "firefox@beta" do
  version "147.0b1"

  language "cs" do
    sha256 "dac8ba41e65ef4332cdcfb93ba3b3298d79022d576cc18cd7933a75e7ae0c03c"
    "cs"
  end
  language "de" do
    sha256 "b988313b6b7c4a4ca0e41a6137b7dc7de2cd587b84b0a2e732489b5d3ae599f4"
    "de"
  end
  language "en-CA" do
    sha256 "400c67e206d981deeca4d0cf99f20bfad5d396b01f0297c014c49b3b199a7405"
    "en-CA"
  end
  language "en-GB" do
    sha256 "01a708fec976bc4f589ab43841cbc0bfaf9e466e343feff58d215a7bbc3c9f8a"
    "en-GB"
  end
  language "en", default: true do
    sha256 "4448b7f26c8772fdd763a88652b233a5b2da0d2d429a1d7738b48f828e63901d"
    "en-US"
  end
  language "es-AR" do
    sha256 "7bb454d04e89366b588159f904599adaf19404e14b740725062cd0d77f7cbe96"
    "es-AR"
  end
  language "es-CL" do
    sha256 "4dc3b2da2e2a97085b02250987d8e6dc58a86792490fd3b2add4053a330130fe"
    "es-CL"
  end
  language "es-ES" do
    sha256 "1ceacb13a34845d3800a04617872c378d94330f255acad810c95db69b6cb5e06"
    "es-ES"
  end
  language "fi" do
    sha256 "22a080ba6b341d6a74ec819e1ce85bc654ecd3f2ba83e049643bbf5d546a70d1"
    "fi"
  end
  language "fr" do
    sha256 "5d0e48072e5c348bd315ce700963d681107424a88d1d0656f5a51aa6530098fe"
    "fr"
  end
  language "gl" do
    sha256 "a3cb4b31855ed1769c63a90eadceae2f73467e55530f8c695c164834f72fc25a"
    "gl"
  end
  language "in" do
    sha256 "79ca941a3929055e8dafa885f62aba67f957410213544abd003ac18e89e3cb7b"
    "hi-IN"
  end
  language "it" do
    sha256 "5205bd4ffe11cf33b269fc609afc21b9979ba7c8a7446b8181ccaec717ba123d"
    "it"
  end
  language "ja" do
    sha256 "536f6c512367f5d4efbdb7fe0684f07ac1eae2f0ae50340b6c157aaecba4df15"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "a6b177eb4c392a8e0f5d8835d7d206b38f233bb14dbf22776bea44bf587793eb"
    "nl"
  end
  language "pl" do
    sha256 "43847812eb7ce1ad2876ed6966e6fd854b3a68a8fb287383cf60971a50ec21a9"
    "pl"
  end
  language "pt-BR" do
    sha256 "1aad3ce1ec0d8a70655142dffbfb25239fd63efc17a3e08f24348999669d4af9"
    "pt-BR"
  end
  language "pt" do
    sha256 "3756b899cf7dff5c0b1446281538f78ca67f9e16f5a08d1431b7610b6124a07e"
    "pt-PT"
  end
  language "ru" do
    sha256 "b9167a633afc8892fa1ab664b07c9a4676bffa8db81034921af9b08c82db3bdc"
    "ru"
  end
  language "uk" do
    sha256 "17c118c36c78c784121a82eba97b5dc4289b25696ca73a4009c9c61865d75b30"
    "uk"
  end
  language "zh-TW" do
    sha256 "1170bb142b5dd5ed4fb7e3ff98dd127199a5218b8c33fc7f97e4bef09d381be5"
    "zh-TW"
  end
  language "zh" do
    sha256 "33e8ccdde81fcc0bfdcc0ec624b49310753314de9fe487ea058ffb229893a820"
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
