cask "firefox@beta" do
  version "143.0b4"

  language "cs" do
    sha256 "f166ef8db974c469f2f0eb182992ee2bb864b3818c65af2b0a13d3c2cb4af4a7"
    "cs"
  end
  language "de" do
    sha256 "3d8d3ba0c75f9f475415d50f0a7c1059ba18e4a487cb612e41fc1561f88fd778"
    "de"
  end
  language "en-CA" do
    sha256 "0a795aa4f58f3163043abfed53f580976bc8ca91eff5837fb26edab7989152fd"
    "en-CA"
  end
  language "en-GB" do
    sha256 "d700996207bc517a169fb569ed903bf06c0748faa440b6764aa09d6e084c3732"
    "en-GB"
  end
  language "en", default: true do
    sha256 "fca0e5c200755b983b6c9a1af95b45a59bb7ec92095e2ab9f81b99f5b6a9d238"
    "en-US"
  end
  language "es-AR" do
    sha256 "bb954fb9de0154f9572b372824f0fb06b00cf54b27ed42b97bde85fc1e8a821a"
    "es-AR"
  end
  language "es-CL" do
    sha256 "ebd9e1dd4eea624a4ca221956118f9168c8f0d20e80a3c825118e707c0a488fe"
    "es-CL"
  end
  language "es-ES" do
    sha256 "9afd3ff8149a0c016e23ec96c573a20eb1f1e27f485bfe1e35fb6c2d9ab73222"
    "es-ES"
  end
  language "fi" do
    sha256 "63d0e2fbe2605651d04f179d196f6d501463f694bacc43f1a437fb810b62064e"
    "fi"
  end
  language "fr" do
    sha256 "6fedd28ac2cdac6fc74d9a1aa1204af32560f901d2ecadc100ab950127e0d460"
    "fr"
  end
  language "gl" do
    sha256 "b1ab229df9b6e005cdb35da6f4d64972c402d8bbddebb3d04eef81eb0f1fc0a4"
    "gl"
  end
  language "in" do
    sha256 "7776e68662f1769d0de077b792d0e17acf641364424a634085175d5f860eb3d9"
    "hi-IN"
  end
  language "it" do
    sha256 "e38290a0a40d93c55e814a1163e4b81b3cf61ba354666eef5f9dba66023c25e6"
    "it"
  end
  language "ja" do
    sha256 "7fed70b7f29dc566ddf113d67e495f58eb7ee115a7ecafe49faad1cdf200aed7"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "06e1ec2fdfee06c33a98afbd9f1d67c748e11e02bdcdbe36c3f59999814af744"
    "nl"
  end
  language "pl" do
    sha256 "def9c637bda2291de7f6816bba68883c465cd89a94a547b8d7807308f50d89ff"
    "pl"
  end
  language "pt-BR" do
    sha256 "2fcd0cca8c922038e0f3cc5513ba732ad034087e514d2f054e9ecbd98d3ab19d"
    "pt-BR"
  end
  language "pt" do
    sha256 "ad82a24d49043f7cc5fee51843f7f4a260d731a462b5628a406efc4b8671f978"
    "pt-PT"
  end
  language "ru" do
    sha256 "67471b488428d95e6e8dc672b3e4d09e83f1f8aabf34de81a4bfbd543b2f75d7"
    "ru"
  end
  language "uk" do
    sha256 "44d721454e5a65d0cbc4f6422a1934d248f94c6a99ff25c3566cb756ac51ed90"
    "uk"
  end
  language "zh-TW" do
    sha256 "bdc57754373ccaa7729ca2cb8aa13eb1dfc681e7b5add526534140c6e8d96557"
    "zh-TW"
  end
  language "zh" do
    sha256 "c34ade6467bbf9aaed6c4ff78cd4522f06ee70357d4311c5f769e6128c0e2ba3"
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
