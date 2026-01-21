cask "firefox@beta" do
  version "148.0b5"

  language "cs" do
    sha256 "38cbe1e79ff1642a2cb5af44eaae53ad4f463eade9a6da386f0625364067ab29"
    "cs"
  end
  language "de" do
    sha256 "9f62fcbfadbdde9c968749e7d2bc492989fd2b7055817b14b4722a7e1d67fdcc"
    "de"
  end
  language "en-CA" do
    sha256 "dee47920d7b5ce3a1735b0f2bdf332eea922b1cda41c8e9c3173e3f9e889f188"
    "en-CA"
  end
  language "en-GB" do
    sha256 "ffa9695e86ed65a27d9602ab397dc6dc1db8ad326e2b298e8c0a8fd69e290508"
    "en-GB"
  end
  language "en", default: true do
    sha256 "d2527e345b78acba3ded68a09031f957e3ff1173a8c872a409074d1dc4e034e1"
    "en-US"
  end
  language "es-AR" do
    sha256 "5231cf5550b3e3946908772800a1ac461fdb7a7a37a05d20ef90766dd143ebce"
    "es-AR"
  end
  language "es-CL" do
    sha256 "315c76437edfb239a07f4fc9d90557c871919c692ea389191f43eff3f4df9649"
    "es-CL"
  end
  language "es-ES" do
    sha256 "ca5a7e809ae29bad03ec6f2f13565493ac9b39ece6f8aa9b204db2a2d935fab5"
    "es-ES"
  end
  language "fi" do
    sha256 "09bbd83c1c03f23066f107006f682179573f0c93661a2e3abd5fb823dc821626"
    "fi"
  end
  language "fr" do
    sha256 "0d505066de0a383ee4d9412ca4c6d21e9b5884f394cd47361e73c0ceee138f7a"
    "fr"
  end
  language "gl" do
    sha256 "c136a9197b66e865a20a004b0b0bf0f3c230f43e8261a08c3c451bc9eb3264ba"
    "gl"
  end
  language "in" do
    sha256 "023ee92cfe52c5cb1b3a3899f6d488844f8416e87963d34038acc126ff0de836"
    "hi-IN"
  end
  language "it" do
    sha256 "ffb1aa8eba78864fd870c7aec43a0fa84f30aec916ddbb93d4a9a1e9e6c3d8b3"
    "it"
  end
  language "ja" do
    sha256 "9e6e29808031ab02bdcdd093557ac1ccd85810d74641b1c8884906e153ffb528"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "ead7a5b503d1f2da86787ed82c99ba553953c43eac0fc1f5ce48ddc63b4c3923"
    "nl"
  end
  language "pl" do
    sha256 "96f75d717f450f81ca2214824c1832469c7fcd1bf11910acc8c10ae03f4727c2"
    "pl"
  end
  language "pt-BR" do
    sha256 "6f7bd0a04417ef56996c9a61fffb3a7ff1b33b47b0773fbc51836589f9845154"
    "pt-BR"
  end
  language "pt" do
    sha256 "91140b13b2fbd23e775c59a2c09478c2dce88035611a96cdd4a8b80acde156ff"
    "pt-PT"
  end
  language "ru" do
    sha256 "c148a45d9946a82d2b3d2dac571a94fa1e450429475941161ef4cdbb45685bf1"
    "ru"
  end
  language "uk" do
    sha256 "87e344e150bbfcb84fd2f7660ef4335e75e65766db8f6233863647d4680b7b69"
    "uk"
  end
  language "zh-TW" do
    sha256 "40288bebe62ad971b003a653cc9aba4906d4577b66b49a9c2524d784153a43c0"
    "zh-TW"
  end
  language "zh" do
    sha256 "43f56dc823b4ba5f83642baf1ab225b9ff32529bb0765e0ce847c73aa0ccb7af"
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
