cask "firefox@beta" do
  version "145.0b9"

  language "cs" do
    sha256 "59b911c26f0532aa85970c6e92bccf668c70e65b372415c36ff8edb3a4b1506c"
    "cs"
  end
  language "de" do
    sha256 "b70a29df0e60ccfcb5d5418d6604449a36a3c4c5fc9e9d5a9cacd241980743c0"
    "de"
  end
  language "en-CA" do
    sha256 "74e4619e7053fe19238b2833ff218075f7179df901968ecc81058411e06b7b22"
    "en-CA"
  end
  language "en-GB" do
    sha256 "e977f78915a1a14cd6d3e247421ab7d9f4d7053b2fbc64d8a00c0ad8742acf37"
    "en-GB"
  end
  language "en", default: true do
    sha256 "87ecee7fb0af08ca47c91cc5d22081a147460ee937822e7ca3b69a6ea48855f2"
    "en-US"
  end
  language "es-AR" do
    sha256 "f8f9be1564a32661d52d562606cce719a8e2decb7e8318dcfde1871ef19ee19d"
    "es-AR"
  end
  language "es-CL" do
    sha256 "68ac1160bf3715bc0e53587db1ac8007b17e9ee4c94e4a261254244022ff381d"
    "es-CL"
  end
  language "es-ES" do
    sha256 "aeb3a0e331b10ce8790d541048b99cafc692a876e579f96dfd8bf0788f936f5e"
    "es-ES"
  end
  language "fi" do
    sha256 "b4483aca72f1c5a8f36ad42fbead760ffa9af12c7745998e30ba76219059bacf"
    "fi"
  end
  language "fr" do
    sha256 "8ca6b25bb16dfa71a1f2a761cba418b914a6c002076ad9010162cac9a565eb80"
    "fr"
  end
  language "gl" do
    sha256 "43c6852359033f09bf060e082a02745e06b925c5e221122e190a3824ca88aeb1"
    "gl"
  end
  language "in" do
    sha256 "eda91f121bc855deb630aca565885e2516eac83eff32ad746a7fad3f1a5eb871"
    "hi-IN"
  end
  language "it" do
    sha256 "6f3e9aff22068f3695dcb23b39d093bb633107b2d300e1410455caf16b05f8a0"
    "it"
  end
  language "ja" do
    sha256 "5b40fe5048b91cc52284e997c7d4fdd28bc0b95aed9361322662c325040213d5"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "44f5eea01b6e30788b67c053c44b42ac0fe6d0ed87fe4b08eb3cd58cd1381009"
    "nl"
  end
  language "pl" do
    sha256 "6afbb5d842501acb0a50645a85e14bec957dc96be4f69dee426d0e144a60dc6f"
    "pl"
  end
  language "pt-BR" do
    sha256 "771d09fab63c930da82a2f98e1e67451f6b5d89c53846fd87440b5f6059cd092"
    "pt-BR"
  end
  language "pt" do
    sha256 "3267fe5307777a538d992f92fbea2a2704e32a1c14ba7c37d4d3cee251672184"
    "pt-PT"
  end
  language "ru" do
    sha256 "0e5ccc46d6e1d8a073b69fdf863f1121ac68bf020d635be3e5bfcb3d9a75f41b"
    "ru"
  end
  language "uk" do
    sha256 "bf324e4523b606c97c0a82c7db9ff0a098835de2ac66d7f27dffd9ee5e6f58d2"
    "uk"
  end
  language "zh-TW" do
    sha256 "bd9640c13550442a3f46bda46aa2f76c4813feee2ba638b4c63f21a18eb1ac50"
    "zh-TW"
  end
  language "zh" do
    sha256 "ff1c09dd55a41e6d78360078a6e216d9c3e06e8738bee4154576ec1f90d3251d"
    "zh-CN"
  end

  url "https://download-installer.cdn.mozilla.net/pub/firefox/releases/#{version}/mac/#{language}/Firefox%20#{version}.dmg",
      verified: "download-installer.cdn.mozilla.net/pub/firefox/releases/"
  name "Mozilla Firefox Beta"
  desc "Web browser"
  homepage "https://www.mozilla.org/firefox/channel/desktop/#beta"

  livecheck do
    url "https://product-details.mozilla.org/1.0/firefox_versions.json"
    strategy :json do |json|
      json["LATEST_FIREFOX_RELEASED_DEVEL_VERSION"]
    end
  end

  auto_updates true
  conflicts_with cask: [
    "firefox",
    "firefox@cn",
    "firefox@esr",
  ]

  app "Firefox.app"

  zap trash: [
        "/Library/Logs/DiagnosticReports/firefox_*",
        "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.firefox.sfl*",
        "~/Library/Application Support/CrashReporter/firefox_*",
        "~/Library/Application Support/Firefox",
        "~/Library/Caches/Firefox",
        "~/Library/Caches/Mozilla/updates/Applications/Firefox",
        "~/Library/Caches/org.mozilla.crashreporter",
        "~/Library/Caches/org.mozilla.firefox",
        "~/Library/Preferences/org.mozilla.crashreporter.plist",
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
