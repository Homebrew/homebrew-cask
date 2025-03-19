cask "firefox@developer-edition" do
  version "137.0b8"

  language "ca" do
    sha256 "c6a97fd18db62d20bd0888d9665a3c05f31d45dcb905f9eefcac9453c5d00306"
    "ca"
  end
  language "cs" do
    sha256 "c0ab036daa3b71728f8378f32d58aacf1276afb26b409514f5418f6179ff0fee"
    "cs"
  end
  language "de" do
    sha256 "64afb4a38bfc7d593e5b6c2526ca839518049e8c0bbda235d4f50bf6079b32c9"
    "de"
  end
  language "en-CA" do
    sha256 "a3bbf3a321c867e2206d7641435b548e23ddf139a55c35e6744102ce53334efc"
    "en-CA"
  end
  language "en-GB" do
    sha256 "636e749150b8bedd9369c03675502c5012e4b1bba149bba643a51fc7f8bca1ae"
    "en-GB"
  end
  language "en", default: true do
    sha256 "388ca3fd8c2bd9d0ec69ce48364d19a84a61b889d82f18c9b5ebc283aba905cf"
    "en-US"
  end
  language "es" do
    sha256 "521d69913b0f4a771ce1d3e464fd9d3726e23a7f59360890be201c720fed3e72"
    "es-ES"
  end
  language "fr" do
    sha256 "90c6eb75468ad89688cf6b471f2598a53efa0e4b7708de35cdceb5e242beedd3"
    "fr"
  end
  language "it" do
    sha256 "6ac9aa7b38cfd715f7ce9e8e6ddef792bdba51f3e4ab33c6fabfeb1a832ba0b9"
    "it"
  end
  language "nl" do
    sha256 "7a70f60dda65e5b51d82f7527ef9f183d86cfc08b5dd50cef351e8c28d61dad5"
    "nl"
  end
  language "ja" do
    sha256 "1f6676488aa0131fe76b17d6f4990620804099d1bc2ca7e81a872bddff4a7c3b"
    "ja-JP-mac"
  end
  language "pt-BR" do
    sha256 "d1f16a2891d59597a8775b82569f9658a0b13d89e2bca6ca6d21e9c6bb35ed7d"
    "pt-BR"
  end
  language "ko" do
    sha256 "5f996d43cf2b846ca0f3ee1fa20d4b400eabd23c160c8e553adb9102a16119a5"
    "ko"
  end
  language "ru" do
    sha256 "90d5fa6158c2477dbdf49b9aed3961fb6c02ca75ad36249bf08ddaa50d90da5d"
    "ru"
  end
  language "uk" do
    sha256 "6150fe15fe56f74f343b9f319ab21d718039d33ac5fca2a332ab44ac9efe2949"
    "uk"
  end
  language "zh-TW" do
    sha256 "836adc8b9148621bd8b5d2717262d70f836e59be2e7b078761507fbb93dbe8d4"
    "zh-TW"
  end
  language "zh" do
    sha256 "d0ac38f239df6f3434f06840ca6ffb814c45c3461390d3a61be86849f2f0bdaf"
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
