cask "firefox@beta" do
  version "148.0b3"

  language "cs" do
    sha256 "4ea37da8f32b942a68e1be658b8b93b2a0694bc0086de5ee16c305d92973c533"
    "cs"
  end
  language "de" do
    sha256 "be726fc39b34b4c97d8811e3d197d198bb13bdcf9e30fb72b7c4fb3a10b37c89"
    "de"
  end
  language "en-CA" do
    sha256 "0be7293cc62e430f8e3d28d1153d392d2727f6035e35bfed8fa9e4843d151f00"
    "en-CA"
  end
  language "en-GB" do
    sha256 "1b8623b73f39cc1dc72d7c02795aa985f9c056fca9571d5517f40240469c5d77"
    "en-GB"
  end
  language "en", default: true do
    sha256 "f5e65b9d7c2f378021eef644073b839a95ff276b8bab7366f277b524728d6a82"
    "en-US"
  end
  language "es-AR" do
    sha256 "21599151f5288bfd098e3cfd064fc4694131c557c995dbf78e651af2bbce55b1"
    "es-AR"
  end
  language "es-CL" do
    sha256 "98391f45cefc77bd1ccd2aa46b6bc5cb5b272636264ad78812c49cd07c96f0de"
    "es-CL"
  end
  language "es-ES" do
    sha256 "ddbc951a31271bcd733440acbd5d7e89d8939ccd4531c5ae1c8c4c66b3caabec"
    "es-ES"
  end
  language "fi" do
    sha256 "050dda37925fbb9737e3ac8c80d319c128860572834b362a8b77956418676a5c"
    "fi"
  end
  language "fr" do
    sha256 "26798b6abe72632f0a2505900153a3244e22e19b3f7ef333d03d93fecc9b8836"
    "fr"
  end
  language "gl" do
    sha256 "ba2a429c0bb2f2920f0fa44e877237d1d4b200921f70ed946318d9e2abd576be"
    "gl"
  end
  language "in" do
    sha256 "32cf1b3615ffe64ee1f05119aac0af81cdc64e7879b006f02e69f9d2c5de0cf8"
    "hi-IN"
  end
  language "it" do
    sha256 "98b38f67a6ade42b6794c76d4d5baa2cef65b9d86df207f1baf5b9b0fb0503a2"
    "it"
  end
  language "ja" do
    sha256 "b95f965f9291333327b3c73fd80e3e8986f74ed51ff6d09cec9f122ba6723c08"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "4432a33465ade408ec1725b0406306cac4824f50fb2984bf9d97d851ab34053a"
    "nl"
  end
  language "pl" do
    sha256 "29a3a106ad9cabcc4dbd3d25f7e43be184b4a5699310142b0961b6e2661dc4d9"
    "pl"
  end
  language "pt-BR" do
    sha256 "7826ad6a5b13a535babcb69b0d3a03e0742853ce3167b61620583ebde85ba407"
    "pt-BR"
  end
  language "pt" do
    sha256 "22ba037724dc1b4fb94a5f233abb7eac83b66ade421aac25f8b1ec6a6a9b888f"
    "pt-PT"
  end
  language "ru" do
    sha256 "bda844e0abf263c1cabd95348377897ce1a888993a47395bbb11c79f5a98e671"
    "ru"
  end
  language "uk" do
    sha256 "4075136d4e4e5ee5200a2a4c48ba9df76c83b1b0409b07d3b7d99be8572f4dfc"
    "uk"
  end
  language "zh-TW" do
    sha256 "e0d9dd964e610f6d4615b25ea3ed6db255af7ee9e3f8c674856cf52ca9584ecd"
    "zh-TW"
  end
  language "zh" do
    sha256 "d63f222e4c61e15b16b32a765d8c9cf61a7d2ab18f648e10080eec2c8d4619bb"
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
