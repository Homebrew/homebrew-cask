cask "firefox@beta" do
  version "153.0b10"

  language "cs" do
    sha256 "6defa0beaa8217ef0f3768af224ebec4e96afa2bf66937cbd5af32e0164166bd"
    "cs"
  end
  language "de" do
    sha256 "b37c859c8c3dfd157ebda2fc651e09d82ce590bf2a770f13dcafd930783023c7"
    "de"
  end
  language "en-CA" do
    sha256 "86fc0f354d08e9e59dc420cc7ee91f94dc7ca2d292d14e5671f6c4800c4c6536"
    "en-CA"
  end
  language "en-GB" do
    sha256 "f3418df8eb4f2ca9b823767d86242f1897eb21b2a13283d1cbac9d41d5fd9f78"
    "en-GB"
  end
  language "en", default: true do
    sha256 "ad4031a4dc15667f3bbb913997938ebabfa8e601f4c830a0533637053e67e4ee"
    "en-US"
  end
  language "es-AR" do
    sha256 "e867ac431de4ba1487622de2c5ab561907d07f4ff9822af4aa244e6103672ea4"
    "es-AR"
  end
  language "es-CL" do
    sha256 "853b24cd3ad8210c887ef08c964d6a25844bead0c37128a2c44ccda9d381cd0e"
    "es-CL"
  end
  language "es-ES" do
    sha256 "6705059fecdc38f97657a25d9421626a891ded5fa80c266b768d063ce95596ef"
    "es-ES"
  end
  language "fi" do
    sha256 "768c01d871d61ea6532edeb7ecff326860df20f348f9aabb2a420ea3bcefe710"
    "fi"
  end
  language "fr" do
    sha256 "3c440b9dda47a0c050c2847652da597363e02d98ba5e71142942abbfe211fff1"
    "fr"
  end
  language "gl" do
    sha256 "5c29406916b18e05a4cf081c15d55afdcdfb40e1495032d2dd533e567976720c"
    "gl"
  end
  language "in" do
    sha256 "1c637c015a4c730b5f2dfdee0297aa05f0ec6bafec1ec51afaf66cac8b2c29fb"
    "hi-IN"
  end
  language "it" do
    sha256 "49a7d8777f0d37e43a67fddada28ebe1afe98a5fc134346593742ae9465a9a1e"
    "it"
  end
  language "ja" do
    sha256 "0309b540a3f14e4970e2a2a701c51e0f5de9e7c57d3ca047a3937a64edfce557"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "d1a782bb10f8bf310c8066fb83d87ed88d0873a627de2db1ab069dec4f74499a"
    "nl"
  end
  language "pl" do
    sha256 "c53c4702d38c1a5d0054a1017a15cce8f73caf56ab089ddb26093e669afa4605"
    "pl"
  end
  language "pt-BR" do
    sha256 "a1fd3da245ab44d30fe56a60a6e95229337d4d9ee55b9fc89dff1b0d59cf5cf1"
    "pt-BR"
  end
  language "pt" do
    sha256 "ff32fe227513bc05c19ee70b8c9243d02267dbda007a16d8eea4ba65bc550b3f"
    "pt-PT"
  end
  language "ru" do
    sha256 "c3b25eae8a509db1bf01177128e435c48b72cdd22bb3e3b67ceb70f09c51bea5"
    "ru"
  end
  language "uk" do
    sha256 "7fd3fe96c7213ee2c65ab84bcb37d8267b6202d8b6d52b8c6b3c940f0e7e845d"
    "uk"
  end
  language "zh-TW" do
    sha256 "ecbcc798706faa2bc3f16cb77e460ee43f61c6fe1ca48990940791d644fea572"
    "zh-TW"
  end
  language "zh" do
    sha256 "62840425a82239c9c11ec37146f9c148e539ae3fdd02867f4d2526f626a815f3"
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
