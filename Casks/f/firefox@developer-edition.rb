cask "firefox@developer-edition" do
  version "151.0b2"

  language "ca" do
    sha256 "3a6532ba3b355dced34c33f9181d8ee2c666c4d4cadecb34e666b555f3312d52"
    "ca"
  end
  language "cs" do
    sha256 "8b79dc32e6eb8831f545d6a057a935329a8384ce79fef464489ed5b1ca74403d"
    "cs"
  end
  language "de" do
    sha256 "fbeac4174a09af608c91b4c6f302bb3e2b9174a3a5dcfaad5480e8f3f3c13834"
    "de"
  end
  language "en-CA" do
    sha256 "22dcaa9fb8c1dd858eb42ff4d899b5cf607f9f3731def9694b76869db77903d3"
    "en-CA"
  end
  language "en-GB" do
    sha256 "6f541bce9301c356d82566f1f69855ecbdb0da87b44daa8f3da04207871e9f13"
    "en-GB"
  end
  language "en", default: true do
    sha256 "47410e4049363a206d88cefce06745c152446144e2a69b9c1c85db8671ca3c7c"
    "en-US"
  end
  language "es" do
    sha256 "efc55fb60032e531f52d664fe3c23866c137cef008f1921597c1908b73ce567a"
    "es-ES"
  end
  language "fr" do
    sha256 "447ce3a797cccb276531286abe921ef037d17359b47aa6ba52e827e4d615e012"
    "fr"
  end
  language "it" do
    sha256 "5de0deab7f1f29aca1c1655910fbd0350aeed0c75007c5d91285b038806a7d94"
    "it"
  end
  language "ja" do
    sha256 "a68b9dd60ca332a6e772d877b81fb67bb8ff94b18e687a77974baeb3360257bb"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "027afc12dcfbfa2145a2d75a6a22aed1e9d1b6e992898872468c78612ffdb9fa"
    "ko"
  end
  language "nl" do
    sha256 "99c51f75d72cf501353460c0c5b46bcfc5ea1d4a332b4174810888b19c658d3b"
    "nl"
  end
  language "pt-BR" do
    sha256 "95aafd60e41c82ad3ef2bd7f6bf97bce5c0a6410ff07f71532b63993a462129d"
    "pt-BR"
  end
  language "ru" do
    sha256 "35d8d0cc5ac284621cfaff3f44664d4aecf75f68b0e406b1395da8eacefcd2db"
    "ru"
  end
  language "uk" do
    sha256 "8c9c0e53263dd54cf88fd013b549841acfeb3ab5d484dea689b29f89aec72f3d"
    "uk"
  end
  language "zh-TW" do
    sha256 "fa4c70d5024042c274709b0f8f4274325c38a32e907c1e75da2f8745b8233629"
    "zh-TW"
  end
  language "zh" do
    sha256 "625889af9965712e8c4a0c438d6865613cc76c33d312dd92e6b746e8061842e8"
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
