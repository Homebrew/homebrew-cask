cask "firefox@developer-edition" do
  version "154.0b6"

  language "ca" do
    sha256 "e778f8fe1a9f47bebb3606b5cc5e4ff052590ee07afb6aad89dc838f8d316066"
    "ca"
  end
  language "cs" do
    sha256 "87d5d42f2bd6de68462c62610f4cd745ce4e90fb82b56f29d5c1609b7d6e0d82"
    "cs"
  end
  language "de" do
    sha256 "3009ce67858c324f628fb441ed61d97dd38c6255f6b8aa517c6b2fb79112f3f5"
    "de"
  end
  language "en-CA" do
    sha256 "abe0cd5e4bb9a55d9d7ecf75b75c1d6624ce1bb4e17f4cd4ae19d0ea0cc5ee65"
    "en-CA"
  end
  language "en-GB" do
    sha256 "d9abcc090fbb1ba3c4cc46b8a3226f3d9eac0c80963c2e1de07819ca835a9cd4"
    "en-GB"
  end
  language "en", default: true do
    sha256 "a0fdbd1e966fcb138e0f891cc798022131a5784bbdbde777be8c64e3d00d3066"
    "en-US"
  end
  language "es" do
    sha256 "f0abeab32c1288af3e21cdc7196cb6239ce361f490dd236125bd7e1cb09df1a6"
    "es-ES"
  end
  language "fr" do
    sha256 "f23519f37963c509d26c99cc0a78f005553d1e8a7d23c6c49975e2e9704beafe"
    "fr"
  end
  language "it" do
    sha256 "5a101bdd289f7aa49ed4e0a74c3857c0b720de2bdb6efd8019564ad9ded950a6"
    "it"
  end
  language "ja" do
    sha256 "fa153c284d035f49d0c085b736feccf6dea2b3ef79b3261e115c86b6352a6a4a"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "bbeedf77058d258464b42468a060ef00886e1a40cd1b0d2940d032602a2cea0b"
    "ko"
  end
  language "nl" do
    sha256 "86f95784535e0b3fd0c3eb7617fc5aac0822dd113e10a5776ce94f352904b06d"
    "nl"
  end
  language "pt-BR" do
    sha256 "5bba42632c22ef78bfbfc3d4d874f3a51841a67cddb04af66e6ed8a2f73272e2"
    "pt-BR"
  end
  language "ru" do
    sha256 "dc269165420ac2e1d55efda9d6d9eb59703a3360e850fb1fd4ad506c92e79cf6"
    "ru"
  end
  language "uk" do
    sha256 "d43be6f9eebd3a0465a11ccf7125c836e47f2210855f9a617b6d0b43605d5a59"
    "uk"
  end
  language "zh-TW" do
    sha256 "1b8e8165f504777aa2ea365bb30c16be1f02e8e75f1215ad3996d753b4dba05e"
    "zh-TW"
  end
  language "zh" do
    sha256 "85709162aa1e3c4572cc545287ab17dbd5195b624cf3a2dc74debd2fcaab5364"
    "zh-CN"
  end

  url "https://download-installer.cdn.mozilla.net/pub/devedition/releases/#{version}/mac/#{language}/Firefox%20#{version}.dmg",
      verified: "download-installer.cdn.mozilla.net/pub/devedition/releases/"
  name "Mozilla Firefox Developer Edition"
  desc "Web browser"
  homepage "https://www.mozilla.org/firefox/developer/"

  livecheck do
    url "https://product-details.mozilla.org/1.0/firefox_versions.json"
    strategy :json do |json|
      json["FIREFOX_DEVEDITION"]
    end
  end

  auto_updates true
  depends_on :macos

  app "Firefox Developer Edition.app"

  zap trash: [
        "/Library/Logs/DiagnosticReports/firefox_*",
        "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.firefox.sfl*",
        "~/Library/Application Support/CrashReporter/firefox_*",
        "~/Library/Application Support/Firefox",
        "~/Library/Caches/Firefox",
        "~/Library/Caches/Mozilla/updates/Applications/Firefox",
        "~/Library/Caches/org.mozilla.firefox",
        "~/Library/Preferences/org.mozilla.firefox.plist",
        "~/Library/Preferences/org.mozilla.firefoxdeveloperedition.plist",
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
