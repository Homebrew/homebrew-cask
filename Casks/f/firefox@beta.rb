cask "firefox@beta" do
  version "142.0b9"

  language "cs" do
    sha256 "23d10bf20331cc4dac5501a9a3c00342f07940df8d069bfd9f55b6407b4d3fe8"
    "cs"
  end
  language "de" do
    sha256 "7c12b5c3f1fc6bb05c1e8c354d9a3c065294f46ead80c37c9e33401de455fddf"
    "de"
  end
  language "en-CA" do
    sha256 "5fdc95a080f7da8bc94c4f98ef42e8f5afa5a3dae8f1e57a2e9f9c9bb2e197c7"
    "en-CA"
  end
  language "en-GB" do
    sha256 "1d65421178588bf6c88aadaad522be1bdf7540cb2b8c8d4eb0dfe678f5b371c2"
    "en-GB"
  end
  language "en", default: true do
    sha256 "529509a53278d8cbd482fa8ef95ac243b33c6cc4acc7924c15f6ce3f59c64bbf"
    "en-US"
  end
  language "es-AR" do
    sha256 "cb603a246c45b186b45ae47f90b16007f45e74f44988f70fe627ed306b98e303"
    "es-AR"
  end
  language "es-CL" do
    sha256 "c5f790bf7253235f25df6bdfecac1eac3185089fb12df3744d9f8d3fd6292cde"
    "es-CL"
  end
  language "es-ES" do
    sha256 "ad8ab51771e256db7fc6746369fe9ce0dde28d75ba12b0b4c28395c7075a0bea"
    "es-ES"
  end
  language "fi" do
    sha256 "81ebfe507ab38db095db7f175f0f2005abdc3ecb04a26b062f6a554c27264420"
    "fi"
  end
  language "fr" do
    sha256 "c7c6a44e2cfa141b8429bba28efdc3f00d1b1d9d2dfbf165490be744e991e454"
    "fr"
  end
  language "gl" do
    sha256 "e8b4086c8cc6c69d4cae1e356e35af3d14ad0a0587e6e69ba64a5f18a9b83f38"
    "gl"
  end
  language "in" do
    sha256 "f00e4dc5ac28e23bf27942b246e4499cbf6db887a57c6e8b6bb2a28f95c26f21"
    "hi-IN"
  end
  language "it" do
    sha256 "7c3b722b894c4cff462382755f5a373e9312738edf8bcebfec5b7106b9bf75b3"
    "it"
  end
  language "ja" do
    sha256 "147093a08c3ecfb04bbabd96b29b351ab88526484cb98b5abc1703091deb6688"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "409106ac19817253834bbb4634c062a9bd07c44b54dc82f7a6023975ba8573e0"
    "nl"
  end
  language "pl" do
    sha256 "43837f073e5763f700e373b37aa9e06fafdb38a7219bc4a8b6e721bfb94e8a37"
    "pl"
  end
  language "pt-BR" do
    sha256 "bc45ce9b9afdd67ca8613755dac31090c52edaca8d36138a4f4b6e1201e8fc69"
    "pt-BR"
  end
  language "pt" do
    sha256 "6d51809bc4530fd835dd3d02e71827ba7a858d4198010468949ccbbe736d7458"
    "pt-PT"
  end
  language "ru" do
    sha256 "847aa25f8a05112080c80152a62593e68779de2f9202ed4b9f330fe29e4284c4"
    "ru"
  end
  language "uk" do
    sha256 "54d9fa410e15601c009f1ccd64e24757a7724c0202351b1e88aab469a0a113f0"
    "uk"
  end
  language "zh-TW" do
    sha256 "6bd9c6fb5205b5ddb5c9e3b76aead2d747b94c375ba0551c1b7ee6e4fb396010"
    "zh-TW"
  end
  language "zh" do
    sha256 "20e0666b205de6ee75d43ef601047fd0f6033afa3a54f4406b3f192c3aa3ef61"
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
