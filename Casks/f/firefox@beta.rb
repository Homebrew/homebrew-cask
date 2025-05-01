cask "firefox@beta" do
  version "139.0b2"

  language "cs" do
    sha256 "a43eee54e0b59b57972f5474ea3c04bdbf1270b11f5d40ed3b976caf906619e3"
    "cs"
  end
  language "de" do
    sha256 "0c1821fee71747b3a3fd41d65d45f8ff3de72d11652549b56145fde294e8bb3a"
    "de"
  end
  language "en-CA" do
    sha256 "4724c27d3478948a447bc67d8a3dea3c38997ef061169391e320f99ec41d5497"
    "en-CA"
  end
  language "en-GB" do
    sha256 "78169ba382043bf6afda3ef81fd62271d7c44acfb2191f43418e1fad1b3c7ce8"
    "en-GB"
  end
  language "en", default: true do
    sha256 "8a30f4098db4d7053c923344b00fdfea6f7854ed9d819afd33161a7af48c7e32"
    "en-US"
  end
  language "es-AR" do
    sha256 "bb7e1ff7796be32001e4c9a0eafbceeb2263dc39f6653dcbcc581a49447f399e"
    "es-AR"
  end
  language "es-CL" do
    sha256 "cde4861a2b213373b772ff5405a7943b1aa4fa5c233e969940f96749616704ac"
    "es-CL"
  end
  language "es-ES" do
    sha256 "c043ea8a30bf6178aa2058dbd2290f1b851ed31e19d5e819d15917bda78e8d38"
    "es-ES"
  end
  language "fi" do
    sha256 "493aadffadc5dfef17e407030ee304371912d91cf50e83a3d6ff47215d9d45db"
    "fi"
  end
  language "fr" do
    sha256 "2bd996890feac9bcc7c7efc8e56b83cd43231d6fadec863a8c98206b2d2cf0d3"
    "fr"
  end
  language "gl" do
    sha256 "e6b8875d7c2c9aacd46aca6cc203fd8442bbca5dcbebc58e10196217bfe5feb5"
    "gl"
  end
  language "in" do
    sha256 "9be2a12617e0bb21e6edc657280571f7ceb8c18e5a6b78d07c8b1adc6048df13"
    "hi-IN"
  end
  language "it" do
    sha256 "87809906219a83dcb5ad4f2c8ea2145f0aeed33967a9b3e64cc175082a1f1846"
    "it"
  end
  language "ja" do
    sha256 "7376314a36e1474e3a6e2a12a23dc12f402ef7cc5178ec54ce416bab468b63d0"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "7087d28ae0ce14d203f827efd15f6f69f20ce2c7ad379251f376c57a8837c4a3"
    "nl"
  end
  language "pl" do
    sha256 "6f76766c19e23fc0c18182060e93ff1ca700af043bc92474d8ed2c40e0fdeda7"
    "pl"
  end
  language "pt-BR" do
    sha256 "a558278493674de642562e7a38a076e877ee6d937d41451e47842916f061cc94"
    "pt-BR"
  end
  language "pt" do
    sha256 "224e4df3d19a7d3ff52b0e1dbae1cf2ec6363a38522fdda2dc01d5947854c5f5"
    "pt-PT"
  end
  language "ru" do
    sha256 "d44fe8961762ac798612b7601c9be700fb897d2a1fabe778f9a48d68c292b0e7"
    "ru"
  end
  language "uk" do
    sha256 "81f8e1bccfc6100e8c056efa612b50ff027e1b49e5518d49d999f559d608ed41"
    "uk"
  end
  language "zh-TW" do
    sha256 "713c4adbc8215a1387ea7e121ea2bc7969681084d2f7488055996bba52cdf560"
    "zh-TW"
  end
  language "zh" do
    sha256 "312a0d0cca3cc0ed60444509a7a16c0120b2cb37ebb97844f1c092bcdfc8ecbf"
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
