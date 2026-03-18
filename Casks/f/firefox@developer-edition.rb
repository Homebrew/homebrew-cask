cask "firefox@developer-edition" do
  version "149.0b10"

  language "ca" do
    sha256 "9c7273e414558ff22b924d4faf38069e290682b07f1d4b843e438267373e4c63"
    "ca"
  end
  language "cs" do
    sha256 "f674120fb4dbcf0340c62af514f86aa15cdf324ca8763804a4352c60329e3381"
    "cs"
  end
  language "de" do
    sha256 "be0daccba10c009def767cc49542dbe3e49d98005ab2fc7ecc667aa303f31bb7"
    "de"
  end
  language "en-CA" do
    sha256 "5373ad747ec1d12a1159ce2996ad4a56c8e8e95e243e870d2d78cf170cdae273"
    "en-CA"
  end
  language "en-GB" do
    sha256 "cdb3187e08773b6f9b075a63c87476f18bebab4547240bdbe1d19bfe12177bba"
    "en-GB"
  end
  language "en", default: true do
    sha256 "3ec6bcc25d3a8c38716ed51e0e13765896c6982b114315f8763877daa3477f37"
    "en-US"
  end
  language "es" do
    sha256 "37c4440abcc42f6ac1a340c54afa56664d1480e4b6548e7c548e16690ef1350c"
    "es-ES"
  end
  language "fr" do
    sha256 "5dc7a7582ee8f09619bcf92fa248010b09ec4d3d1d519896e97208f689ff00f7"
    "fr"
  end
  language "it" do
    sha256 "8a1ba4cbcc55a7e37a22155cae84470d2f4a5b52e17a22fae7678c4bc712a2bc"
    "it"
  end
  language "ja" do
    sha256 "35179320899d461d65d5466f9b0fbd7478350949ba985f465c9485757744d401"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "ffee918612c3ad0ed4f1ded079bdf57078c4a28b1f056f669361c5da95caa990"
    "ko"
  end
  language "nl" do
    sha256 "6816f6ac4e0e1dda1622e1005782a5ae5f988b6d640fa41478becc44fb7d1223"
    "nl"
  end
  language "pt-BR" do
    sha256 "91141fac9ad3962c0cdbdb9afe199f6540141aa93d9ef3770638f5b61cd4f090"
    "pt-BR"
  end
  language "ru" do
    sha256 "cb39a3b34691f25bb66143e614b3c2f207a1ebca276a7fb31598f4ca053f2434"
    "ru"
  end
  language "uk" do
    sha256 "b18458ad2a267aaaf17d7f91927d46c23ef9b7973c84ef460aafcaff4324787b"
    "uk"
  end
  language "zh-TW" do
    sha256 "80e7b547d33b71a1e213bfc50ef1366506c69a60aa35d067b9b76ab76dd82bfa"
    "zh-TW"
  end
  language "zh" do
    sha256 "2b53878ca5f44eaba137bec1cde27da9f2802d3a2336115dd3273941f1b8f835"
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
