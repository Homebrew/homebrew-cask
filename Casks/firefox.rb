cask "firefox" do
  version "89.0"

  language "cs" do
    sha256 "fca5eea67cd37fb09ae387e3beb3f9d95b8199351a14747920b451f76543dbf6"
    "cs"
  end
  language "de" do
    sha256 "54e7658951389828d7a69e3399e367930f32b970a41957af3c4d73afa0b5b2e7"
    "de"
  end
  language "en-CA" do
    sha256 "a776462b543c81cdf11928353936659ed398f329938a608e5a9f993d706003dd"
    "en-CA"
  end
  language "en-GB" do
    sha256 "e7df402548e2a3f5f191d0091c6f461e194909837b773edb8fd64bd3a90beeb8"
    "en-GB"
  end
  language "en", default: true do
    sha256 "433d54fe4ecc8d3c2dfc562f7bda007bd88c918ffc2ad85ae60e564e61c0067d"
    "en-US"
  end
  language "eo" do
    sha256 "4f1a8179b5bd64af16ba71aed1afcefff1a9acef122f2d8e72c534bc3364676d"
    "eo"
  end
  language "es-AR" do
    sha256 "a0b83fa4a6bf140a6041c0ea181cf4ab7f90b6e0d76cd258b3ccead905afc388"
    "es-AR"
  end
  language "es-CL" do
    sha256 "218269012a3cf9de21db5a503f1e1e6d71fddfb246161e09430bb8802c0b790f"
    "es-CL"
  end
  language "es-ES" do
    sha256 "7bf2336843b38862a9b28c127c2480d21679afc4837428f217bbb4156f012aa7"
    "es-ES"
  end
  language "fi" do
    sha256 "cf7bd2985307696be424cd24a42c9cc78d7981301b5f7dc466239f4f0b06ac24"
    "fi"
  end
  language "fr" do
    sha256 "b62f99e057d35a60ab9b9ce3c4f2c4c39efb67e352fc9a4cf5a370df011ac1e8"
    "fr"
  end
  language "gl" do
    sha256 "32735223d57e4251cb9f38adc8a7cf1998949aae819cfa0897d0c58c03c83e97"
    "gl"
  end
  language "in" do
    sha256 "3674838fd1cc9ad1331a1f6964f419bb2ac11ad127c8ceb8c5fe57a4b4857a8f"
    "hi-IN"
  end
  language "it" do
    sha256 "b6d2040d984a1452256a5d1e5002eeed1f6c4987cd596402a18b269b0f862c74"
    "it"
  end
  language "ja" do
    sha256 "3107c95f6c639d1d85a7fef955687701cb502a6fbd4556d588b0f8fce16cc312"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "cfa0ff63a2db6448164e47a96d31e804e8c177209921bc4fd47264b5df6624de"
    "ko"
  end
  language "nl" do
    sha256 "0a9140bd18c252fbd6d6d99f8d7ab812f70c1bfd7542828da8fdb2a5fa1b9d9d"
    "nl"
  end
  language "pl" do
    sha256 "8f0fafbb54a836407314f17b5bbc85db2a669d77b18c6b30219a9ca7b5cc9c40"
    "pl"
  end
  language "pt-BR" do
    sha256 "21c0f235eb69986a97db965a74d158198f42aa5988f7bc40c6129e47210018a1"
    "pt-BR"
  end
  language "pt" do
    sha256 "a23b9154d1381724645116599af5a587c9c612fe4475209c0653f10c97065ff0"
    "pt-PT"
  end
  language "ru" do
    sha256 "4650a6afd4598f6f92aef172b076ff8dea5bb5ba290da85a2ee0fd2a03fe015f"
    "ru"
  end
  language "sv" do
    sha256 "ef48ba2ecf8b731c96fbc6c702f688d4fd526ba37ac0ad5090b1dd7dce3cb48f"
    "sv-SE"
  end
  language "tr" do
    sha256 "f43db6f3ad7517267a37ab39673244dcee49c950e120c388039081143cd57bb3"
    "tr"
  end
  language "uk" do
    sha256 "f1ef9704cfc85d2476fc772e954b1402782a35abf5bdf5c7c7bbeb8e73fbe513"
    "uk"
  end
  language "zh-TW" do
    sha256 "86fab3b184034ff77496bac219b2e38efa8c43c56baf06b52c61425934ae89a4"
    "zh-TW"
  end
  language "zh" do
    sha256 "62e3a65daac4f54efa40e6faed96330a322b50d5dba9072f72ac5204661bbf53"
    "zh-CN"
  end

  url "https://download-installer.cdn.mozilla.net/pub/firefox/releases/#{version}/mac/#{language}/Firefox%20#{version}.dmg",
      verified: "download-installer.cdn.mozilla.net/pub/firefox/releases/"
  name "Mozilla Firefox"
  desc "Web browser"
  homepage "https://www.mozilla.org/firefox/"

  livecheck do
    url "https://download.mozilla.org/?product=firefox-latest-ssl&os=osx"
    strategy :header_match
  end

  auto_updates true
  conflicts_with cask: [
    "homebrew/cask-versions/firefox-beta",
    "homebrew/cask-versions/firefox-esr",
  ]
  depends_on macos: ">= :sierra"

  app "Firefox.app"

  zap trash: [
    "/Library/Logs/DiagnosticReports/firefox_*",
    "~/Library/Application Support/Firefox",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.firefox.sfl*",
    "~/Library/Application Support/CrashReporter/firefox_*",
    "~/Library/Caches/Firefox",
    "~/Library/Caches/Mozilla/updates/Applications/Firefox",
    "~/Library/Caches/org.mozilla.firefox",
    "~/Library/Caches/org.mozilla.crashreporter",
    "~/Library/Preferences/org.mozilla.firefox.plist",
    "~/Library/Preferences/org.mozilla.crashreporter.plist",
    "~/Library/Saved Application State/org.mozilla.firefox.savedState",
    "~/Library/WebKit/org.mozilla.firefox",
  ],
      rmdir: [
        "~/Library/Application Support/Mozilla", #  May also contain non-Firefox data
        "~/Library/Caches/Mozilla/updates/Applications",
        "~/Library/Caches/Mozilla/updates",
        "~/Library/Caches/Mozilla",
      ]
end
