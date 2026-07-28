cask "firefox@developer-edition" do
  version "154.0b3"

  language "ca" do
    sha256 "2cf8ed400c2046efee47ad74024dfa2e471c79657ac5d0fb1400d55266724152"
    "ca"
  end
  language "cs" do
    sha256 "753a100cd6e97362424809dcb8315b9a6d632b2b9ab99b934a83a94dd52583e2"
    "cs"
  end
  language "de" do
    sha256 "2262ee92a72cbf12a3f79910029cf2317e439bd6e2babad2479df051a99935e9"
    "de"
  end
  language "en-CA" do
    sha256 "509d03dc6f794d8aca5f5b3b1037b0c112b8d1b3f37fb253e293e04c1984150b"
    "en-CA"
  end
  language "en-GB" do
    sha256 "3e6646cae43a0663d59f9fdbe677d7f8cb7ddc5f195bcf76b27d64745533a8b4"
    "en-GB"
  end
  language "en", default: true do
    sha256 "a90d1dd5c5cad5fdae375968a39149fd337574834bdd9cdaef9ef7be9bc203b0"
    "en-US"
  end
  language "es" do
    sha256 "9d61d8f35949534890c2730f879373c9682f8cdccde82d2671a45e6cb92b0b8a"
    "es-ES"
  end
  language "fr" do
    sha256 "3e37b4505c4242d8511f8107ae41dcfb4ed1b27bf7c91f4c4fbb1449756900bd"
    "fr"
  end
  language "it" do
    sha256 "2fa48c8b07c5431cef9097187fd2d822ff3f985beeb749bb47a8cdfd3ed8f380"
    "it"
  end
  language "ja" do
    sha256 "16ffe5f62ac9fd9f4ff665c46d428002eebc93cf098e7c78d68bfae2467fdffb"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "78b3d61362a02fdcc37bcb6610256918ec136bc4b5de545119502a0ff5c873a1"
    "ko"
  end
  language "nl" do
    sha256 "38d7fce646dddb9c9ce4c370a6bf0a7c939bf141fe7316b791fdd1cd4f0c387c"
    "nl"
  end
  language "pt-BR" do
    sha256 "eb965ec59643d531b99fae287d0f7198ffbc36cf1a018dab983b3fb65d1c80e0"
    "pt-BR"
  end
  language "ru" do
    sha256 "6062e03c8ec8f5e7f73edbf43bc2d7e045e307069c0d70e02db1820d138390aa"
    "ru"
  end
  language "uk" do
    sha256 "09159d1ba8fcaaf6573040b5c0f2660fe498cfae04a13915b1a338814f3eaa88"
    "uk"
  end
  language "zh-TW" do
    sha256 "c207da67651c56bf3cbee8cec05a4a829f350cd531584b6e7e318c36b70b4dfb"
    "zh-TW"
  end
  language "zh" do
    sha256 "49bf6e3f23ff846d771ed6cf1a6387ae5c08e76095e56dbe6ee50f2acba8bd3e"
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
