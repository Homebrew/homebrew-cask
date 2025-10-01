cask "firefox@beta" do
  version "144.0b8"

  language "cs" do
    sha256 "f482bf6c0ca01d4b9d9137980e61bb11424e6b2a06c3bda875f79e4a4922a436"
    "cs"
  end
  language "de" do
    sha256 "1b88f92b9251253469982d38e09fec7b71d319918f568097bf916bf796042e1c"
    "de"
  end
  language "en-CA" do
    sha256 "9fa3bbb5e010c1124c7beda6364ee6d7cbd822ccb6d361ac80eca24cdb233959"
    "en-CA"
  end
  language "en-GB" do
    sha256 "f0e6274f5d7c08667068f7ff56e0c1da1c2250f1a2cf5efd3dc2610477fc84c2"
    "en-GB"
  end
  language "en", default: true do
    sha256 "8a209de4f8fa51990c3b4d0cbc2100fef12d83a95320093f07168b26fc0dc8a1"
    "en-US"
  end
  language "es-AR" do
    sha256 "dda24ee2f9bac9c50f9c62cb19306ad4c82ed57ef16bd6094cf3173145830287"
    "es-AR"
  end
  language "es-CL" do
    sha256 "6dc66bd54931696c5f38c66e183cc6bc3f666226f9ca0775ca8b2caefbc01e7a"
    "es-CL"
  end
  language "es-ES" do
    sha256 "589b0ff545e1768f18fd66fe4e2817196ce4d08a26d00025430451495f571692"
    "es-ES"
  end
  language "fi" do
    sha256 "1bfb82a5d7b501685c1f9264d9ce040b65b8cdf01a43e17da325d99cc488b4cd"
    "fi"
  end
  language "fr" do
    sha256 "9ec4576f5ea4418f1c8e285b2b885ed2e72cf2b65a5c499d6d82ab2ce3d38bd4"
    "fr"
  end
  language "gl" do
    sha256 "df62987e41e421e95360277bae8cc6ff043fd7c1ead059fba192cdba11391a04"
    "gl"
  end
  language "in" do
    sha256 "1e6016bcb1f109dcc164e2ad4f169f11feb77ad004195907e4c742f950d58bab"
    "hi-IN"
  end
  language "it" do
    sha256 "c39682c24dd1bab36091dad61576111d141890639e5318e8aaf716c927060bf8"
    "it"
  end
  language "ja" do
    sha256 "f1c11b9ed932b8887f6b0775302c0dde1891df6ee0b91abe9c738f0646be89ce"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "58fdf1bf6960f5a96731956c64b69668a67ed90dd10344fdfeb4b4ed183835f7"
    "nl"
  end
  language "pl" do
    sha256 "eb2cf0480e18c125524f3a2d8009d8958e36b4306d026978e1341dd37bfaacf3"
    "pl"
  end
  language "pt-BR" do
    sha256 "5f38570322f436427a1bdb74e77c3ac58e28c2bd84718b06f154e2bf729e439a"
    "pt-BR"
  end
  language "pt" do
    sha256 "c6810a8ec1fdc66013596c54f57c7d4e7975e3d30f8e7b43fe98bb1d01bec5ba"
    "pt-PT"
  end
  language "ru" do
    sha256 "9f411ef108e9b056c3486a11ba90a7e2f41e9bf10edf4f631722c456e83e3752"
    "ru"
  end
  language "uk" do
    sha256 "c9ee731b7b6ba04fc10d4370d36a233f638c27c561b97ac91fc594a5ddc6103a"
    "uk"
  end
  language "zh-TW" do
    sha256 "7965cfdf31384ecbb153db27b06c469318876d1762ba29b476f41d1598978108"
    "zh-TW"
  end
  language "zh" do
    sha256 "73d8ee443439fa2ba2a653e726d4b607848829fe85b0199a4a4feb8ac8b21be7"
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
