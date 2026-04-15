cask "firefox@beta" do
  version "150.0b10"

  language "cs" do
    sha256 "5c98ed533a33657f4e5ff68f5368e4a85c839f05de104c7066b7999cbd381007"
    "cs"
  end
  language "de" do
    sha256 "708e8896524db01ebc9076e12099c18ff1eeffa012058423b2da0dc13909cf66"
    "de"
  end
  language "en-CA" do
    sha256 "00ddd0607d70910f05de8b38fb8935b4206db30a2761f754ae24139195c6ac0b"
    "en-CA"
  end
  language "en-GB" do
    sha256 "e3466baa9ffdb2eac019a0ffd1f88a7ac8ea8d60973300819366c7d5f806e983"
    "en-GB"
  end
  language "en", default: true do
    sha256 "887bbd98d07bf214975e72f628a25fceca828dbddd037487a248a12721991612"
    "en-US"
  end
  language "es-AR" do
    sha256 "e7c3e99876c1bbd5ece8217fdefaca733cc9a2fde5842cd90c19f1c4b17d5807"
    "es-AR"
  end
  language "es-CL" do
    sha256 "c2e00c55b9ffa10102858e24368b08b1e6d97cd29529010f86260b7992efbfb4"
    "es-CL"
  end
  language "es-ES" do
    sha256 "738b89389f24afb65e601e387e5926093c4bb468137a70170063cb6de6ea1472"
    "es-ES"
  end
  language "fi" do
    sha256 "347f6947f26fb7e5495ebf9a5dfbcf4bc9a2df166cf143988ab47342abf49961"
    "fi"
  end
  language "fr" do
    sha256 "a3a6648a18d0d87d8f2c62b0e8044c375193099878af555d9566e14d7e232844"
    "fr"
  end
  language "gl" do
    sha256 "c524b968ee09656a6b453b442212e90e13553034d4761efbdd4d2060d02d26b5"
    "gl"
  end
  language "in" do
    sha256 "72a704c357052eaf0eab7ac82269984f69b9589b42b459a24a94b435f49bb09f"
    "hi-IN"
  end
  language "it" do
    sha256 "89c0774b6fb30b7d79e6510dd20c4b9424079d8200ebded6832ca06c0744f788"
    "it"
  end
  language "ja" do
    sha256 "a563e48d5a9012819cfe404bb94fb89b196b1b63df034af061f8d3c93a58f330"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "ca2a7ac7581ee27a43239c7398a8c688edbf485b0f4a2f229ff31fd33ba1d8ce"
    "nl"
  end
  language "pl" do
    sha256 "25a6f3193c1a9501a53301d94bc9f5b2aaf5d4338845ded174c3473e904441dc"
    "pl"
  end
  language "pt-BR" do
    sha256 "e2a7d19edfd82f4a130e1f01dcbebcfdcf957005e007f7c144756f07b4f8a13a"
    "pt-BR"
  end
  language "pt" do
    sha256 "375288ca44bdab0f13cea095f9c2266ffd777160194b1109cf0830fd22e0dbb1"
    "pt-PT"
  end
  language "ru" do
    sha256 "f2ca76355728fca781a1e921c36099095b4eee9f9976b354cd424f87aebf09d5"
    "ru"
  end
  language "uk" do
    sha256 "c7712dd297bc6b1d2b6db151b4b5c6ae60c55e259a81ebba4eead9deebc5c7cb"
    "uk"
  end
  language "zh-TW" do
    sha256 "3a274cdcaeafc8bcf47450b4c0bb7a658141c8fcd9fa9089abcbbc06e5fd3327"
    "zh-TW"
  end
  language "zh" do
    sha256 "41b6e01c83708d8ac10b74517c55738ac34a8051e07d02a65f9dd92e13d7db6a"
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
