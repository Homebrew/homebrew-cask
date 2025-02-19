cask "firefox@beta" do
  version "136.0b8"

  language "cs" do
    sha256 "f86f452677afdac2b6c84b3b10bbfd974dc4652839a5d309e34d47b61e5482ca"
    "cs"
  end
  language "de" do
    sha256 "50dc333d69129634b84111baed83e8516017c710cc97535e24dc1b7436c848bc"
    "de"
  end
  language "en-CA" do
    sha256 "87de344a19023b68b26b65c78e149d2fd00aef49b3978b1cd4645394dc6fc5bb"
    "en-CA"
  end
  language "en-GB" do
    sha256 "222a292d57e84a7efd322154a2171bfb42c72cbabb74cc045346bb699b2ddb44"
    "en-GB"
  end
  language "en", default: true do
    sha256 "b4d48ad9d295d6abbf8e73baa3b9513b35793589e8cc615b71449145b06fbc37"
    "en-US"
  end
  language "es-AR" do
    sha256 "3c432afca7a865600d8699454a5f3edc437d8305950afcd36f16db6421de1b2d"
    "es-AR"
  end
  language "es-CL" do
    sha256 "3145ddeb9e00aee70856ae8f7cf6cb08bc1bf4e268e159732411f86b7ef5acc6"
    "es-CL"
  end
  language "es-ES" do
    sha256 "d0b306ac6971ca1f294a669477e02f919d6f469e6c6145486ab6173bc0fefabd"
    "es-ES"
  end
  language "fi" do
    sha256 "22403ee47439bd61e7dc426b9a69b25d5202ffe9fac6642e14ab19494792a1d2"
    "fi"
  end
  language "fr" do
    sha256 "4bfe2336a765883c7e06f110c456f720e6925e8b2642bf069759fcdefa50d246"
    "fr"
  end
  language "gl" do
    sha256 "be4bc0895b70228a54edbba10abb5a35b03f1861ff4df49f4a6c4db5cd306167"
    "gl"
  end
  language "in" do
    sha256 "b6b79b6521b20d897bfe375d7b03807ae9b24704258accc03a359e111d857b05"
    "hi-IN"
  end
  language "it" do
    sha256 "7b1a5b3da8898337a98a75bbb1dbefd00386ad3c89f947527e445ba157fe67fd"
    "it"
  end
  language "ja" do
    sha256 "c2910ebd6a75a040a1fffa7ff0b5072ffb025e7108c47ae467a517e7166e7ca9"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "c04067acb52b889bf7d5a9106ff9694e9ab728e3b108be513cab30adea200436"
    "nl"
  end
  language "pl" do
    sha256 "dab3e99a6200a4efcf5f0a4e18496d8a4467d43b9a1b768bb3d3d307ed66a82a"
    "pl"
  end
  language "pt-BR" do
    sha256 "40aefbc8f96aa9c80fa40e5f36316b1bbc36c617fee8e872c8dfe55b7c468964"
    "pt-BR"
  end
  language "pt" do
    sha256 "f108dd9b825a3930ea39363176b29c254752817e1fd38c44690c3163acb3b96b"
    "pt-PT"
  end
  language "ru" do
    sha256 "ae28722d0b1aa03af8831e61172e7b42b6f5c3c39618e3f5b3b48bf05c5e67e6"
    "ru"
  end
  language "uk" do
    sha256 "99ead8dd2ff98b232bb312e8fbf5767d7ebac7ffaa49a348ab1d871213767a9f"
    "uk"
  end
  language "zh-TW" do
    sha256 "4d6ef620ed27a61ba121e4b61b60181c37dbcf472db0d37d9ee387e7fa4ad554"
    "zh-TW"
  end
  language "zh" do
    sha256 "85364d558683aa18bd0dd1ba66f9e579649ff0124a448ea19af3d935dd179c17"
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
