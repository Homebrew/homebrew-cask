cask "firefox@beta" do
  version "145.0b8"

  language "cs" do
    sha256 "58a0b6022d65f827105dc25c7a14f79647e1d1c554496845a17fb6f4e7325c82"
    "cs"
  end
  language "de" do
    sha256 "904998a875358606a3e75b97fdd0ebe57adfeff108b4f32fa7fe179398395d14"
    "de"
  end
  language "en-CA" do
    sha256 "d8c6e9bf026d163c01e686e64ce2d9eef03d3c048fac8dfba330e8e1272378cc"
    "en-CA"
  end
  language "en-GB" do
    sha256 "fcb283877496467f20d149644f7486e9537b44cadcc4695d438d1f7c7fe8af49"
    "en-GB"
  end
  language "en", default: true do
    sha256 "4dbbcfda88560035514b60ad6910442a58c55925a5c78e585b4ee3a50ef7cb56"
    "en-US"
  end
  language "es-AR" do
    sha256 "4b570d97edf273bc0808f0dc3d3608c1926f07d82a87032cafd764a881d247b4"
    "es-AR"
  end
  language "es-CL" do
    sha256 "a0568a5036fce4dfe02185d1c35bbd17bfb5d28bfde1d7a0fe1bd122603da1a4"
    "es-CL"
  end
  language "es-ES" do
    sha256 "cdcfb6bf5fc15d4002641a25e8f57ffab516f92e7f0f4b0dea9d60d649ea4b7c"
    "es-ES"
  end
  language "fi" do
    sha256 "d0d8fa677ca015ef0c3d3a2da104af497c2ee3391c9a5ae8ff6e3ddff0ce8f13"
    "fi"
  end
  language "fr" do
    sha256 "f0271e499d34fa779eac9fd00e97cec57c264b6e828999a27398534c26824a53"
    "fr"
  end
  language "gl" do
    sha256 "752c11e06f5602183284a937faca24716a8d8b4c0fb731871c46912eb71c0fa0"
    "gl"
  end
  language "in" do
    sha256 "83380cd56ecf11e608677e32bbf1eabd2ad1ad07cd9e6d502098bd698fca7d4e"
    "hi-IN"
  end
  language "it" do
    sha256 "0495562498b13d6b21942356807842a7b72201bf33d113f0bfe6e064072978f7"
    "it"
  end
  language "ja" do
    sha256 "9e514dc89a0b6238555ee8c41741e0bc2f4ef49c118ef57422275101b76f19f7"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "a2f0683c06c0ea47cc50b70d375f8a66ae4aa25cfe0984ba26e768396492540f"
    "nl"
  end
  language "pl" do
    sha256 "45a6903b035ff59dd9e71dce4a84915116193aa633ec8f4bf59483eed9daa8ce"
    "pl"
  end
  language "pt-BR" do
    sha256 "1b4f30cedc88fec8d5750e9e064710bfb9859158afb7ae9596d54267e9d6fc6a"
    "pt-BR"
  end
  language "pt" do
    sha256 "9cfef06ceb3dfc28e2f4b5f9041df70dc9353a8fa6d5e039dc9a5ae2b7cc9c2a"
    "pt-PT"
  end
  language "ru" do
    sha256 "ac875ccabfd3c8b682c48a89eeee5d4a8a53fb6034939c6f47df9628eec2111a"
    "ru"
  end
  language "uk" do
    sha256 "8218cd0155eba6966f67cd122798a20c4029f9f7702bddcaaef06d3fcd9c4eab"
    "uk"
  end
  language "zh-TW" do
    sha256 "3b23508888f53f5b8ed88383f245598b6cc23174efc4e1a1424f13cd59aaff21"
    "zh-TW"
  end
  language "zh" do
    sha256 "3b2d195637eac69c9684a797203216cadda8088c5776b03bf8da0e9defed883c"
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
