cask "firefox@developer-edition" do
  version "130.0b6"

  language "ca" do
    sha256 "2e685a55b4bc3fe25d007634bae3b8afe865157918355b56ccbc27007ed4dddf"
    "ca"
  end
  language "cs" do
    sha256 "1e43c9394e293532e289e919599e2932ae470d99d183702b1f9dfa96066f494f"
    "cs"
  end
  language "de" do
    sha256 "cd429af6c47b3e4a5488d72e0734e78e8068787cea7900f5776542c5119f61b8"
    "de"
  end
  language "en-CA" do
    sha256 "b1f7033d0c39f8d8bc47ddd9e9966f141577495f2e0c67a66fb08a1e66328303"
    "en-CA"
  end
  language "en-GB" do
    sha256 "74c6e2dba01a7ea823d6b769f91403d7937767da29e2dea36cca535d384aaa04"
    "en-GB"
  end
  language "en", default: true do
    sha256 "1a313872c9ae6ca27bee4eec9578eaa0545ccabc47409b575d6c95f95f579b03"
    "en-US"
  end
  language "es" do
    sha256 "a452ec977f24c36012e5c26473c17ee87b87d426c588f77f62ccfa5760924ec0"
    "es-ES"
  end
  language "fr" do
    sha256 "b9351fda6764400a5956c0ca89b0ce0e0a0b550605bb131e70cf9e7050fd44bf"
    "fr"
  end
  language "it" do
    sha256 "3ef17503e3b441d5ed0ad314a0c51a4edb4c5dca70fc78bbd1b345cd2fd7192a"
    "it"
  end
  language "nl" do
    sha256 "fc700c64b8e87d8178ec60bb24b65b95b5bce302e26d1e4343777fc133caff07"
    "nl"
  end
  language "ja" do
    sha256 "23cb104edf6ada0a13a2a58ba4fff11a4b8f2de695284f5e8cf2ffb4e77f0ef8"
    "ja-JP-mac"
  end
  language "pt-BR" do
    sha256 "d01bfe70596e8cf6170d1102d1e690275d5c5e3b46637384cccaba4b66a76b78"
    "pt-BR"
  end
  language "ko" do
    sha256 "ba9317b9ffbff2e34fd890777a2d78de0bc7657dc677bbb9116aa893e421bb37"
    "ko"
  end
  language "ru" do
    sha256 "fb400fa7047713cd3bf295d1a82b7d00ee01f349f4207c478c0bcf852cac7aaf"
    "ru"
  end
  language "uk" do
    sha256 "8f66055e5273dc159a8facc98e093ff5627d39ed49e628a4df34b56e4b0a65f7"
    "uk"
  end
  language "zh-TW" do
    sha256 "7f3a1bd9deb487aaac9de096d1d22c9287b1a0909a260af17b0e15f5866a38a2"
    "zh-TW"
  end
  language "zh" do
    sha256 "22196efdc021c535a7d143ab952479b480fa446caca5b2c9c864442ffbb15b27"
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
