cask "firefox@beta" do
  version "152.0b1"

  language "cs" do
    sha256 "dac20a1c62bf262e9165ac6a65c72a97d543c0c91a19fab50a6e90bb82b5f3f9"
    "cs"
  end
  language "de" do
    sha256 "f89e53550c35b185bd389cb3bbf9debd7c25c070c3d7e84a5d455a75992a52cb"
    "de"
  end
  language "en-CA" do
    sha256 "dec49cc808c4956df68ab5e3b286ebb267e345fdebe9409a89efbfff529e4c39"
    "en-CA"
  end
  language "en-GB" do
    sha256 "9cfd9ef588686d6b6d46336bd952ecff8ebddda9d9c092d7e36fb2e3fe02e38a"
    "en-GB"
  end
  language "en", default: true do
    sha256 "5f215cf7b991353990efea8e6450efaed9451a985f5b783c5998fa9b7ae88157"
    "en-US"
  end
  language "es-AR" do
    sha256 "cf4ce6a4857d347c72162d8b6647cfe628ae6abeaa3c165d008244955d2b7a10"
    "es-AR"
  end
  language "es-CL" do
    sha256 "7ae8ee2e0c31c6328c38c232bf3b2f75e9ac1269248445e5d9283bc21442d270"
    "es-CL"
  end
  language "es-ES" do
    sha256 "64345d420d71b86dffcee2622850dd9e2d63e8ddd2c5e50d8e4615e28cc376d2"
    "es-ES"
  end
  language "fi" do
    sha256 "f2217c543e1de270a1ba695987a730ee698d69dad20d578faf05750baa70d8e8"
    "fi"
  end
  language "fr" do
    sha256 "bfe6bb7fd2b4d03d9e925be40cc121cc967ac840e961b0ec2c534a5734ad64a5"
    "fr"
  end
  language "gl" do
    sha256 "1595dd12a890b625904c6500d52d64f540c9d377867ba2ffafe7d43dcf4107ec"
    "gl"
  end
  language "in" do
    sha256 "67324e8dca0a580d844ad3ceea388aa0f063b5ac8f6d0a20813ad65f72d3faf7"
    "hi-IN"
  end
  language "it" do
    sha256 "40aa7754017f6d998da2e48972bcc647e599997410881731bb95064730c7e881"
    "it"
  end
  language "ja" do
    sha256 "4a40b91e65b61c2a459bbf2d036a15c462a72b255f767ee6e0998fc4e4a55b94"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "33d87a9129357dd39dd5d5a81c4363b9d2785800f4bc82a527691423014919a7"
    "nl"
  end
  language "pl" do
    sha256 "87ebe25a851d5be4a21af341153aee96e57870deda615f58f79fc1594c2bafdd"
    "pl"
  end
  language "pt-BR" do
    sha256 "af6f91d5941048bdcb4557dcdadafbf07c2380742f39aa75f40ab5b9ef3f6dfc"
    "pt-BR"
  end
  language "pt" do
    sha256 "58ae5f7be3ba395e930edbff2e27c39d53a5a574cb5385b9aa5c71bae4ac3eff"
    "pt-PT"
  end
  language "ru" do
    sha256 "7bb7118ad3105b6d71ada16580951e5bf2234cb8dd5eda81d37d28167245ce7c"
    "ru"
  end
  language "uk" do
    sha256 "04f543d64fe8060809f8c0f930843f779ed1a2e5bacf4c900d81f213041b12a4"
    "uk"
  end
  language "zh-TW" do
    sha256 "75c865e5a3e53b3bf995b387b3f81ee0733ae9426aa054195927ffa6bf95beea"
    "zh-TW"
  end
  language "zh" do
    sha256 "e2794bf5e3db68ac92d9788b1d1d4e5e25656d12967369e99582d15b76f23535"
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
  depends_on :macos

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
