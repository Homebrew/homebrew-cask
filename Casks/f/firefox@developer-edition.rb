cask "firefox@developer-edition" do
  version "160.0b5"

  language "ca" do
    sha256 "26df1afdbdf42b103c4e28cfa78faac2b6ff780572de67f402c89d23d5ac7359"
    "ca"
  end
  language "cs" do
    sha256 "dbcd055f74d4df22886abe052d17642e461a09c838e9ccf9712dbf6c8f172ff3"
    "cs"
  end
  language "de" do
    sha256 "958ea8c2ccc3b9c325f8b08c7d2fa7ec801db649e87bc6ca44c994cad902bc31"
    "de"
  end
  language "en-CA" do
    sha256 "c1a5fa7b45e28808841dfbd3ee28884f21d6559644cad88b61bb89d7ed92eab3"
    "en-CA"
  end
  language "en-GB" do
    sha256 "93181ada3474e8d0d259fa867c64e2142e998e6698db556d135b8712d0536177"
    "en-GB"
  end
  language "en", default: true do
    sha256 "296e44072c3bc2bea65de82f516962747462ac4c7257f9595cc820408906b2c6"
    "en-US"
  end
  language "es" do
    sha256 "97c2cf0c2c2a03ab03b01a54950ea4fac4b841758708fdd49fd0a82f4e02cf76"
    "es-ES"
  end
  language "fr" do
    sha256 "a118d191e0b158b13b85057fa7a35f31d9bcb69f0251466d27096d51220b659e"
    "fr"
  end
  language "it" do
    sha256 "dccb272f030d038114c5c1b9aa32b5a236cdfc61f6ee2ab5e2d6c9074bf80fbe"
    "it"
  end
  language "ja" do
    sha256 "83f1e2f5a62114a8572c1643276413143521a847507287ba54cec35b164b2196"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "709b2506bf19f9a3dc0eb83086aecf116790f63011f7c045d385a72d604f0c64"
    "ko"
  end
  language "nl" do
    sha256 "6cbe2ea7e0c2d146b5bae653dda10b98d7d9a3aaf2ebbee7da66444016d9b0b8"
    "nl"
  end
  language "pt-BR" do
    sha256 "7c974e08f0ae6ee1b02e3bab72a2fbb9afc0a15452a7a96bee4339a4f68125bc"
    "pt-BR"
  end
  language "ru" do
    sha256 "d55237f6c2f5e8152a27c5fed8c3de77b324fe6b1f585c602bbf3cae0e568da1"
    "ru"
  end
  language "uk" do
    sha256 "bdc38132337273854895d1f35a1d1f25acdcb5da4584f0e8f47dd1a11d046aab"
    "uk"
  end
  language "zh-TW" do
    sha256 "c859a3d18447e92a3ebab8a8a453c5022ca31f9b86f17e15805b320b8cadbd14"
    "zh-TW"
  end
  language "zh" do
    sha256 "ba205834dcd112b884b61f8bc43baa55fe71ca6acc4e998ee6c9fe4910f5abe8"
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
