cask "firefox@beta" do
  version "148.0b4"

  language "cs" do
    sha256 "c4926077d87fb6d7aaf1acd39847589fb79313e28e9a9bdce8ebc7051d5ee0d3"
    "cs"
  end
  language "de" do
    sha256 "407b847756c2be9229d110277ca8753c7ad2583b1311ea0eabaccd248ffb1849"
    "de"
  end
  language "en-CA" do
    sha256 "1189f431a2ff3d1918971537a93488ae5a4b1d5fbe627b43a7fad0d57455783b"
    "en-CA"
  end
  language "en-GB" do
    sha256 "e4b07154ec0c4cc4f1f3e8600f1c100fb1b3f7d034e8200a08341c4460143fc2"
    "en-GB"
  end
  language "en", default: true do
    sha256 "54b1ffc6eb85d471c01d428b7e7fb5219d9da867bf0f59929587258497f3430a"
    "en-US"
  end
  language "es-AR" do
    sha256 "4df3bdd968fe8f855ec5e65484d06f92ac62b687a6e51d79a522a8f1f87b49ad"
    "es-AR"
  end
  language "es-CL" do
    sha256 "534fc8dcea896ce47b336d5e9b7782362e4c7f7036f0c964af69ee441ad630df"
    "es-CL"
  end
  language "es-ES" do
    sha256 "91a807a05467c2caf0664ee59d369713c888b7b95925fcee978cb5bd6ffff66e"
    "es-ES"
  end
  language "fi" do
    sha256 "50ea0e5019e5ee02fb5d8f8c424e8f38d9c653d5365eff5fd00ba31b66aca1f5"
    "fi"
  end
  language "fr" do
    sha256 "0225a76e9494f6f4444a0628bbab3f878875c2cd3b3a34d9744e3ed5214a9111"
    "fr"
  end
  language "gl" do
    sha256 "227fd6d5aa739928e49a71599022ad61b3114fa98ad7335d453365a9beff6a46"
    "gl"
  end
  language "in" do
    sha256 "59b94e29c40a6f9709792abf19da58b5b4454dfdce05b011be5d6be00f30c765"
    "hi-IN"
  end
  language "it" do
    sha256 "b1df0f38a14504c85816b16adc45920750b7607a8dbda66294b657db738153d1"
    "it"
  end
  language "ja" do
    sha256 "ba4737599661e3f3c79af00f92c8d9b959920415288e89d4d69e46a5d5f4aabe"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "213daaaffd86fd497bde6adaa66df96ddf75eef1e2b0049c5cab40b55b2ca7fc"
    "nl"
  end
  language "pl" do
    sha256 "efa043392c68d2d333702ae5c6d8ce9d324fb7295c899a531dea67ef68ce027d"
    "pl"
  end
  language "pt-BR" do
    sha256 "04a53412295fc53eedbfac4ff965aef7648eb328a9d9ed023702fe1ddb351f74"
    "pt-BR"
  end
  language "pt" do
    sha256 "bed2bbcd540cb81cd5227c503af6914622da7718b54b00a5cfdfe8a2235d0ce1"
    "pt-PT"
  end
  language "ru" do
    sha256 "5160e732659d21be7f4edee084cc3968e40532742f36df08dce8045ee75bf3f6"
    "ru"
  end
  language "uk" do
    sha256 "2f79604ca6692ef723872e99f83c3dfcdc3206f79186065661613886425da3e2"
    "uk"
  end
  language "zh-TW" do
    sha256 "96453319a877c5bd6e51139c4a2b2116ac32573f1784f542ce0667cc774d750e"
    "zh-TW"
  end
  language "zh" do
    sha256 "5b27f5c85daf6e4f0163cbbef5fc0fa643ac48d340b5563ea40414875c2a633f"
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
