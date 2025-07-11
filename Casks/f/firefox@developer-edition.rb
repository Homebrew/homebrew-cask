cask "firefox@developer-edition" do
  version "141.0b9"

  language "ca" do
    sha256 "65e7fd25ce0035b542811fe99a863fa2d58208cee6d6e15f0a2b561544f2838e"
    "ca"
  end
  language "cs" do
    sha256 "0151186c67525340f029011395e154833b682cf3c071bbcdf8f1b4dcbb96cc15"
    "cs"
  end
  language "de" do
    sha256 "09768eaf049ac8d34a59f586ff518c70e2127e05b6f3c71d99590b64a86a8cf4"
    "de"
  end
  language "en-CA" do
    sha256 "6610d63dbc9c9f0864279e9e421954ab71d225410deb935b2bf10ead881129d4"
    "en-CA"
  end
  language "en-GB" do
    sha256 "43dd64fbad82aca843f9886ad300bce38ca769bbeed04f64773c3abd952ea68f"
    "en-GB"
  end
  language "en", default: true do
    sha256 "5ba07a9602b9b0cbbd31cb4dd7cbc5b45ee778bea2f53870545f3385e2dead24"
    "en-US"
  end
  language "es" do
    sha256 "9236be2f30dded9a14494ac8c29f33d729e81b810c12474792a93368a0045405"
    "es-ES"
  end
  language "fr" do
    sha256 "f37e2c0bdf4aae7b8465e31de2a1910338ac32ffcfbd8ba252e1f297d9455450"
    "fr"
  end
  language "it" do
    sha256 "cd43359c36fde8788ca9ed6a0ced8e5942bc5b8dec888d23a049cc0736ad0dc4"
    "it"
  end
  language "ja" do
    sha256 "7dd8b153e58f52ae0651da740a8f78b94c75f1acdfc5d9ce34e1746fff2442fa"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "4bac6768157ac41bcf930ec3cf776dafcaa1277b800e64c0ee3ff6da54962ef8"
    "ko"
  end
  language "nl" do
    sha256 "ccf1b8963a797c265ca67f34e3edc0fdff01da81d262e8f4c17c2b9d4ed16f01"
    "nl"
  end
  language "pt-BR" do
    sha256 "c07d3c48de732170380a14da3c5f60a9739c01e1bdb85edb6a872ca7d71f5d19"
    "pt-BR"
  end
  language "ru" do
    sha256 "4dca76ff8d8d2b7de5d117542b049aac225d75ed33ff4bde63b60ce88d88d709"
    "ru"
  end
  language "uk" do
    sha256 "b8829638594b7611817cfa14f7961d5666f9459be41b5ec11c69954ff4a10888"
    "uk"
  end
  language "zh-TW" do
    sha256 "8e9b3611b6cfd14c918a78dbbb3acba2bb7c28f91c7fc53c99a532edc2eb8cd0"
    "zh-TW"
  end
  language "zh" do
    sha256 "ef6845851d8ca0fa9efcc70779079c39185d58c761ccdc7f45cf9082fb876b6a"
    "zh-CN"
  end

  url "https://download-installer.cdn.mozilla.net/pub/devedition/releases/#{version}/mac/#{language}/Firefox%20#{version}.dmg",
      verified: "download-installer.cdn.mozilla.net/pub/devedition/releases/"
  name "Mozilla Firefox Developer Edition"
  desc "Web browser"
  homepage "https://www.mozilla.org/firefox/developer/"

  livecheck do
    url "https://product-details.mozilla.org/1.0/firefox_versions.json"
    strategy :json do |json|
      json["FIREFOX_DEVEDITION"]
    end
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Firefox Developer Edition.app"

  zap trash: [
        "/Library/Logs/DiagnosticReports/firefox_*",
        "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.firefox.sfl*",
        "~/Library/Application Support/CrashReporter/firefox_*",
        "~/Library/Application Support/Firefox",
        "~/Library/Caches/Firefox",
        "~/Library/Caches/Mozilla/updates/Applications/Firefox",
        "~/Library/Caches/org.mozilla.firefox",
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
