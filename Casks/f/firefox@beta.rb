cask "firefox@beta" do
  version "139.0b8"

  language "cs" do
    sha256 "afa3b383140deb928e386951eb1b6fa6b2ea0f99543c094f5282092450195392"
    "cs"
  end
  language "de" do
    sha256 "551b1bfc10334d1fb049a8dc1e5f25e9b13a078619c882f75b9c8df7ba2e71f1"
    "de"
  end
  language "en-CA" do
    sha256 "2bc55e005b51ebb8417c276ca37ef8d00c02ef9044c74bbfc6145c13aa1158b4"
    "en-CA"
  end
  language "en-GB" do
    sha256 "11747a85a0cad2bfd49c114dc4e8d4c28405493a5f059ced99931a68ba19bf9c"
    "en-GB"
  end
  language "en", default: true do
    sha256 "9b66be9dc88be6f1183f9b3c5686825a882ed107548736799d83e571f74f415e"
    "en-US"
  end
  language "es-AR" do
    sha256 "818ebbe10e2abd6ebc55a1d4129ba9cc83be340fa75a5523945b60f436f5feaa"
    "es-AR"
  end
  language "es-CL" do
    sha256 "f4fb29914fd044b3c428914c5ab6b840d2d873c5e7ceb5ecf51ec677dbaefe0b"
    "es-CL"
  end
  language "es-ES" do
    sha256 "9525d7c60d1c7a09d75b4485f0aab97caa0aba5be4da67c27093526ab57f1136"
    "es-ES"
  end
  language "fi" do
    sha256 "822b454127f1a205203d9dd374f4684a86a45d2521a30fec37ce9807ac3e5881"
    "fi"
  end
  language "fr" do
    sha256 "123904a542bf79119141cf70ecb5b1c802b7cd0bb09344a8fecd8dcfb1454263"
    "fr"
  end
  language "gl" do
    sha256 "77cee4b0c88f3189c9cf9941595438d46b166b1811da96ef12863ab717f1bb77"
    "gl"
  end
  language "in" do
    sha256 "cff38120a29dc04b5c300abaf5b5999b04753ba76c4d868dd624a67e98e02cd5"
    "hi-IN"
  end
  language "it" do
    sha256 "91283c86d448bd83823e4f1a9b408172aba81061fc3b7c503b1d67ade4fedfaf"
    "it"
  end
  language "ja" do
    sha256 "a1d1a874503fbaa8b7b4f215a8c3881c2ecdb4a29c2f019627b42b1ca2ce7293"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "10a8117afef994daf0697f8473b822f4494b4b2bb334cad9854336f0d6a55fde"
    "nl"
  end
  language "pl" do
    sha256 "152352b8cbf51e629bcfa5dcde7c65db429338f4b4fba3136f827b12d12eb835"
    "pl"
  end
  language "pt-BR" do
    sha256 "0cd1948d4b02be2f8291aa67a2a53a5f598a15edac60d9faa195c504de6846f9"
    "pt-BR"
  end
  language "pt" do
    sha256 "740f74ccd835ee692c86863f2920c573ca027e898aab13cf423868b5c8686471"
    "pt-PT"
  end
  language "ru" do
    sha256 "a52f5b5797f59881f01ef467ec84f7459462abd4a5f4e15ff6220641f7999c9a"
    "ru"
  end
  language "uk" do
    sha256 "9d6d658836a641eebdd63cc4ac3a2e31423ef79015c8908ba8d8d58fdb356d4c"
    "uk"
  end
  language "zh-TW" do
    sha256 "374e0590f5d5a5c22e859e273189a4612e905200c50041d97458f42e3ba78d04"
    "zh-TW"
  end
  language "zh" do
    sha256 "119ab35cc4f0dfb957877b829cedc8609215e8fb6a9f5d956f03a22527032ac6"
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
