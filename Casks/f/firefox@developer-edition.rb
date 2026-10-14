cask "firefox@developer-edition" do
  version "159.0b2"

  language "ca" do
    sha256 "966104a63f8daabc0388b02c8d6fea79143ff7969a5a688582ed32a6cee9a899"
    "ca"
  end
  language "cs" do
    sha256 "8c1050ed6887ae7b254219d02ebb6c9c5a970ffd98769969d8644b89fe6b82fe"
    "cs"
  end
  language "de" do
    sha256 "40f37801d46b2700b4fdb4252fa7e68d48ed19a0ed1402f83bd66e3caffae184"
    "de"
  end
  language "en-CA" do
    sha256 "7f095eeaf6ee8f4413244da1fc4ae563e66636faa7ed648bbd35fbcf57c109dd"
    "en-CA"
  end
  language "en-GB" do
    sha256 "32cdd6e5217ce125f93de9f479fe0d454be99e05f64ea19b856352b8b3a40f63"
    "en-GB"
  end
  language "en", default: true do
    sha256 "c715af40f3e0578f899c3dcf64e88f2b69ef466a4c5851fe2b553855083efeed"
    "en-US"
  end
  language "es" do
    sha256 "a8d249c2579d0a14f30c0d30e779faad2cfaf654907a11697118c15a5f625cd3"
    "es-ES"
  end
  language "fr" do
    sha256 "98fb28574068d83615d289ff25f67c5233216ada7bee1c989b290e122e46d382"
    "fr"
  end
  language "it" do
    sha256 "ac37a8fe60d79e5ee0bb80d44ac1a57bb371b031d0214c2ed9bd58a3f84be415"
    "it"
  end
  language "ja" do
    sha256 "216699fbaa38d3c479c6a33b6501ce894b4da890c16342c790629e08e3c9f052"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "508463cab594b4fc81bceec3a6760e507a065f63e587ef4f7f248583d6d27435"
    "ko"
  end
  language "nl" do
    sha256 "db6cec3c81c7e3469bc807d2d531bf79c20929528c2afac1cb3303d1dc3a40d0"
    "nl"
  end
  language "pt-BR" do
    sha256 "6897aca6ce78cfed6455a1102b17db65cd442f2807fe225e79119383439bc13a"
    "pt-BR"
  end
  language "ru" do
    sha256 "4b34b9f97871f3a4bc1fe557c4bf23de083541d979076b5cb653ea8d8bf53822"
    "ru"
  end
  language "uk" do
    sha256 "d9721557e8133bd59ad0032e3a0ab5b7f58f608d23f41c98aba4a580325aa8dd"
    "uk"
  end
  language "zh-TW" do
    sha256 "24502da59d4f31c49ffcd6d0d8e4ecff1b907047c3ef0e727fff6858e7a05e8e"
    "zh-TW"
  end
  language "zh" do
    sha256 "dd8e65a731e02e353d7b7b691fc39fdc3d62b11c876fa0720ad04da68a093333"
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
