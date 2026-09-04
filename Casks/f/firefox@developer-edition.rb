cask "firefox@developer-edition" do
  version "156.0b3"

  language "ca" do
    sha256 "3d48952ec6ff8e1b8880d3d7946f661d878868f42fdd2ba0f003e991ea247ef4"
    "ca"
  end
  language "cs" do
    sha256 "5d73efda5daf9490f527a507b4145ac8c0012aa3ea95547c2e5fb62e2d6a35af"
    "cs"
  end
  language "de" do
    sha256 "9d0966c23b77257194f41e5507de865e4e13d0a94c741de1115a84ded85ee9d3"
    "de"
  end
  language "en-CA" do
    sha256 "01450f476b8d581cf1d92a284cd511e83570094e88336a7e9f89ae8a7969df48"
    "en-CA"
  end
  language "en-GB" do
    sha256 "c5f763daa460b8c803285b0197dd90b51310154ee639c86ba5ebe3aca24dd5e4"
    "en-GB"
  end
  language "en", default: true do
    sha256 "7e61b2035089f35d1824f810ed4aabed495597659633decc6835a47ef9553785"
    "en-US"
  end
  language "es" do
    sha256 "327705fad2c3010dabefeee26d5aff9432cacc0fa5010cef0ef08097c975eabd"
    "es-ES"
  end
  language "fr" do
    sha256 "da36ba53d4e38fa7d0e386eaf080c6bb67e8f4b3f889ad4b39bab57654098372"
    "fr"
  end
  language "it" do
    sha256 "0e439f063ae4ff260d000e88c071b790ba0cebc919605dcc3970e7cda032cec1"
    "it"
  end
  language "ja" do
    sha256 "378398cdbb49e717569109ba96bf4ab94de62ddd905417622bc2884bc2fe203e"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "953fff129b0ac88ea9d8db3cf670c9214a5b231ca6421096d7b6f0317a2482f3"
    "ko"
  end
  language "nl" do
    sha256 "f5e4952539333ce32f1168ab9b42a7ab3ef61c3b82c807e864db1f3a8ed1a375"
    "nl"
  end
  language "pt-BR" do
    sha256 "ed8f2d23875ff57a0834084e5cc6108628a72b8ff0565442d9adb5b53df2857a"
    "pt-BR"
  end
  language "ru" do
    sha256 "ce32e65142e6e26d2079f6040961955707e89ca413d168957498d0c0f201ffbe"
    "ru"
  end
  language "uk" do
    sha256 "734599bff9a97fdc75fd87c932884ebf70c7a50815cfbffe6fddad3476f24bd8"
    "uk"
  end
  language "zh-TW" do
    sha256 "bd336413b2654012dc0a91ba11d93707d99569fda50b0878ee911457ba557185"
    "zh-TW"
  end
  language "zh" do
    sha256 "05d08962b95ed36c1f9f69b9fc3582687e23cf6c60c5403d2dda959ca57b4d53"
    "zh-CN"
  end

  url "https://download-installer.cdn.mozilla.net/pub/devedition/releases/#{version}/mac/#{language}/Firefox%20#{version}.dmg"
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
