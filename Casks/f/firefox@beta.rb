cask "firefox@beta" do
  version "148.0b12"

  language "cs" do
    sha256 "7a9727248c751aef5fc1fc07856055ca4de76ab2e21818053e15add2e0722d0f"
    "cs"
  end
  language "de" do
    sha256 "df096353ad724f42df73fb40a1edc0397f1d4c3b61919cb5963b576c58a0f6a7"
    "de"
  end
  language "en-CA" do
    sha256 "8c693a25d66289707af41a0d09d326348f40ae0f77ec169df43d2572dcd44186"
    "en-CA"
  end
  language "en-GB" do
    sha256 "16205a7e64d06060d60c7eb2cf0df73da2678975ca372eb3fadac162070f7be4"
    "en-GB"
  end
  language "en", default: true do
    sha256 "9dcdb773fec89317cc7bb269c41a8f814b4325d21169fbdf715c9d583cf6dbc8"
    "en-US"
  end
  language "es-AR" do
    sha256 "405d89ea79439bd07ef4d4fe1591e1ae500ce3424bbe5e21015db7b01b3055b2"
    "es-AR"
  end
  language "es-CL" do
    sha256 "d970ef2b7e232bc2e3f1f6bcb7a1974a9eb563b4f5c066b7e87846d0ee2fd0c5"
    "es-CL"
  end
  language "es-ES" do
    sha256 "166656c16f80f69119680eb9592455f32718465d7cb532225dfa7832c7f859d6"
    "es-ES"
  end
  language "fi" do
    sha256 "9ffe01e794b12e6e4aa865b703d231babc3674b7cf296972ae70a71455ff306d"
    "fi"
  end
  language "fr" do
    sha256 "44696d1aa9fbae5a57da926ac8b7e0bc31d0070f81afff7fd07e84b2e32d9551"
    "fr"
  end
  language "gl" do
    sha256 "ba3c5bfa2ec4dcba4404a443f2137e3d7d896d27a6a28727763cf5960e352dbd"
    "gl"
  end
  language "in" do
    sha256 "0af18a429b329102ea9823f93be3b44b23e8334416382451a70230fec68081b5"
    "hi-IN"
  end
  language "it" do
    sha256 "f9063124bc97ffbcd0cf9f2f20eeaaf53e82976d9230fdd983b29eb307a90e96"
    "it"
  end
  language "ja" do
    sha256 "6ab5759b243d6b8ab76699adcb5e209cf3f24c67f4f55ae4dfc9732ff87b968a"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "9cbfab2faa7bd10e81fe00c29b42eb94a82501737a4e867406ea3434c15216ed"
    "nl"
  end
  language "pl" do
    sha256 "be9310a71a20e1f67355b222edcc79bd292de8b7e4e9fc481cb47d7f15805e44"
    "pl"
  end
  language "pt-BR" do
    sha256 "bfc2a5e7f8d80c1db66443ea35c009175aad0081df01a15da826e564eac796c2"
    "pt-BR"
  end
  language "pt" do
    sha256 "80e3c225d49231196a3af46fb32019074d534245398e1ff46167e18d66f2b45e"
    "pt-PT"
  end
  language "ru" do
    sha256 "df086c45462fef1e4dc06c71ddd1a579a75ad9f5fb7f89170fec44cebcbde277"
    "ru"
  end
  language "uk" do
    sha256 "886c263fd717df997e3a3543fa9f242250a4c264d0c4cfcb8c6abf36d798aa9b"
    "uk"
  end
  language "zh-TW" do
    sha256 "ace2d4e036f6cdf776ac755186ece10b710fcf2a7811dfdcbae44eb127ad6507"
    "zh-TW"
  end
  language "zh" do
    sha256 "b6ebfe6336a12e28e92c4d0f03be4508cd50f598e7c1cb07e8db7eee613f2288"
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
