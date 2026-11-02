cask "firefox@beta" do
  version "160.0b4"

  language "cs" do
    sha256 "c8031188c1d1729e26f5a8f16f8804e7a94aec9fc30234b8ac3cc7dee19bef42"
    "cs"
  end
  language "de" do
    sha256 "8b9ddb1c2d4b4be02e6dad3851ec7ad5dc3558502ec75581bbc068e5264433cc"
    "de"
  end
  language "en-CA" do
    sha256 "62fe295b2d9323a687f8acc2607306423ca0665dec445a6c9cc71f410c015e8b"
    "en-CA"
  end
  language "en-GB" do
    sha256 "ea5d63f547b7accd9b1d583a15044ad0c5576eb02aeb53755183deefe9a9d77f"
    "en-GB"
  end
  language "en", default: true do
    sha256 "91db192b571e07572ebfd8cf053aeea79ed8a3f5b17b8c4cf997fed826374557"
    "en-US"
  end
  language "es-AR" do
    sha256 "6f5c63dee087c73eecd5e8e5554b2dd7589e8a1b5d50334bec8f96f3e60bcacb"
    "es-AR"
  end
  language "es-CL" do
    sha256 "6fb32c80da978396bdbab0d4dde911f481b032d966f01029be0879f46259bf81"
    "es-CL"
  end
  language "es-ES" do
    sha256 "71105303e061a993aa67db04ce420b318ac8e25f54df6f10e326daeca0c7f581"
    "es-ES"
  end
  language "fi" do
    sha256 "8d976aa9bfb53eb7d92b83dc554a1e3899eb98da99194e8e2be951b84fabd9ad"
    "fi"
  end
  language "fr" do
    sha256 "15aa57f6111779bbef083a67ca153fee56699df8a5159001a2fe7e02d46f5754"
    "fr"
  end
  language "gl" do
    sha256 "bc87bbdc25e1c0c7d28562ab2cd5775300478fec9f377e2cf9e9dbcba05bf764"
    "gl"
  end
  language "in" do
    sha256 "abac79698415ee21bca43f9d5a51e1572ebbb185b5bf605e565936d0855ad581"
    "hi-IN"
  end
  language "it" do
    sha256 "f60280ae5a20295d2f44af7713877780844dc51c3d998e7c603fed33fd3a7a48"
    "it"
  end
  language "ja" do
    sha256 "ae482551fc6ee7787620d3115409ba648144fbd4ec4d7db9fedfcb145ed91566"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "d5c442940b2337b018e5d48cf6732d396fb3c36af254130d0c29b9093fa980cc"
    "nl"
  end
  language "pl" do
    sha256 "8373b9e39189b257642e0c0641a1a12059b420927d1a7cced5910a387818171c"
    "pl"
  end
  language "pt-BR" do
    sha256 "28994b411051f71bb1163d38a49c4b1c1e98ee8ea366bd06a5cd0b36bed2491a"
    "pt-BR"
  end
  language "pt" do
    sha256 "1f70c182eef9caadee5e19d662cf3d6771384119fe04838cb599a18f5be5d58e"
    "pt-PT"
  end
  language "ru" do
    sha256 "5eab04bdfa4746ea90cdb21be1c50628da785b95ff0f391974467a2d1ee849ba"
    "ru"
  end
  language "uk" do
    sha256 "2d1463f329352ad79e9637dc99926192418694ee3b55cc0232c7af78e5bf47a5"
    "uk"
  end
  language "zh-TW" do
    sha256 "ad438f5f8e00fcf94534ed7e5897e279e55026eb907b242acc2875364a1f3f20"
    "zh-TW"
  end
  language "zh" do
    sha256 "cfd008906f29050f61f5a73849992104b5762175b5caf7a9c3c9c0742aedf197"
    "zh-CN"
  end

  url "https://download-installer.cdn.mozilla.net/pub/firefox/releases/#{version}/mac/#{language}/Firefox%20#{version}.dmg"
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
