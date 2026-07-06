cask "firefox@developer-edition" do
  version "153.0b9"

  language "ca" do
    sha256 "adb99e472d985c61b0e74d59dd6d6a4fc486b322f4f750a3c3fab73769fff40f"
    "ca"
  end
  language "cs" do
    sha256 "5126a8c1852d27601f06344fbb73fd1c107a3e16b558339d9a6953d19ab4d368"
    "cs"
  end
  language "de" do
    sha256 "ad2b1a4588b94f8a156fee696a0c7256a564c4ddd30679b6b2214f25bcb51fbc"
    "de"
  end
  language "en-CA" do
    sha256 "dd1aecfa1605983fa998feddb86bf20822f0df06ba505aef18c019f9609be8a8"
    "en-CA"
  end
  language "en-GB" do
    sha256 "5e9ec4f223bf294c88c9800919fa425da7a429bc0ebf6527b03ae207b2d4c62b"
    "en-GB"
  end
  language "en", default: true do
    sha256 "9badc91fbce5e93a27109ad8a288c4cb771d9cf6ce0658e4d70b563c06567e50"
    "en-US"
  end
  language "es" do
    sha256 "2fdf207a1cc74e036b794002e90705aebb4f9ccbf03d4a7c1aff05096fb27ce4"
    "es-ES"
  end
  language "fr" do
    sha256 "d5fced900697c6cf75a53ff1310a92f56be506f9d3727a93eca93852f7d8c8bc"
    "fr"
  end
  language "it" do
    sha256 "86d7950886ca3cc89439cb5be745545af24575eed3d15647666e5527bf2dd117"
    "it"
  end
  language "ja" do
    sha256 "8ed27ee416099cd12aa2008398d0d56ab5a198594be87f329b15426c3b6ee9e4"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "7bac537e12402ff12d2e3701ac73283fdbc848b772220d5c119f50976a39724e"
    "ko"
  end
  language "nl" do
    sha256 "2ae318a7081db188cb6051d6ed0817e23ada07174e5055b3a34172505dd64282"
    "nl"
  end
  language "pt-BR" do
    sha256 "97aa64557c13820049f980dae304f33defe4ae1430c2e62de9f27ad101125441"
    "pt-BR"
  end
  language "ru" do
    sha256 "71fcf658c65fbec53d5b39eacb7b7db91df24e9c4b2f4e43ff900bd1445d00d9"
    "ru"
  end
  language "uk" do
    sha256 "d2391400c332ab3219bc0190ba69a02e333d01b151ce462b03d6b20816331921"
    "uk"
  end
  language "zh-TW" do
    sha256 "c5372ba9b16618d5b3aa3bba75f67cf069d42e0942e0323dd110bf178e743d98"
    "zh-TW"
  end
  language "zh" do
    sha256 "85d2677fd8e08f5f4031a586f1c8517df8bd630713631aa82d945ccd9e31362d"
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
