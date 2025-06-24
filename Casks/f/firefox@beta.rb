cask "firefox@beta" do
  version "141.0b1"

  language "cs" do
    sha256 "8fec3e5f0336f40b77e074fc4f75c6ec925cda08fee60650fac468ef33997420"
    "cs"
  end
  language "de" do
    sha256 "b6c86c2b95cdf2f68bfa99f08a677435c6ac89fa368c3f9e584aabe30f951bb8"
    "de"
  end
  language "en-CA" do
    sha256 "a9e36ed9f9d70d73e3f56a35c620a74d285abde5a912d864c11911f6bb04184b"
    "en-CA"
  end
  language "en-GB" do
    sha256 "820d8482b478cf7136b3ffac1ec7c2ebc3e81441be04e27fb0642cf56e31afff"
    "en-GB"
  end
  language "en", default: true do
    sha256 "3f7c3c36ca8cfe2500043a9036bc5815bcb9c3dd6b887af2498b175353d0a983"
    "en-US"
  end
  language "es-AR" do
    sha256 "4f7fae91a746203ba7c305dc72c54109fa39b4f667f7f49c2ee691a560b8b9ce"
    "es-AR"
  end
  language "es-CL" do
    sha256 "71a33ff58cdf0d83f7e41ff4da6842a3d5761ed6939ae0d1110043994717fb2a"
    "es-CL"
  end
  language "es-ES" do
    sha256 "b0ba0cb9ca5494a76889737e2aaaecce5f5d8b4f7c9ad7636e0405925afb13d1"
    "es-ES"
  end
  language "fi" do
    sha256 "522b917949e9d6ce5508eac739f9f6a7e9c607249f97575eca92a357078253f7"
    "fi"
  end
  language "fr" do
    sha256 "7c78c11eb6b2bdba522a9a38f58a6d8ebfde90530a5a2dcce56c46cee6d32c72"
    "fr"
  end
  language "gl" do
    sha256 "d824d7c2d312ef6a0ee378843beaee1e02deb7470adfcea01420db5644ae5f27"
    "gl"
  end
  language "in" do
    sha256 "01774e834ce69eec8aae36b678a99e907b281f5089a75d25eb6a531f5e1d97dd"
    "hi-IN"
  end
  language "it" do
    sha256 "9dfc55f2413cedaa8eed09b172e2734ae7d00557ecd54cc5521989493f5877cf"
    "it"
  end
  language "ja" do
    sha256 "7ac388997cd6da0d4a680cab9228ba3d827e65c9d107daca7c1c313ee88563df"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "7de06482d381f773b95665cd02a8f425190510fe5a0f7eea3c753663d2ae1aff"
    "nl"
  end
  language "pl" do
    sha256 "83270cd1d2ceb4905ac19430e403bcd662965ed4f01155164b387d7eaea7eee4"
    "pl"
  end
  language "pt-BR" do
    sha256 "6603e69d8f59a3c9524d4f1c54c52870efd080b55ac3a040921c688f342d70b9"
    "pt-BR"
  end
  language "pt" do
    sha256 "7f8ff94b36c5cb0041ed10c6ac9a737d8653002e76970bd0cfb51a7003e8fa94"
    "pt-PT"
  end
  language "ru" do
    sha256 "e909b2c396cabb6d60d04807710f8f95fbf96f4b4a2d28f054265f5c44c81c02"
    "ru"
  end
  language "uk" do
    sha256 "4a8a443e37712ec06dc03c948ede4e3b6a0caa541bd0bcdea21bf022c670c388"
    "uk"
  end
  language "zh-TW" do
    sha256 "447bed4b874f325bd8cb5e02f16d8298d7666287437ccfbbd9c05328f5dcc206"
    "zh-TW"
  end
  language "zh" do
    sha256 "d112f8cacaf6432e98676c6c075cf79ad01274c55443dd590ebfd9811e6ef7bf"
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
