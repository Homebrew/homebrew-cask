cask "firefox@beta" do
  version "137.0b3"

  language "cs" do
    sha256 "78c5b8f0b4669c795ff26bf2522db768a5704ffe52ae3f20d180a58f4bb530c2"
    "cs"
  end
  language "de" do
    sha256 "645a9ee980bfd361c187612d0bf3f6f29cbc32307df5a06b092c9211b68dc21d"
    "de"
  end
  language "en-CA" do
    sha256 "262fbe3345cee2bc40529ef88331cb57bf0e4f0cb3691d7593d60f79422bccc1"
    "en-CA"
  end
  language "en-GB" do
    sha256 "a7ff9e077f4d4b9e29e623ad1abcadb6348ca35ba54150b9f33849b5154dec73"
    "en-GB"
  end
  language "en", default: true do
    sha256 "e09552e0650b2768d169e8917fa86ed9608a1769de07f4cd14412771631c8bb9"
    "en-US"
  end
  language "es-AR" do
    sha256 "30e442fac94a8cf43ac0201b350419ed06726754a359144e9861939e87b151af"
    "es-AR"
  end
  language "es-CL" do
    sha256 "0f0ce1329c261d664f7de433d94a81a86c358591a4fa8dbd301ade07bd5a01f2"
    "es-CL"
  end
  language "es-ES" do
    sha256 "80915dc8d8d4ad3e4b9d70e1278650f8540fd348ce7af459219ebcc8a25a757c"
    "es-ES"
  end
  language "fi" do
    sha256 "882f7179bb1e93fd1b501254085d38c15359abcb43d026f9e89f15568fe26df8"
    "fi"
  end
  language "fr" do
    sha256 "db4c13b66b39bfd1f37995b80766e9a09aac87795875a4bd41515fb0bb3b7948"
    "fr"
  end
  language "gl" do
    sha256 "aa7e5d501181389f95c8b16ed263df1fee5fcce1dcb3fcff608ea26aba7d9c1c"
    "gl"
  end
  language "in" do
    sha256 "1ab9b8bfea6c74e5f28aa85e79f0ea4b6560912b8ef0d93ab662fbd677bed757"
    "hi-IN"
  end
  language "it" do
    sha256 "0ebc3f3ed2a0f42b58dfd0ee85c090664cec7ed5a824fcee246073f23a861193"
    "it"
  end
  language "ja" do
    sha256 "88aa4b8b738d16a92771b34fd796dc3d1f6f464e406663681cc59bf3dcfb2e16"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "f7d446f2029708e32453c8be4eedc7466de6936741a6dd0bc9c18d1dbfb874fa"
    "nl"
  end
  language "pl" do
    sha256 "510e1a04eb10be87c020b74da12564b7cfbb82dfbc6d924875c899b88c08935f"
    "pl"
  end
  language "pt-BR" do
    sha256 "c5cafc9139cc7fd316da921b39dce58958f87550a59177e77ae0e567dd21bbe2"
    "pt-BR"
  end
  language "pt" do
    sha256 "41bb35709d38213dc2815192df2137bea2927ecda7fd46b6fe2b00880df92f2d"
    "pt-PT"
  end
  language "ru" do
    sha256 "c92788bdfa0b07f0e5e11b8c12ff39c2e60d218549edd7fd25d4d862f8aeb753"
    "ru"
  end
  language "uk" do
    sha256 "d1c199746114e250b63b9413ebf618f5835cd70ec572fc515598d5133bdf21c7"
    "uk"
  end
  language "zh-TW" do
    sha256 "22d812ad62db7db95dcc2747d3a9a9d68f7b72a4f458beca262fdf8f922deb7c"
    "zh-TW"
  end
  language "zh" do
    sha256 "0bf63bf9e60fe2cf9092a2343b76cfab793557bc18a1c9e33f9ee41e2a8bb6d6"
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
