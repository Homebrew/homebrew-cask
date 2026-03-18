cask "firefox@beta" do
  version "149.0b10"

  language "cs" do
    sha256 "954a1f3b1e0224cd77d6d7d9e20807718dad31e4381570509d5e1ccc22eafd4f"
    "cs"
  end
  language "de" do
    sha256 "009a209b6ca1660d50521ab552e7d8da7980305a52b472374563997ec0f54923"
    "de"
  end
  language "en-CA" do
    sha256 "6dab3132bc0dacb7eeb54ad0dbf6d70781de42ddf11081ec8b7fe4b4a9aa28d7"
    "en-CA"
  end
  language "en-GB" do
    sha256 "0fa2921fcd7ea11823a3cdc53eca7ef20529557b250631ee13eae9d718cab4ef"
    "en-GB"
  end
  language "en", default: true do
    sha256 "5f752b1766e5b879512347cb467728e609bfdd7c5d8741e3532f21d606cb8d5a"
    "en-US"
  end
  language "es-AR" do
    sha256 "8691f342fcc9af14498c324b02b255f413edde9c2e567a0c4a62d31f6c16d72b"
    "es-AR"
  end
  language "es-CL" do
    sha256 "223de87e7ffd9227aac383ba2123fa0a3bd633053d4f6885da9bd361cb9eade7"
    "es-CL"
  end
  language "es-ES" do
    sha256 "cbcba19f50d140cdb6e6424f4eccb72c60d3942910a5f08d6492ec30fca41015"
    "es-ES"
  end
  language "fi" do
    sha256 "e44e5d593bd6504712a532e160ca3370f21a2c73e687848b08fe84545dc3b12d"
    "fi"
  end
  language "fr" do
    sha256 "579d5da30ebd27a338eceb8f19291cbf5957cd6cef618d53f4bb1e741c34526c"
    "fr"
  end
  language "gl" do
    sha256 "008783baa6651751960bb5c9fe61a1d84200356fb847f11afc7698de16815d12"
    "gl"
  end
  language "in" do
    sha256 "b724adc82c2db1f6aabfccba7abd69fd24914ca1f59a709ae96e668d96b030e3"
    "hi-IN"
  end
  language "it" do
    sha256 "5c42bef74034754f9b25a478fede029fb9b78d1519f5352e712f841a386c8943"
    "it"
  end
  language "ja" do
    sha256 "7436a1c569acedf0330dfb79c4eb9deed5b0fa65debfd5e08693af88a4300a7a"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "c920db6c336dec1f1cd67f0ed463328c563d927fbd3328d14cf6360688238f3e"
    "nl"
  end
  language "pl" do
    sha256 "cd78b5c5203343c04244a325151da31bcf50b0a44ff1448d404e067821e900e4"
    "pl"
  end
  language "pt-BR" do
    sha256 "9df6857e02d6cbf5e20728713354365a4a8006d41c360461bfb06cf1c0acd98a"
    "pt-BR"
  end
  language "pt" do
    sha256 "9a2ade5620dcf394a96e9897ee2d8e8bb092ff57fd6b12c2a16020fbbc2d65be"
    "pt-PT"
  end
  language "ru" do
    sha256 "d82ca3037d8196e419ed66d6bf5af13500ae124182663b00938ffd5339175c7d"
    "ru"
  end
  language "uk" do
    sha256 "64903bca273db05c7dfcee6bad97acc0496ac84dc9e5c922de69b26e403e4785"
    "uk"
  end
  language "zh-TW" do
    sha256 "1c053b6db17930fd7e1771ee636a2212cdc3f63f21035fcb2372ae55048e22a7"
    "zh-TW"
  end
  language "zh" do
    sha256 "e0f08fd55c5b76579b2a9a4c845239850f85df4edf66202d585cb5733d44164d"
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
