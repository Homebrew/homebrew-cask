cask "firefox@developer-edition" do
  version "147.0b9"

  language "ca" do
    sha256 "473f20ff0700af0a62e42bfb2cb1f2060b947c96b59e76baed8c311d804d6c12"
    "ca"
  end
  language "cs" do
    sha256 "e2fc1a4aa55f545d8759b41effccd69f3aeb6955078156885353cdbee6e14be7"
    "cs"
  end
  language "de" do
    sha256 "fc0ce29fa5c7121e0f331949b5311cca859cd48d4333d096ac49cda5b50ada34"
    "de"
  end
  language "en-CA" do
    sha256 "1129918937e938db573bded2f94f36708e111a46cd554fe29ae2c372732ac2a3"
    "en-CA"
  end
  language "en-GB" do
    sha256 "d3e1b70b0db212e428c35c9ff3d5f52c6a29e7d896b1db9d42529752d94bf457"
    "en-GB"
  end
  language "en", default: true do
    sha256 "67b74eaa9b974320efda52fa302c51e37628c82bf171fe786c5ac338f7f141bc"
    "en-US"
  end
  language "es" do
    sha256 "93f142fdb9a4dd3c3480e9e7d55f5bbe4ca0fd903f2f104a2602b4e30afda232"
    "es-ES"
  end
  language "fr" do
    sha256 "ccb8babd495e5ed59d8839d0bd98a23eb7fa9257f35e6eac4760f7d4155d8d9c"
    "fr"
  end
  language "it" do
    sha256 "90516bf9dadf71220176000a74c284fc3e3cd4ccfb6431ee637d7cbe2131747b"
    "it"
  end
  language "ja" do
    sha256 "7b255bcb5b24a49894546e9ebd4a264c8c440d84f5df6f7523f4acf43f97d7d7"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "509503930c0fca1d9f9132bea2dabb4f1c1b32ab2683c3d1270c955cdde884fd"
    "ko"
  end
  language "nl" do
    sha256 "5adba09e839a0b0645db6e7919bc5df87e53ec457385026fcd7dc67d3e93d8ed"
    "nl"
  end
  language "pt-BR" do
    sha256 "e7230d7f0f5065fcc5d0da2fb5f51525d68666a196e30636d953f989507693b3"
    "pt-BR"
  end
  language "ru" do
    sha256 "02c4782d58f62e552d236016f3d7233688071d9b1705fe8b4b068f0fdbc938a4"
    "ru"
  end
  language "uk" do
    sha256 "e128a0def928a9d7378674fc373a3e2e733696f944804613e515169b3363831b"
    "uk"
  end
  language "zh-TW" do
    sha256 "9f8ec2abf22849afb2ea9690a3cd7a2789cf06cb6f245d74d9dd5eeb4aa817c4"
    "zh-TW"
  end
  language "zh" do
    sha256 "91477258b5d1b2a07fc2a57c3e632b111afdd314c5838dd02de1bd424791e19d"
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
