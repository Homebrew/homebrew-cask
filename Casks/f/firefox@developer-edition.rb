cask "firefox@developer-edition" do
  version "155.0b4"

  language "ca" do
    sha256 "d643e6b0d383df877c96621e55475b08680ec3cb549a373ff42b3fdec1945a1c"
    "ca"
  end
  language "cs" do
    sha256 "3561cd6345e38af41576ab9deca2c5385b3f9503a19e8edc6c31950e618073bd"
    "cs"
  end
  language "de" do
    sha256 "b5c6d3055f3329e3cc616ca4f083847eba9e72f6ad1650490ba57f9c3a246533"
    "de"
  end
  language "en-CA" do
    sha256 "b6d5f6c0a8062a14089564540a3efdf3ec762f44e910fe2f380e7307136bfe6e"
    "en-CA"
  end
  language "en-GB" do
    sha256 "523a892c475925eb06e64115895d034ab4b9beb9427a1a767bd74d790d8ab527"
    "en-GB"
  end
  language "en", default: true do
    sha256 "1c07b8bbe6c2b591e4b0f96b46bd4a5508b9395b56d305f3c1b727e99b8e7b88"
    "en-US"
  end
  language "es" do
    sha256 "e10717f3f7ca15e44861d65649b5eb471c7fc950ee71779ba952c53dd73c0e78"
    "es-ES"
  end
  language "fr" do
    sha256 "a148f5fa3dd2ab33bb29545d1c4f7b6175dea7e3187b877d488d2001b277c3fc"
    "fr"
  end
  language "it" do
    sha256 "524aa72630537713da151d734465396f673c201610926d30ca59d343228cc318"
    "it"
  end
  language "ja" do
    sha256 "861b4bf62e72bfec1d823444c1b8fcae4e3009ccaf40e10a7f66ce62965153ab"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "10c4c8822c394c1270d8c2ebc82492de081f6eb76bc78ba576028f1883af2d46"
    "ko"
  end
  language "nl" do
    sha256 "afa7f1f9a9de60230b601d5068f730580db86b65e56a71335c85a338634d771a"
    "nl"
  end
  language "pt-BR" do
    sha256 "86eda96e606c86f434e56fdac59c12d15a8ca8d8dad9a115d7214f77439446b7"
    "pt-BR"
  end
  language "ru" do
    sha256 "f10efea90c3b0d5eed44cc9eedf4693e3b383ca51b3a3fa8ae0569b9d116f81a"
    "ru"
  end
  language "uk" do
    sha256 "b993bcfa9ce8ce0b335469c0062e4648b1a77fef70bf918f69a656162d31fb9a"
    "uk"
  end
  language "zh-TW" do
    sha256 "aa534dc6799b64696bb339979dcbf6edf7ed903107307d36a24949d21760a358"
    "zh-TW"
  end
  language "zh" do
    sha256 "143fc2640dc335ab8b9d0e90406a8f3086059825ee06f19d0826d3300bb92fcd"
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
