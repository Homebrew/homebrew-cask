cask "firefox@developer-edition" do
  version "138.0b5"

  language "ca" do
    sha256 "c1bcc137822d3bdb99c17a5e1805246f85e88d5f8f31f22691b5881b3bf45c04"
    "ca"
  end
  language "cs" do
    sha256 "d6181df949d7994dc4a20243c2a54aaa622d2052c2843a848654a3a13c037605"
    "cs"
  end
  language "de" do
    sha256 "0281b141b684e5c8b69ba0cc3bb9261e2307642bee8fb070c2a4f569584e1164"
    "de"
  end
  language "en-CA" do
    sha256 "191298380179352ff5f727b4fa61d7f2fcbe427d3ec508d3b0e141603d02c45a"
    "en-CA"
  end
  language "en-GB" do
    sha256 "921a80b8058d971ffd9e60ec69f089e331df9f99b928048010e6d4a83bfb23f1"
    "en-GB"
  end
  language "en", default: true do
    sha256 "bc4468f6270aaac76efc794a5367c53a387ae41344abf0eb034c3772a19f7395"
    "en-US"
  end
  language "es" do
    sha256 "7a87003e55b5d19bada565d85f3ef8fdaf70a01e1a969fae81060b9a89e8b6fe"
    "es-ES"
  end
  language "fr" do
    sha256 "fa9753e0498b5b89f13eb07c90b56b208974dbfd72300fc2c90840016c90032e"
    "fr"
  end
  language "it" do
    sha256 "6fe871e266ae81b678cf8f66c19a31e371f5628c22f460593ed3828d84c6b924"
    "it"
  end
  language "ja" do
    sha256 "cd2c8c2ffdf482781836ef85e556aafb9130ee01dd282ee4d04ca8e7b89bd067"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "f9be4894d159efedd0d0c854e6a9cf6f893e027617b753eae9ad78a92c2fecf3"
    "ko"
  end
  language "nl" do
    sha256 "3be6e89dd29d5c48a55df159a83c1e2008781abd99e0574f5256f7faf38be14d"
    "nl"
  end
  language "pt-BR" do
    sha256 "29ad79f5476d6bb261558bc5d307898e0404e2da0da3ea9a2acf7cb63509553c"
    "pt-BR"
  end
  language "ru" do
    sha256 "cc4e7f336729a96966f87daeaa5bcde874eb79740e0b0116b719f87b10bfcf15"
    "ru"
  end
  language "uk" do
    sha256 "e77a21a0b766e527f684c242abd10f2663217af435100f3cc7aced739a179f5f"
    "uk"
  end
  language "zh-TW" do
    sha256 "b60ea0995ca5f0355ed712f296a094dd9f955fea444e63087066acb7ff11110e"
    "zh-TW"
  end
  language "zh" do
    sha256 "293adbeea26590fd4cd385c3fc1613dfacda18a9021f76c029faadc906b98177"
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
