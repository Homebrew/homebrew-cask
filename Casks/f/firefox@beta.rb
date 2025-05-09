cask "firefox@beta" do
  version "139.0b6"

  language "cs" do
    sha256 "d1fc26504c1b0f5feda2b90b6addb6e8bd80cda9aac7fe101acccd3af58057e9"
    "cs"
  end
  language "de" do
    sha256 "6db2a28bc1973cdae425039ce61d8d37f69f08733c5be4540905d4cae40e941a"
    "de"
  end
  language "en-CA" do
    sha256 "f5151dd34722f70c7342d5864b3753f0157f6d15b38f4d8b4922ef021704f75a"
    "en-CA"
  end
  language "en-GB" do
    sha256 "c35b6bddb7fd79af8eec3f6aceffaabb3c1eeff5d72abccf394a8430dc32509b"
    "en-GB"
  end
  language "en", default: true do
    sha256 "d2fa2ef24f80cbadab7dfb31639f76d8a530acd1653bb8a437ef128937ce1019"
    "en-US"
  end
  language "es-AR" do
    sha256 "7219e1a34daabad90b0e6c6848bdf49d7aee2af73d7483043a375467d9eb5663"
    "es-AR"
  end
  language "es-CL" do
    sha256 "2ab2f32b6c5bcc8d2a6d872583a9b8450cd365a995415313039a92f2ef7c1055"
    "es-CL"
  end
  language "es-ES" do
    sha256 "22155192096529a80cd068e22df9aec3bb53df6c6c82d275c9eb94f39a2a5222"
    "es-ES"
  end
  language "fi" do
    sha256 "c65e86477e9cc64715e37f5626785c4b989ea66eabf8e8168594529a44d6d01a"
    "fi"
  end
  language "fr" do
    sha256 "ef2893b2b7558ba2509cfe1044938ddea7868fd6c404f968b90dbb0238795f39"
    "fr"
  end
  language "gl" do
    sha256 "4bc47ac3321f0b73d66ddc5dd15a5fcb4108dd34ef14a0c7817436ad32da2349"
    "gl"
  end
  language "in" do
    sha256 "ac24b5a0f78fcb3ae3e1ed8a1b8523a90808a5474e10d97b44674c76b71c6d27"
    "hi-IN"
  end
  language "it" do
    sha256 "4a8e3ff6aeeeb74fa7e8e312d37215938f9a80ee249aaa9d6cdc18ba0ddec347"
    "it"
  end
  language "ja" do
    sha256 "421c41199af5f3606b066de0b8a3209dcb298b8c90d08138a3236a6d05ce1aa4"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "6355767301565fd5bbbdc03adb31c5b41ab253b4a80a5325fe8f749231fdca7a"
    "nl"
  end
  language "pl" do
    sha256 "f9844ff8ed400c813d9487ecc0625e7bffcf5a2e4ee1acc9dc752b979b13cd27"
    "pl"
  end
  language "pt-BR" do
    sha256 "e9d0cddeab812b47ee753bb124405103ab9d2a8af016cd246e46c742343f97af"
    "pt-BR"
  end
  language "pt" do
    sha256 "20e486256defeddcb6b76831db7b76ded4192cb0770986f2473132d81982d617"
    "pt-PT"
  end
  language "ru" do
    sha256 "b15448a76dd35d91c488dca9cb360d80afff890823445a038e80413f92a808de"
    "ru"
  end
  language "uk" do
    sha256 "aa36bec3e34f2d298565d9a162c8029eafb3a092b08369698fa64f3a69a14eda"
    "uk"
  end
  language "zh-TW" do
    sha256 "ff37935a62a82c1d6452d56cc7f2d633653fd0db8f1631d07394628f1dbbf92c"
    "zh-TW"
  end
  language "zh" do
    sha256 "f0b0fc01055ea8aa58c4dc58b7fe206d58cbf1447ae4a02d9579f289de4e6c12"
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
