cask "firefox@beta" do
  version "136.0b9"

  language "cs" do
    sha256 "d36ec0b602a9ba55d6f2d4150c7beae996a6428c4d8b3c2089cc2b9147660c6b"
    "cs"
  end
  language "de" do
    sha256 "7cc82e6af98404dd413da1e43aa71f559460f0fc28752ec7697a4639e51079d4"
    "de"
  end
  language "en-CA" do
    sha256 "a75f244d98e57e6ac867cfb1b7d7e1db84c0b53015bf0280f5617aac54652997"
    "en-CA"
  end
  language "en-GB" do
    sha256 "154615da418975a5e41e81bf8c2fc5239e3ff24b7742a95338019538a35559f9"
    "en-GB"
  end
  language "en", default: true do
    sha256 "86653a48ef3e3f9d4b9c6cfb37c5e3171c052180bddbbee8d78ca7b71bdbcb4f"
    "en-US"
  end
  language "es-AR" do
    sha256 "f9dcab39ddbc4107c246c84c93aeaa5506c13978ce9c40de6292f4bd531dd865"
    "es-AR"
  end
  language "es-CL" do
    sha256 "08332ea13244195ef242f41e649128d890d62abe33031f04984ffe4b2dbbe01f"
    "es-CL"
  end
  language "es-ES" do
    sha256 "1fcf4b4fa4baab35f1828ce26cc23df1acf6abffe4529576a3e0aad7018bcc42"
    "es-ES"
  end
  language "fi" do
    sha256 "bbee367de3eb486847f55906ddbead37e773db2e508f7c967ee447a5b1dc841c"
    "fi"
  end
  language "fr" do
    sha256 "bfc0d7e395ee99001c4d9bf3cdcde3315a4ea23fea37109962f1ef34b09cf08c"
    "fr"
  end
  language "gl" do
    sha256 "e4d42b1d09c15369f01418e8e4941928f671b973b3bd3eb196c0a59456f35901"
    "gl"
  end
  language "in" do
    sha256 "c96444a13a28635afa6308913a9f1f53921d78d7c0224a9640583cf8c2d3340b"
    "hi-IN"
  end
  language "it" do
    sha256 "a1daf7b95541fbc3f8d53d4c03e2650d7a495333e663930f7212cf381e7fa3df"
    "it"
  end
  language "ja" do
    sha256 "0cb15bde187dc00c89a42032899605dd48706a5c449aeddb2478afa1d01c05f4"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "ced9852c6edcb211767f43dd8ade5afb072aeaf6cf6ecd45f136d3e5a26fca61"
    "nl"
  end
  language "pl" do
    sha256 "dbdea11e93533ed40b4f7e6079be3090ce1cf65a566e5311cbe59e9e22f78cf9"
    "pl"
  end
  language "pt-BR" do
    sha256 "f082da5d8361ca096741ef5b2e208b408d8f789c8eed0c0d704e405eec0ead09"
    "pt-BR"
  end
  language "pt" do
    sha256 "9ff5116bb2353d0caa3dc76e8d5f30ec1f7cf88fd6629f842d1d32cbef99bf62"
    "pt-PT"
  end
  language "ru" do
    sha256 "f7548a8ef0e35388b07f7ffc02a279de2bd4b000a94bd8afd5a1016d66b031f1"
    "ru"
  end
  language "uk" do
    sha256 "9192b79c2db15d52b7154ea5ed58531bfe5d87e287180653497cad38d92f374e"
    "uk"
  end
  language "zh-TW" do
    sha256 "319ff396311a1297484b531c65f078c6d43af3d167501a0dd94f21d0fabe2e71"
    "zh-TW"
  end
  language "zh" do
    sha256 "f546ee6d034336dd66dddaf561f1f23ea97c1af7cc5fd4044791eda4dc6724fb"
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
