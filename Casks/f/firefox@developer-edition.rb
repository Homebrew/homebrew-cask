cask "firefox@developer-edition" do
  version "154.0b10"

  language "ca" do
    sha256 "9267d0ce25a6a51c7a149cded3426fadef708f36e5a9ff69e8d2b3b93f40f7d1"
    "ca"
  end
  language "cs" do
    sha256 "64f5fb6d768324f3966454804c3e18b3f1c37a81c7e011b7f91126a71b1b0dc4"
    "cs"
  end
  language "de" do
    sha256 "f1f96bed5988450965c9ca3c0a06c6708a82af5b49d3d066c8987966f3f42755"
    "de"
  end
  language "en-CA" do
    sha256 "af968ca4aff2ce55edb0ecb234fa221edaa82d83b703e28272ef81b1cc31acdb"
    "en-CA"
  end
  language "en-GB" do
    sha256 "8532e9673a98b1b193939b7d1bb9b5548fab71b15172c882cadafd6397468e31"
    "en-GB"
  end
  language "en", default: true do
    sha256 "71cf94fa77d34f09de875ecb3db1dc24bddbb8df8722cd971d45e6333c10229d"
    "en-US"
  end
  language "es" do
    sha256 "226131b26e56c0b31d7af635a43ef245830721115693616ebfcec7bbc2da708a"
    "es-ES"
  end
  language "fr" do
    sha256 "6e4857ea2d2cc8ed483bba4083f83a2054a500e2b1ceee6f7a253c6387919c7a"
    "fr"
  end
  language "it" do
    sha256 "4fcb4ea297b070dd335ae8274d4ae5ef4dc60dd33ca8f423c21b50375569efaf"
    "it"
  end
  language "ja" do
    sha256 "d1ac9b465cf29b65057a589db48e18618fa81b7a2661e5ec57656befd16ee6f8"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "93c452e6d781e482bd122c9ab71147bb62b982747ea73c055a352087827a00ea"
    "ko"
  end
  language "nl" do
    sha256 "a7024600ae08145fe5913b6fa9f38e88df7e7c12841ef9d1e7296754738fa80b"
    "nl"
  end
  language "pt-BR" do
    sha256 "2903336445f683b8f7a6d915cc362fa68d6e0be9b52974b93de7eb7adb9f82ad"
    "pt-BR"
  end
  language "ru" do
    sha256 "4464b59245cb317690c45de20f61681d50f13c25e298a2b9b3bcfd4533b0e554"
    "ru"
  end
  language "uk" do
    sha256 "7e6e327dc7aeb0d9ec1f68eadc656c5c660b99cb5c250cd9d656dbd27a8d6ad2"
    "uk"
  end
  language "zh-TW" do
    sha256 "c05529609c063659c276fabdd71b1a81616ae191d5b4c0cfc60a5f3c476059f2"
    "zh-TW"
  end
  language "zh" do
    sha256 "fa8e8b8ed12f2a628180ea15f0b1e0da21851e328c95c8087e2bd6f80e693859"
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
  depends_on :macos

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
        "~/Library/Preferences/org.mozilla.firefoxdeveloperedition.plist",
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
