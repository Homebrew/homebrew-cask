cask "firefox@developer-edition" do
  version "139.0b3"

  language "ca" do
    sha256 "1537068f9e353f37f69d39acb852fd25bfee7c9bc6f83af2b2dab2da21737ca9"
    "ca"
  end
  language "cs" do
    sha256 "ef6701cb85dbc9af3f2e0013c2813e4cc140307b2c7ddf77ed18307b2a3583a9"
    "cs"
  end
  language "de" do
    sha256 "40eae4dc5ab677b214dc13afd066444b892bd444f6ab09922a73ceb9ea00d4b3"
    "de"
  end
  language "en-CA" do
    sha256 "a15fcbf8b20e47ec62f8a0421d21f67ae091a3fb29aced137a52ba05247762d6"
    "en-CA"
  end
  language "en-GB" do
    sha256 "cdf313854d38f48bc31f30fa4e546d2ea8867f49872b7398005b574d26362548"
    "en-GB"
  end
  language "en", default: true do
    sha256 "bb516b07c4519ae946b79a6fc34e911221e5d83851aab2bafdff87c3e5b74b3c"
    "en-US"
  end
  language "es" do
    sha256 "2e150d79a2ba9e065128963097289a4ed340473de8a6b5f73a6435ca3bc8ae88"
    "es-ES"
  end
  language "fr" do
    sha256 "1392ee9e9ece7c3c0a1034ea3460ce18d4dc09695a6c3872f75b44e2083dd6cf"
    "fr"
  end
  language "it" do
    sha256 "896c2b89b0e74550ffee1b2b64cbabba41a5e966f0a606b1cd1109c82fa7b839"
    "it"
  end
  language "ja" do
    sha256 "bce36ac2f32606f1ee92fd9bda765bb7a3956efb4b87827b94ea246779caff51"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "257a6db2f9324b4f983ab0bd655096391dc193733ab0a4c3fcd8525f8e0d2e8b"
    "ko"
  end
  language "nl" do
    sha256 "c4d22c9a149fc3b9fe1026e12463e95e96dd684dba1d6087d295d83b214ee419"
    "nl"
  end
  language "pt-BR" do
    sha256 "67a1c150bf04edc8d4cc15fdb864828feeb3329cdd454be8b25bf455cd64b863"
    "pt-BR"
  end
  language "ru" do
    sha256 "c0976a0c47d82613fbcbd3054cc92f1239ec8af017b79f9cc3c7e2a46058b085"
    "ru"
  end
  language "uk" do
    sha256 "838a1942ea4ca9e163b06df9bc72970e128af87e4a35376f912623ef73b5b52b"
    "uk"
  end
  language "zh-TW" do
    sha256 "b9c4765a5aed85cece38efa50fed10fa361ba9ba56d9c40925661885680d8165"
    "zh-TW"
  end
  language "zh" do
    sha256 "0ab249304b86ca7ae055291353a4627e507d2699b6346b9ff3dbeba3766ba044"
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
