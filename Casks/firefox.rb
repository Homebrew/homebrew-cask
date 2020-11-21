cask "firefox" do
  version "83.0"

  language "cs" do
    sha256 "87f74b6db3e51b78abb3987adbd240ef5af113c40bfe0581cd32b88dbc10bdcb"
    "cs"
  end
  language "de" do
    sha256 "4babd68f3cded3745a810601761d04e23df60daef21cdded3d48243b757273dd"
    "de"
  end
  language "en-CA" do
    sha256 "6138ff8d6d88ed1f4ca53bb43b38b74d936c50bee949bae818629c7c28031c97"
    "en-CA"
  end
  language "en-GB" do
    sha256 "71f7c9adf76abf207d75cf23e4a09292fb844d5ddfaa7641d6cc5e349cc5e322"
    "en-GB"
  end
  language "en", default: true do
    sha256 "7e527884e40039c6c97929591754b92394aa965fd61d42158fea5df075636ec6"
    "en-US"
  end
  language "eo" do
    sha256 "1944e9c13f99bcce499c8a296d05b6135764ab30839aedca8a2da3845f1c496e"
    "eo"
  end
  language "es-AR" do
    sha256 "64cf5f6efef1fa2c83bc9d21a5731fdcdc5a7c97f3ceacd22454470f1eda4335"
    "es-AR"
  end
  language "es-CL" do
    sha256 "e392c620fe23ff411afb2ab8c78e3770b41355826ae7b1f701a87eb30415eddd"
    "es-CL"
  end
  language "es-ES" do
    sha256 "2e6b7c4051ffb3cd277b1b90d03fe1113c27dd2129768a9aa70b8704db63102d"
    "es-ES"
  end
  language "fi" do
    sha256 "956f32825449b1e64decd28c971eca8c98a83e6db0220efd1c900f497d35293e"
    "fi"
  end
  language "fr" do
    sha256 "79a2a6c95d6b4bdbd01f28006d00aa7278dd452856b19a516860e976fae4c008"
    "fr"
  end
  language "gl" do
    sha256 "9af588f295f99dc9a9238fb73af6c617a90171663471011beb6e2e69c2599ba4"
    "gl"
  end
  language "in" do
    sha256 "45e33bb055cada94143f822e2d8dfff6786eab22bc6f30c0d7fb1c2acfc213a0"
    "hi-IN"
  end
  language "it" do
    sha256 "69b5e6509ae306da557703838ca5dc217691ba468065678cda4f48586bb0a4ec"
    "it"
  end
  language "ja" do
    sha256 "c33f9d33b516bb43da556933a52a2a2094b512a9eed99a46020a045549a86b2b"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "604d1d2307a177d48040af6aa6058027a444a4982e41e0cd2a489af2a74a45d7"
    "ko"
  end
  language "nl" do
    sha256 "50749d012329c5de0e01adf325b38d032f7b0d2028084e59f2c50677abdce9b2"
    "nl"
  end
  language "pl" do
    sha256 "b082addb5fbe48e4802d5fd967861a5b424fdbbfa493b6e5e0ba1469fc8d0bd1"
    "pl"
  end
  language "pt-BR" do
    sha256 "f2dd8eeda07b0c1ff5ebeddf582be84f81dcafb3c7fa9bc8925e75fa6e43a900"
    "pt-BR"
  end
  language "pt" do
    sha256 "e32f07b69802f0e23b606fbb27e329de103f512da4c002fb62dd5de8110ba474"
    "pt-PT"
  end
  language "ru" do
    sha256 "328c1ea2a35561fe4a4853afe94801002e2cb8375d70edcac730591e796f5062"
    "ru"
  end
  language "sv" do
    sha256 "29282522a1551ae30485d9eb3ea1347d4401e090c2958c279b9e0069d159c54e"
    "sv-SE"
  end
  language "tr" do
    sha256 "147702fab2aab2c7e966c754f3ca6969e61a1c031ee3174ceb5d4a37a8b1b7a2"
    "tr"
  end
  language "uk" do
    sha256 "d3e1b1cfc76decb9f854eb9807ceb38b39b4a41500839b8b9f1c37f04bb50c9d"
    "uk"
  end
  language "zh-TW" do
    sha256 "07d85d9d4c7df91a7d35d8f67f2b5905fedcedf1ebbd2d0798cbd4892f3fcd2f"
    "zh-TW"
  end
  language "zh" do
    sha256 "cbc86f5c9cb8fff5c156747c0729cba4456535c56255960bd769e26cd4956045"
    "zh-CN"
  end

  # download-installer.cdn.mozilla.net/pub/firefox/releases/ was verified as official when first introduced to the cask
  url "https://download-installer.cdn.mozilla.net/pub/firefox/releases/#{version}/mac/#{language}/Firefox%20#{version}.dmg"
  appcast "https://www.macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://download.mozilla.org/%3Fproduct=firefox-latest-ssl%26os=osx"
  name "Mozilla Firefox"
  desc "Web browser"
  homepage "https://www.mozilla.org/firefox/"

  auto_updates true
  conflicts_with cask: [
    "firefox-beta",
    "firefox-esr",
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
