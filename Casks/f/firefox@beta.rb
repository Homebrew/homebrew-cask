cask "firefox@beta" do
  version "145.0b6"

  language "cs" do
    sha256 "9983b873dfdd4bbff5d09f849c84c251938a95f38c807486a3e1b3c9c42951bc"
    "cs"
  end
  language "de" do
    sha256 "c00eedc489c6282a4dfb8fbc7a4f81f4aa49ef64e428463a8f63853d90410a35"
    "de"
  end
  language "en-CA" do
    sha256 "bf42645baefd049e2f7d5e8f5bad202918e85dbae2003804f72e76b22d5dd045"
    "en-CA"
  end
  language "en-GB" do
    sha256 "76e3fb99d34516d968384c7d1e1f81af3ce486264771c5455fdb7074d9f5e4ab"
    "en-GB"
  end
  language "en", default: true do
    sha256 "cbd701f0312cd6893577dfaae03c150eb83232deb952780e4b16dbe912bfba5d"
    "en-US"
  end
  language "es-AR" do
    sha256 "2412d755b3c8618d7b0a5d134bd8475aa18456517ce23d590c188514b393c850"
    "es-AR"
  end
  language "es-CL" do
    sha256 "8b9c3d753c0f3a2e9292d9bd2c25b7a16a668ab5ce13096962d5809a9777cbdf"
    "es-CL"
  end
  language "es-ES" do
    sha256 "56540c2ad5f1012129e016902f5132aefc930b03cff0b4d55feb1d8dac2c0b2a"
    "es-ES"
  end
  language "fi" do
    sha256 "aaa20a82f9844c396ca3a4c7bd4c65b20a6106ebb3c60330b4a8187b58deb679"
    "fi"
  end
  language "fr" do
    sha256 "d6441cda0b8e6e6985fab3807bf64c3993a1c14b8da1e9f6749dbead0c1983f0"
    "fr"
  end
  language "gl" do
    sha256 "7c58bb9f7946b096488e3939da7b96c5c03adf1771361870122e5aec16692f2c"
    "gl"
  end
  language "in" do
    sha256 "1dc71398ee4fb7df5ebd4327b049edf00a05d9aac25d501e314179f0adc801a1"
    "hi-IN"
  end
  language "it" do
    sha256 "8692ba897517263070106ca3612b3af4730cbdfcc6bfd6cf6160a08ca3385d18"
    "it"
  end
  language "ja" do
    sha256 "a6e30de4358c61c0b4faee74e4750f34b3689ee2a7116b1e1923e90edd5bdc89"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "39aef49509db147e2760d51a23a5ea927a8beddf797cc38f984824a08eed24be"
    "nl"
  end
  language "pl" do
    sha256 "8bc30ebd4946716dbe533c3449007cdf72cc16a48547a2c088041fbfa199f0dd"
    "pl"
  end
  language "pt-BR" do
    sha256 "5df2070f65980ef090e3de7079fa2c1d142e198a0be410fa575232a9ba6bca46"
    "pt-BR"
  end
  language "pt" do
    sha256 "f13b7ba63a4a32207600882dd7df3dc01b0ec15a6b1e00ec42582f236453ec9a"
    "pt-PT"
  end
  language "ru" do
    sha256 "262de21b3187c55a1ccb1e4dd10a7ed0b95d0e63218fc7d004e88bd368d51cb5"
    "ru"
  end
  language "uk" do
    sha256 "ec5b80b8ad19630afc65d3b37964f7363003e7a8ab52dab2348596684c5320ac"
    "uk"
  end
  language "zh-TW" do
    sha256 "6a82abe82bf9a1a6916b0aa9bfb7064f0b077ee5bbc01694bd3ed7858704cf55"
    "zh-TW"
  end
  language "zh" do
    sha256 "2398497cdb02b6a0964d70201047b0bb106319cdc59b1eb33e1ae09ab8c1db95"
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
