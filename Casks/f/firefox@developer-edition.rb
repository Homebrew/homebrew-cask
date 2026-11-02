cask "firefox@developer-edition" do
  version "160.0b4"

  language "ca" do
    sha256 "c667f8d8c3a038e1d0c6405f0d798574cf0a4cf3f1dbb62dc710b50ca9b1836d"
    "ca"
  end
  language "cs" do
    sha256 "ba6e41eb8ae75ffbada620812d6f4071223d36163348466be1e6577a7d586251"
    "cs"
  end
  language "de" do
    sha256 "19b55255e0a7ebd93d1a102a4088839c1b5ebdcb3aaa431f4ed2b46da501e67b"
    "de"
  end
  language "en-CA" do
    sha256 "a045132c860ae79f8136f8ca0e7359304edfc35cab07bd3304a6e1c4e6ba60e2"
    "en-CA"
  end
  language "en-GB" do
    sha256 "9e1aa83822d83001568e498e906232af362009c9c385d3bb9e6853f91ff7d849"
    "en-GB"
  end
  language "en", default: true do
    sha256 "4e26b33e99ec80d15f4a9e712f44f5590dd724fc668d64b413c13e4b4a0b781b"
    "en-US"
  end
  language "es" do
    sha256 "59f487038cac62e98581a9b8e4a4eebc1b5b2a52e4d9a8923d35ccfbc0a7de24"
    "es-ES"
  end
  language "fr" do
    sha256 "de7a3e10f395f2476b4e2a2b2e583e968830f03a29ad7bb08c2b7566abfa29c6"
    "fr"
  end
  language "it" do
    sha256 "e87786d0ada36f2af9843ef97ca6e31b7ac510055830c1c84d31be1492f8a38e"
    "it"
  end
  language "ja" do
    sha256 "7cfdf783faaf8d35dcae2462c0d0971746d42d21ccb0ec7c855f11bf477d6fa3"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "4c5f5b4dc5595999f1d1c4c578842e7455f07bc0d88f47cf2d2b28fa473e0766"
    "ko"
  end
  language "nl" do
    sha256 "87901b6e86dce7c0edef7b02e0637df975de4f5c6de45329b701c42a03911101"
    "nl"
  end
  language "pt-BR" do
    sha256 "1f258d4d140727f4d29ec4d08c8bf0d55064d79d6b42c8fbced2f2a2da4a1e2f"
    "pt-BR"
  end
  language "ru" do
    sha256 "164aaf644ee00a0afc2a3f2d66f0152a6103fd20f5bb9b62e44590de43f1a510"
    "ru"
  end
  language "uk" do
    sha256 "7b1d2a2f6d0e78431f57790aa6cf7f88bc7e4fb78e31cf4d8a241ee2a29b0cd1"
    "uk"
  end
  language "zh-TW" do
    sha256 "427ffe6f4eafb25b06e407926734fec6e6de39544e3d25ffbf9925de19686175"
    "zh-TW"
  end
  language "zh" do
    sha256 "b88d9eced3e90fc10357553dcb791afb8504ac3441e85ebc02cb909d0ac87a80"
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
