cask "firefox@developer-edition" do
  version "140.0b3"

  language "ca" do
    sha256 "3943715885230fe7fb60b63dae1d6b970ce075f4ede2888d6bc04600afa0cb1e"
    "ca"
  end
  language "cs" do
    sha256 "88f59df2a7c7f13766f7ecadd41c27502bc7b1194c29aa700e319e268123e469"
    "cs"
  end
  language "de" do
    sha256 "62dc719f46113287868cb898f29b2390ff2ad889613ab7b7cecb15b7c14c020a"
    "de"
  end
  language "en-CA" do
    sha256 "cf0551a0409ed7283baf68707ec51312a170faab606c9da859143f7e114884fc"
    "en-CA"
  end
  language "en-GB" do
    sha256 "a2ef452fff308991e1c18d2ce14d62c2b8ae51b6a57e4c12d04159ccb625bb8e"
    "en-GB"
  end
  language "en", default: true do
    sha256 "36655b97674d1d06d4beaa9ea6e4a62b9ce8918cde026e3a62d5b72cb8f23d40"
    "en-US"
  end
  language "es" do
    sha256 "af7fb0e75d98fabea29580ee313ed18f49062917d73e272b16812c7ad1ba35e3"
    "es-ES"
  end
  language "fr" do
    sha256 "df3c9b89144194e4b20244ef8d42b6a2f1b075f5b0afbaacda153af2aff45df3"
    "fr"
  end
  language "it" do
    sha256 "0d5cd0c510d67dd6c672f43105a1d503dddb724f665eb483a35f83e082106bb0"
    "it"
  end
  language "ja" do
    sha256 "a95390e3725fe01ad9baaade9021a418372bea41125c5cccba6f37a5251f61b1"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "99adc3223525a2901b09d0502a90ab9c0105ac9a961941133e18adb020a4fdf8"
    "ko"
  end
  language "nl" do
    sha256 "3543c215c31dae3e64dd6dc58661158b8148a64aef0e0f2eb5b6da4fc75f7fb3"
    "nl"
  end
  language "pt-BR" do
    sha256 "dbb1b75a4504cd974330b831cf101780479e89128226b3201f835182501a20a8"
    "pt-BR"
  end
  language "ru" do
    sha256 "dc6bd8c1566a001a96d09d363b409e4fe1c4789c68b790c1ae3fcfca78c5bd61"
    "ru"
  end
  language "uk" do
    sha256 "bd812c4b22b71be191a17936371f18ee6a1ffc97a1afe88dd1c3f4b5c0aaa9c9"
    "uk"
  end
  language "zh-TW" do
    sha256 "7035c1f5ce6358fa450ac6de572b08907a8bb4df4849008fb35e8f492c3cf622"
    "zh-TW"
  end
  language "zh" do
    sha256 "ebe8c62854e34ea685d7a49864504faac27453d21c76dad92d96e2eb6f7b6cfc"
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
  depends_on macos: ">= :catalina"

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
