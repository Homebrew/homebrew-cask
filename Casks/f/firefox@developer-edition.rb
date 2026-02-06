cask "firefox@developer-edition" do
  version "148.0b12"

  language "ca" do
    sha256 "b2c64d9ad4badfc24333c02f7c075cf1e7c115ceab2c63d0ec40b8ababca5083"
    "ca"
  end
  language "cs" do
    sha256 "02d7d3637ed684da7585072ee6f2cc30b443eafb02978d8a744b36b7076d9377"
    "cs"
  end
  language "de" do
    sha256 "9278db6c03335b8190845885eecab46bb72bd030aa087acec2449cc965ae7f56"
    "de"
  end
  language "en-CA" do
    sha256 "ddf6b732b457d22f1653e54d3aca81a439132093aff68de3f547bbea791f2b56"
    "en-CA"
  end
  language "en-GB" do
    sha256 "7cac7c34a8290183185022c8af3379de9ed34bd112021fb4e8167054d5a6535e"
    "en-GB"
  end
  language "en", default: true do
    sha256 "9599baa49bf20c8301e8344da4f43a6036f8124766d2494664b2671b1ea3bb07"
    "en-US"
  end
  language "es" do
    sha256 "e33cfde341c0d6cc5be1543ad2e947ebb62916d32c599e5b3b603d2c0d0ffdff"
    "es-ES"
  end
  language "fr" do
    sha256 "1bb906e7ce8073e4276c09d3336788cbc674e6a330b435e7fa8c445673b310b2"
    "fr"
  end
  language "it" do
    sha256 "6777cdb1e4db26c89eb22431f67be5a2686e3074ea08eb922f38f98d6a168415"
    "it"
  end
  language "ja" do
    sha256 "795a2889ab1752b7673d903fc0fdef5dd95df9395b1adaf4a3d8ef60932077ff"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "f133e7d996f7561f121ef3ae7b17a9ed9c5807a45193cfeeb33bac347e7c4a8d"
    "ko"
  end
  language "nl" do
    sha256 "6f83a46e27b083eca80248710552e41f1d9997fbc404d495a601034cde82850f"
    "nl"
  end
  language "pt-BR" do
    sha256 "dac925fe8bd8ed7da5756eac99cb2066078d7f6f4ae870bcb177af310f075ef1"
    "pt-BR"
  end
  language "ru" do
    sha256 "9ca1fde8e7ae2026eaf5dddd9536d925e991eacec1383b49c92d8be6b11c98d3"
    "ru"
  end
  language "uk" do
    sha256 "4fe3ce118bfebd85ed990a2101066e335920282a0d0ea1fd7e383e95d4362a8c"
    "uk"
  end
  language "zh-TW" do
    sha256 "94e3aa05818b0d910e13622e05c4e5e17ad8469a5fd3bbe1bcd489969c3b1c9f"
    "zh-TW"
  end
  language "zh" do
    sha256 "ad97b98cd064bc50eaa06b454867bb9b976abbc6de669cab5ca65d603e3fa86f"
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
