cask "firefox" do
  version "96.0.2"

  language "cs" do
    sha256 "aa68a6ee047914679ecaa563e3fe7955a0f140ee67c69b5b55b520c8d8a81f8e"
    "cs"
  end
  language "de" do
    sha256 "7c40e2e75d5a415d247326c68b57a0154e239905ba283cbe61d80bd1d7516bfd"
    "de"
  end
  language "en-CA" do
    sha256 "a192f8ff5e5c95efb57d8b4ebf76a2eca0ee7157cce5a824eb417022891e797e"
    "en-CA"
  end
  language "en-GB" do
    sha256 "690a4af8bb382c04ae8aca036b8a4d27e9019f521df1fc2b19a38178e98f72f3"
    "en-GB"
  end
  language "en", default: true do
    sha256 "fc982f7dc530d28a2820c57281f0b5d7675fb721a1a20b59209fc71d1845042d"
    "en-US"
  end
  language "eo" do
    sha256 "685ded0fb9ae69c1ea6c600388b321aea6c549da4ed1e51c61245f372ada27f1"
    "eo"
  end
  language "es-AR" do
    sha256 "220135ba6cf80d9c5b02a7b9d8c5b0824ad0cdb647377a25414b1291415e29ee"
    "es-AR"
  end
  language "es-CL" do
    sha256 "675f30a0696d8f7972a9d080d53de8769b275b73b7e7a2d6717640d6e89acdf8"
    "es-CL"
  end
  language "es-ES" do
    sha256 "a8c6bab425657fc84d2166a15876153fa5929192cf605869652b0b4d42dc4d5c"
    "es-ES"
  end
  language "fi" do
    sha256 "24e14d59bf906a628777cfbc6429015d518c7e6bc8959ddad7cd6b5b03432037"
    "fi"
  end
  language "fr" do
    sha256 "a5c21c055d257ce76c472f59abe4da33f34549c537a65da957443f3eff9cd440"
    "fr"
  end
  language "gl" do
    sha256 "7d96c0a89dc59f9e6bba0749de56cde66dfe4257c6dc17901456c67598d12919"
    "gl"
  end
  language "in" do
    sha256 "7d594da30532cd51a2745cfcb01205caf7eaeef32ee812505f7f7bac0ec4991e"
    "hi-IN"
  end
  language "it" do
    sha256 "1ee553d068668ebed4c340eace8831fa3a5f14f45ec46a16a867a5f69b089a18"
    "it"
  end
  language "ja" do
    sha256 "8e7c7fd40d0796409e55462597533159f9e18c9693336f79849d272c6158c5e7"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "8a93140c427a311a85dc10b588db1ef7b695f69564e1e0625f676107fb6373b4"
    "ko"
  end
  language "nl" do
    sha256 "cf4d7644e5fad408ba05099970aa698bda1ef3f0e9f78a1ad094cfc10b2a4536"
    "nl"
  end
  language "pl" do
    sha256 "40afe4b4d910c61171cbc8685903d74599722840b9aa5e6299b55866cdec542b"
    "pl"
  end
  language "pt-BR" do
    sha256 "7fd41247f2a2c66918f6841d4023718acd1cd3d36a0efe18f3cd3382076d6df9"
    "pt-BR"
  end
  language "pt" do
    sha256 "b1eb622896716758e655132cb0c59010d1c435beea2ad1d7a6086a19083278a7"
    "pt-PT"
  end
  language "ru" do
    sha256 "49554faa7d604192288c40c64a55268ef521f7268087cbe0726741b896c41839"
    "ru"
  end
  language "sv" do
    sha256 "fa5e171889167a35f064c41664ac3c8c4abc10241c647406d65a7a1ef905f586"
    "sv-SE"
  end
  language "tr" do
    sha256 "177d0327757e2f3fd85acbee4025181dd23c1c75d1dbe98bdb97064e26c1390d"
    "tr"
  end
  language "uk" do
    sha256 "791dfb602b7bdc6d642a05d9db2bb5a23696d5c538febab5e0f990ace19dbcae"
    "uk"
  end
  language "zh-TW" do
    sha256 "e4db10f02f24e7333d6798fa01ceb0c1713a8ca57def4b4f684d2253a8fb8566"
    "zh-TW"
  end
  language "zh" do
    sha256 "5a92f53c6b5b75db03e97dd78ad440c638864e823fb303e5b87db2f610af2a62"
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

  uninstall quit:   "org.mozilla.firefox",
            delete: "/Library/Logs/DiagnosticReports/firefox_*"

  zap trash: [
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
        "~/Library/Caches/Mozilla/updates/Applications",
        "~/Library/Caches/Mozilla/updates",
        "~/Library/Caches/Mozilla",
      ]
end
