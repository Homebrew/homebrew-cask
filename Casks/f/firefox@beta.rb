cask "firefox@beta" do
  version "144.0b7"

  language "cs" do
    sha256 "6e7018cb41e09a432cdc8cf2ed4ce784d577758685cecb9b0a4311c2bbed089e"
    "cs"
  end
  language "de" do
    sha256 "8f8ab83a9e344cda7ef11262126ad1497bf04552a29dfe59ae8cfcf0b821647a"
    "de"
  end
  language "en-CA" do
    sha256 "9ab060bce7b0e6232fac71f28c0c4c7496d3f2ddf3f97e0814a8d883d8e3bf99"
    "en-CA"
  end
  language "en-GB" do
    sha256 "a323c4849be4607ebef463b6a4ae94ed1bb21b0d3865798aec94c7d0a4b11b14"
    "en-GB"
  end
  language "en", default: true do
    sha256 "975f5365ee74b25f76a995f4eb46e7f41093bbd952ca60f7ea4c36e494d7cb3b"
    "en-US"
  end
  language "es-AR" do
    sha256 "f7377c4bad4b8214c0da5fce6e3f89f8810ca39a9176cd9cbc453c202c13aec0"
    "es-AR"
  end
  language "es-CL" do
    sha256 "7bfe5760718295bec6f3856441c31d23c1876a9b94ef6a5fc520368475df6fa1"
    "es-CL"
  end
  language "es-ES" do
    sha256 "35a65944c6bc670b914a8988d044d333fdec53bd3c015786adfc64f383db6417"
    "es-ES"
  end
  language "fi" do
    sha256 "6103dfb27c00097e744f00cd64357e363cc4ebf322f4c05ac2c577aa9e54b0c2"
    "fi"
  end
  language "fr" do
    sha256 "e18310b33f9baff975bef1c19033a7eeaf684c22c11ff936666eb83f8a48d8a8"
    "fr"
  end
  language "gl" do
    sha256 "8a4a3811659838041c81331cec5c19e8ded6984af4a89107d7f68795c24d43a9"
    "gl"
  end
  language "in" do
    sha256 "3a7168374b5e8353da5387aad187fc4674f52ead155c9b71bc0a1c03d8d1396b"
    "hi-IN"
  end
  language "it" do
    sha256 "1a2bd28c43a77ebd82447ef07e48218672f0bee08bcd1b70f1b0f81e765b7103"
    "it"
  end
  language "ja" do
    sha256 "f0392f3f226c83e483fd9657a7ab788ead87d2145671ae92369dfde7900020e3"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "0dec7b936d05ece94589631da9e6f8b892e01fd48849ca1ba5477537b5a2fce5"
    "nl"
  end
  language "pl" do
    sha256 "95732b26c58de59455517ac34a7486811648f2430dd4fe3d5916d159bc1c4012"
    "pl"
  end
  language "pt-BR" do
    sha256 "28241e8572059af371cb790c201f262ba911ddc43e447a67fedb33d5bca69e16"
    "pt-BR"
  end
  language "pt" do
    sha256 "7071278ab5b60810a8da2461a2bda85c7540fb2493e8e092d9cc39c42a95629e"
    "pt-PT"
  end
  language "ru" do
    sha256 "684b4ddfdce895afefefda32a3b2eb69d65637a574f4138816730ebdfe72fdea"
    "ru"
  end
  language "uk" do
    sha256 "9c44c52c65724a2071c9b6aa1335770789a72f8570038baa060d1dc90fe7b86f"
    "uk"
  end
  language "zh-TW" do
    sha256 "3aa5dda013f223a9de81d5ec7619d17e531c78567993332bd9f2b2e559abb995"
    "zh-TW"
  end
  language "zh" do
    sha256 "856786447253555d23d8eb900adb90cfcbfe796028a95a5ef17f2eac613959b4"
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
