cask "firefox@beta" do
  version "150.0b4"

  language "cs" do
    sha256 "008bc65bfcda1842335ffd58568de8b83aea6ffb70502646fc868379d3a1d1a6"
    "cs"
  end
  language "de" do
    sha256 "a4ef8e2a72e2e6329719656d34d3a70ad2c0ee493155c77771b23a6ebd7d9988"
    "de"
  end
  language "en-CA" do
    sha256 "d4aace98ea7eed66d8975d2d623cd9b3cb1e316d30f4a264afc7f000129cd6a5"
    "en-CA"
  end
  language "en-GB" do
    sha256 "3f29971488705cd9736e21b8b01782cf025ee2da368612ee317c2d197b67c83a"
    "en-GB"
  end
  language "en", default: true do
    sha256 "fc78c4bd0cacba6f425e118ac5423e1587fe4ed7977c1fa683ba3ece1127ac19"
    "en-US"
  end
  language "es-AR" do
    sha256 "8eb918d68ecb137e4c81f8502738bf6574419bb86f1e4701000d913c55731a42"
    "es-AR"
  end
  language "es-CL" do
    sha256 "b00277ddb72f6e73d807d73a41a19e5b05c36acef752af2ddf2c8eed5ab3f612"
    "es-CL"
  end
  language "es-ES" do
    sha256 "5ddc81757ed56a6325b3b752961507ae6ce26fe7af8bb39b26b436dfddc9000c"
    "es-ES"
  end
  language "fi" do
    sha256 "b2f7def1388eab9c2275e0d6c1c42230516ce7f677da449eff0f9ba801b144ce"
    "fi"
  end
  language "fr" do
    sha256 "8efc53af4bfc3abb363828c3f5736285e57a7a78ac012b11546b491ed3bd6b48"
    "fr"
  end
  language "gl" do
    sha256 "861e8869197416a5c96b60e58e246c0ce3d1af2bf149d51e629b1d2a1144e0c2"
    "gl"
  end
  language "in" do
    sha256 "0a7096ee334c28c27c50ae7442e0753913d5a43b534c2e41a9c623769e1c5ce8"
    "hi-IN"
  end
  language "it" do
    sha256 "66b37b323b4816f1ad763979b1b77834d14d15e01f9b643272a3c2bb384521ed"
    "it"
  end
  language "ja" do
    sha256 "884ba17fac99c41722ab599e2d3c348ea3054e7092b9dccbb0499fd0b6a5a5ad"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "9703c3f1801db217ac537e7e73e4e666061c5504b7d6959aeae00a6060fe693e"
    "nl"
  end
  language "pl" do
    sha256 "d69ebfeb2904214bbfa517048d226480cf7166c6b480eda2eacec990204cd759"
    "pl"
  end
  language "pt-BR" do
    sha256 "323fb84bc836febaad951c01aa2f330c4ace799c044a8fa37c2a00c89d2e51c2"
    "pt-BR"
  end
  language "pt" do
    sha256 "c869db9475dfe4c893fa979c4bdb3c9929bc83df4294540477ed34b384d6a229"
    "pt-PT"
  end
  language "ru" do
    sha256 "f5d1680f3c311c15d20adb7daae156dea8a567a08d66f24ed2b64d2709db059d"
    "ru"
  end
  language "uk" do
    sha256 "9c66c443b3230a4add0d47c2651e7696ebc3a445fd85ce3828015dc7492c210d"
    "uk"
  end
  language "zh-TW" do
    sha256 "af5333db1dcb5ee89b738fcd5c881db0d59093f0df17ffc4b008126db70daa71"
    "zh-TW"
  end
  language "zh" do
    sha256 "8319c96dd2f0cf5e7e3d205b62f660df3948a6f01136dc083a2d13e101e5ee9f"
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
