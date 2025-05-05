cask "firefox@developer-edition" do
  version "139.0b4"

  language "ca" do
    sha256 "8919b2cd99853339420cecfbe6c3d8a67005ea5c4bbc72ee09fa4333ee2152d8"
    "ca"
  end
  language "cs" do
    sha256 "4004d8f3bc6e07acf855e33d1ad100bafb80f0887155af359693aa515792849a"
    "cs"
  end
  language "de" do
    sha256 "ce0f7ca087cdfcdc7ad76e560fa6caf9f8fcae514c639e97da3c84d064fa192c"
    "de"
  end
  language "en-CA" do
    sha256 "53220a5a6078a616242fa2421d8461a37dfd7a25cfac38856a028092abfc8ffe"
    "en-CA"
  end
  language "en-GB" do
    sha256 "e56b3b4270a459f250c853e729a7ddd5cbbd424c4e2ab315f8b396618d80eaef"
    "en-GB"
  end
  language "en", default: true do
    sha256 "e458a17c5c37448d354219f1bab0c6bccb4ff5524e8d6881c0444d1ce3b57b59"
    "en-US"
  end
  language "es" do
    sha256 "f08a39dd0519b955b2dd78c2a4bc464899af24aa941d87023689896a77747b41"
    "es-ES"
  end
  language "fr" do
    sha256 "0f408f7c3b223bd2b1ad6656c152bc14f05f5c6b46693c385828bb70c90d80fc"
    "fr"
  end
  language "it" do
    sha256 "9dba1a82e137459119345f152b37bf25a419d0c34073d57b43874e925cd9e5b9"
    "it"
  end
  language "ja" do
    sha256 "586ef366bf837888355fabe09b14fbc05ff14e4c71ba2eb53b8805d37a731d5b"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "3517bcc84407a3e71c453b1e5575a14b4bea20e955ff17e01f112e7e640e7a66"
    "ko"
  end
  language "nl" do
    sha256 "b683c9656d874941a2ef0f5ade5d36797c6bae75421c217a2b7743f2a1a8c72f"
    "nl"
  end
  language "pt-BR" do
    sha256 "97cc5fc0a4f6535e142cf0e6a296f9324558ff0108154a3c405ead2a019b575b"
    "pt-BR"
  end
  language "ru" do
    sha256 "212e62cf052a4bede783a1fd22922c76449d0673ca6d1ebf7fa05a4cb2678c03"
    "ru"
  end
  language "uk" do
    sha256 "fa9b0048b084c094388fd0d9fcdbc69226178c4c9b86f00f08c9b285dde24211"
    "uk"
  end
  language "zh-TW" do
    sha256 "6dd96198bbbe41a2979269fac3ad87e3d1b12711a6913bdf23a293d0d0375329"
    "zh-TW"
  end
  language "zh" do
    sha256 "b4a6acda3e955ca590970aae3530816a2931811ea27faf2b0ffbd605272dbf82"
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
