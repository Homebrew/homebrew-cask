cask "firefox@beta" do
  version "135.0b6"

  language "cs" do
    sha256 "c955ddc1f49e749ef81daea276e970dec88b070c84b5bb22cea4d505d134612d"
    "cs"
  end
  language "de" do
    sha256 "bca36060b5232d23c9e9af205e5b661ce82f8077a3a6ac9a9f1a91db55256247"
    "de"
  end
  language "en-CA" do
    sha256 "1de0965f5953ecb908289914be9a922091f5658fa05d24bdb5b010e6ac9ea60f"
    "en-CA"
  end
  language "en-GB" do
    sha256 "4875596eaeae1fe424ad65fa73d03438d6e3409c1b43b762a369a8da367185d9"
    "en-GB"
  end
  language "en", default: true do
    sha256 "13f82e6220312b602481ec5a0d33ffc7c826913efb73f0cf8fdbc8b0482cd9b0"
    "en-US"
  end
  language "es-AR" do
    sha256 "d6b4c6d65417038ed65fac2ce661140d80794ca83d2a32a19e4068984fddcfae"
    "es-AR"
  end
  language "es-CL" do
    sha256 "545780c4740c4c7675dbb9d96c9fbd12059b324c0b0f1d2a291c85e3eba80c02"
    "es-CL"
  end
  language "es-ES" do
    sha256 "f746c0593551144610278726674886673febb5a9cd47a2e56f61e0629b870a72"
    "es-ES"
  end
  language "fi" do
    sha256 "1418051aca4ef74bfd63c30ec8375fb187c01835a89a6232476a0435b8c754a3"
    "fi"
  end
  language "fr" do
    sha256 "601d75fa35fd1e800d81ed6f4afa159f0e1e0b0fdad9b45c29d297187a5ea9e9"
    "fr"
  end
  language "gl" do
    sha256 "024e349866732925d0faea0b8dcd704c4800d5a5d5bdc23ff4cec7faef7d49cd"
    "gl"
  end
  language "in" do
    sha256 "3222396eba216b339f9302857d48a86ef9da66094082e47ef6ebb1b4c517e200"
    "hi-IN"
  end
  language "it" do
    sha256 "484368e8430a50e4dd11d44fc54630a3da3a60965aa699f4af93aa33a35e10a0"
    "it"
  end
  language "ja" do
    sha256 "d3d232f15966c0e66c57e09cba1050bf3c2ff941431cfb101bd5911f0a34727f"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "f25649a9926b5b92e95168c258857cea8cc6278da813544395b5b423da4ff295"
    "nl"
  end
  language "pl" do
    sha256 "027c827f2c00705a4b7ca2c9f653b79544ce6a234b577008d2dfb6ea01bb3be6"
    "pl"
  end
  language "pt-BR" do
    sha256 "c5464e38f9ba45c459c9928a2c0afd67aed5bb31dc0819e8e5f0c9f6f8254b11"
    "pt-BR"
  end
  language "pt" do
    sha256 "8f7da7ec601237c030aed428ca2f306dfe60bfdd6a822905f435772b31304dd1"
    "pt-PT"
  end
  language "ru" do
    sha256 "fb54884b3df70c5e4d8bac245bf3670cc360712e7f19c37d7aed84d9aa5f80ec"
    "ru"
  end
  language "uk" do
    sha256 "907e3ca8ff3289ca03e3ffe5cf0a6dddf43e3020b21c79d2abe5ec5c2b9795a9"
    "uk"
  end
  language "zh-TW" do
    sha256 "7c4d09c4c4cb83f0f94977bb9453224f57d017aa920c197da331f4d0ca08741d"
    "zh-TW"
  end
  language "zh" do
    sha256 "154b4eadf0164981387eaa7e46d754037ef72aa8a7b3bcc83752a95834cf8c2b"
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
