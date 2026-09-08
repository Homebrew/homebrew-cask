cask "firefox@developer-edition" do
  version "156.0b4"

  language "ca" do
    sha256 "4e9fc51dfd51d1b8efca7629e69d13152eb24f22c00bdf637cc8a8e9a1618125"
    "ca"
  end
  language "cs" do
    sha256 "471a20823913700913558d52af2853b96eadd6051066392918e77341844e118b"
    "cs"
  end
  language "de" do
    sha256 "66c8e74048c8a7b40dc49f4c7da7e0098e2e787b37eddaedf6bfddcdf02b4a59"
    "de"
  end
  language "en-CA" do
    sha256 "cf9f76ff8cdfa0b6db7fd1bde8ca1408f90a3cf1be46b17df300d87564b4a1ac"
    "en-CA"
  end
  language "en-GB" do
    sha256 "68cb0c41ad1f7f1168c4932a836975c6a9821495d5daad3476e6614ca90203f3"
    "en-GB"
  end
  language "en", default: true do
    sha256 "353ea19d90ff7097402611a010b87bad0665fad0c6ae6690c4c906c0e3647da3"
    "en-US"
  end
  language "es" do
    sha256 "f7c748902b646137de1f39f6dad669e3bdbaad7f33461a31c2ad47acdc8a4a7b"
    "es-ES"
  end
  language "fr" do
    sha256 "a9d6972a6726ae75bced241498123ecb5eaac77f48c1d027ba9bda631cd17e4f"
    "fr"
  end
  language "it" do
    sha256 "8a46d1d10381d0891a128321428a43a677c1adcd0a53f9bfc539bc0bd8efcd82"
    "it"
  end
  language "ja" do
    sha256 "424aa1785c0a1ba28a49a2003b82055ed0e644b8901e1d2a893e6ee2e16aa40b"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "ba857a6d0795796d282d8658ca8cd3f2b8ca9f5329ff54fe4e8e4e7d9385d80c"
    "ko"
  end
  language "nl" do
    sha256 "ca766e88de377c1d294225273d236d38923cb6f982947fd8226f60613a39acd4"
    "nl"
  end
  language "pt-BR" do
    sha256 "a6579bfc49bc2d9287e640f12b7d232d631c827bf055b64b76456113d49ea6d1"
    "pt-BR"
  end
  language "ru" do
    sha256 "5ad6e898ec65599d3b0c65185ee6e054e5d5c35c33cb07a98f92d8dce0ea5603"
    "ru"
  end
  language "uk" do
    sha256 "3655f288778eaa0cd6dd286d6500eaa0abb3ac5547c455efce1303dcf13c3e25"
    "uk"
  end
  language "zh-TW" do
    sha256 "e7a53ef64e3a982c8b1f8b64494d6fc2d249c4b1a624b2fbd58adc16e1404cd8"
    "zh-TW"
  end
  language "zh" do
    sha256 "02421d5a1b300609e3856b2792ebdcb335f7beba8cfc4a0fd9131c036cf4ee66"
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
