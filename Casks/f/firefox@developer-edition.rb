cask "firefox@developer-edition" do
  version "153.0b2"

  language "ca" do
    sha256 "3e9b2d3f7397eb81b65ed450a436ba900857a6e356164169aa1d64893c6e3ae0"
    "ca"
  end
  language "cs" do
    sha256 "3d8c803af30b2a1c08dcd98343aa9c265bdacaa66e85a4ea65c1da986f44fa5f"
    "cs"
  end
  language "de" do
    sha256 "b38dc6588c8e249c3550285e36a11e3d285c7863de3cf9c427618c2e79afa562"
    "de"
  end
  language "en-CA" do
    sha256 "b445be46595a3e2e50a32985be43210482a2e865e3d9885a1bf2870d2e283f17"
    "en-CA"
  end
  language "en-GB" do
    sha256 "3fcd956139912413bb2eb22d90e975f1e62512681da443024f762978c114e52c"
    "en-GB"
  end
  language "en", default: true do
    sha256 "3c0b664bcea620adaf79e01c28405da77dae99a2696d598211798aa3f13c21d5"
    "en-US"
  end
  language "es" do
    sha256 "b0a06bc541acfda45a9360fe6aa6cab5212c30fe1d31eb9491ee256352199cd7"
    "es-ES"
  end
  language "fr" do
    sha256 "a89084b5dfe1db62a4da7ffb0b2d69720e86ac698def6de965fbda602ea7ae48"
    "fr"
  end
  language "it" do
    sha256 "5877e3b2b17b1d970e6898e382a6599375eee31fd3d88dcf484e2e20e2d9b492"
    "it"
  end
  language "ja" do
    sha256 "5202dd52192cbed880104a7de2c4214af34b577acb60dc99eb5fca39e2456064"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "94d159cda5ed9d97142b30a9c0079c67f7921db2f736c717225967faa3bf0958"
    "ko"
  end
  language "nl" do
    sha256 "65ce85698e375e2432d81e088f100662733896b6faa17642ab5c6f63e2ffc618"
    "nl"
  end
  language "pt-BR" do
    sha256 "72d168bb77c72f2340b4b5efd08c929e633994e1fac9fb729a7fcbdf6cb9116c"
    "pt-BR"
  end
  language "ru" do
    sha256 "97e66a26c5b37d3f22d23347d402d519edb793a42fd5212d266625e0c85428f5"
    "ru"
  end
  language "uk" do
    sha256 "ed481476d7ac33adb46c47adf73a3394d020e0cbadba77cda9f24623cdbab40e"
    "uk"
  end
  language "zh-TW" do
    sha256 "28505d12f7261369e882bfde7c46e4e3d38edaf3cfce6201f1ae7bffa0764616"
    "zh-TW"
  end
  language "zh" do
    sha256 "7669b2d72d236fe65e09a0eacfa24e0ec34f84b3684effc94b2ee3ac1ba7d3a6"
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
