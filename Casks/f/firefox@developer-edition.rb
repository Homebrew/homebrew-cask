cask "firefox@developer-edition" do
  version "139.0b6"

  language "ca" do
    sha256 "9947357278c3a21bc8a631dc4d2f0d8be12a764a84ead133e45ad11d7614857f"
    "ca"
  end
  language "cs" do
    sha256 "695c8598e0bcfd36e580a9ea42036a1b4e662f4dbc93867c94c088eb741c9d15"
    "cs"
  end
  language "de" do
    sha256 "6091ed9268f8c23f1fc857af1ce57cd1b506bf3b3e144a8b482ca0763a95ab5c"
    "de"
  end
  language "en-CA" do
    sha256 "e5dc3329876676df053f58e89de438bd28a17739bc1e8f2d9ea25acfae6a1447"
    "en-CA"
  end
  language "en-GB" do
    sha256 "f3562f77afffc1eb3dc224e55786408cda6602833dedae847534d0f5ac79e4e9"
    "en-GB"
  end
  language "en", default: true do
    sha256 "67fff4c02ca7f2809bb5737f6750e41918b9cc68d717697b64e38e88465636b8"
    "en-US"
  end
  language "es" do
    sha256 "9f98e512271e34d5d52bf64d7613d1c92eb4d157d2138ec064f156ebad0aa8bd"
    "es-ES"
  end
  language "fr" do
    sha256 "03d0bc65db98a153186eb5aa7f0b74f59afde9b65abb3c58dbf1a5102e4f5f8f"
    "fr"
  end
  language "it" do
    sha256 "48de74ad20b0452461fbb0c2960d23f4ae7559366395f17977dbe0a3bc70d163"
    "it"
  end
  language "ja" do
    sha256 "0d20190790a521cd1306d85d5745672fa2d400e05c55a5b7ce0038d63866b3b9"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "b6428421b8e4c8fa554e3b1b9a4995bb1d9a0b6da0ee923aa997d44b14a09307"
    "ko"
  end
  language "nl" do
    sha256 "79700aed612c1f8363ff0cc5f6f5ac24ee25a8ef260c4299ee78703ad5d4feb7"
    "nl"
  end
  language "pt-BR" do
    sha256 "494e76adea163501df17ba3dbf9224577bb5194f9d2a176f6e6de404b886d434"
    "pt-BR"
  end
  language "ru" do
    sha256 "9ce6881af1a81fdfe8d071291f21f8e3484d6091391f3f7e6f3d644a848aa261"
    "ru"
  end
  language "uk" do
    sha256 "d90d1c07f5c3c32aeee75728d3226c78212dbbd281be236eefad46c27352ee6c"
    "uk"
  end
  language "zh-TW" do
    sha256 "9a2bf06a82c9515dd4600404373942293a596e9ae1648387d2fba14560b2ad4f"
    "zh-TW"
  end
  language "zh" do
    sha256 "0fc0629c81ffc19acd9997ba4bf974cdcf6c79b8df9e2d505aa2fccc9d43ba60"
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
