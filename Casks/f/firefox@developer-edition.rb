cask "firefox@developer-edition" do
  version "139.0b8"

  language "ca" do
    sha256 "db7efa41b08c2e65b7aa74a578da4214c3733addfbcfd12b66d5fa373ad6c0e6"
    "ca"
  end
  language "cs" do
    sha256 "0b2e199806837330a6e8cc8352d07e139fdaed224b8365d82600fa7fccaa52db"
    "cs"
  end
  language "de" do
    sha256 "9ae6fa2b71f7bf0b3dfa932936373f96e8ddd7522203df2d185c5307ec4b8f25"
    "de"
  end
  language "en-CA" do
    sha256 "f7119507248458449b78756881b2c9e2d11f14e29e1d4e8d28895a209c36ebf5"
    "en-CA"
  end
  language "en-GB" do
    sha256 "ffb4cef711be0fc8bb4157dba8cd14ee776c37cbd4e6c7bd78a76371174a1755"
    "en-GB"
  end
  language "en", default: true do
    sha256 "cde7537f542dddf61138ed6c815913e3dc308e8ab5d3d915f6ccfe60b1cfd24b"
    "en-US"
  end
  language "es" do
    sha256 "ef42405c8b18d7cab819c6d4706f099637cf6720a20ca8864018e092c86cbc05"
    "es-ES"
  end
  language "fr" do
    sha256 "c58fede742e2b02d3c0a673ad1279fb9c42d82c15558183302deacf811b9d73f"
    "fr"
  end
  language "it" do
    sha256 "45cfad8617f887a0c78c3bfc1a6838abf7cf2910bb081cb2b52750965770e773"
    "it"
  end
  language "ja" do
    sha256 "3d61f05276c8dff69b6a4754a2c4c048118acaf1ef7b75e9962126b55198ab61"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "d8e9cafc2122541c40f0ec7f9c50218c65f9210a4c5b6bb9007bf6ce7435b64e"
    "ko"
  end
  language "nl" do
    sha256 "346155d47f565ea1ad10a7efd2211a2105c9f2f7ac2c0bdad0a43974af7df306"
    "nl"
  end
  language "pt-BR" do
    sha256 "033c6938aaf1972abfbae39b9136324ca53a7d19c99490c533fa5dbd49d9a099"
    "pt-BR"
  end
  language "ru" do
    sha256 "9fc35f530f6885e0f01cfb145f85810ae8b8149783b4e9e4f805a8bf8804d990"
    "ru"
  end
  language "uk" do
    sha256 "c5812fe816665b66d8783ffed78c0ef5c0e6cbb00bffb77b93e7d46a4459c30f"
    "uk"
  end
  language "zh-TW" do
    sha256 "113dd1a1e9bed43dd054638f4ca548ab7773c8560f45ff9be3451282d60bcdcb"
    "zh-TW"
  end
  language "zh" do
    sha256 "4e4f898416b120f7b96c7b1e0efee08d2c861089147dc1cf1876335c69046ee0"
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
