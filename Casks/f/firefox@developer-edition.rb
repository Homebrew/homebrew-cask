cask "firefox@developer-edition" do
  version "132.0b9"

  language "ca" do
    sha256 "d7ec43a00bb148afa973b3997f46daad97a6a3708410fc39b6b014eaf5381e5f"
    "ca"
  end
  language "cs" do
    sha256 "c034b747a9b002f3b8e62f1ec764b70b62f18e654a18fedfd079aac3e718311d"
    "cs"
  end
  language "de" do
    sha256 "c6be1355e3fd916719d9967845af86bca685c281f0a32be5fbf4bf60d6113e9b"
    "de"
  end
  language "en-CA" do
    sha256 "a08eb66b4b5216f29cb01afce6acbaf82d34b1e002a14ede3886117a29e6b896"
    "en-CA"
  end
  language "en-GB" do
    sha256 "7c36b4cd9aa74daff3cfcbc70fe6117c5c515b76db0f3cc96f8116e6a68a17fa"
    "en-GB"
  end
  language "en", default: true do
    sha256 "629fe964d25388b86f7a1f2c35fad48a785f990f33ed5bd901972d6e6dc07166"
    "en-US"
  end
  language "es" do
    sha256 "42b360b0e449503f5b6870fca7e6df88389cb7a1a807fddb0c5ac3a3a85dd67a"
    "es-ES"
  end
  language "fr" do
    sha256 "0bfd9cb356485063e5700dffc7207a5df0ad720a605b3c93f389030957063bee"
    "fr"
  end
  language "it" do
    sha256 "ac8e4291721c6b26d771f6f7e9fb595c606d138921a65c3b851a487f03147674"
    "it"
  end
  language "nl" do
    sha256 "61725ae3ab0f44954aefd4a3d65f361901d3ca86001bc1bb5ec57eca993ee8e6"
    "nl"
  end
  language "ja" do
    sha256 "c406e9ef67eb1f7f30a15d39b6289b6cdc7dff95ebbdda58c45a7966f1cc08a1"
    "ja-JP-mac"
  end
  language "pt-BR" do
    sha256 "ffa8f806276d23bf3e87c88f98d12cda5922d7e88e437f1282f377375a2253cf"
    "pt-BR"
  end
  language "ko" do
    sha256 "c4683616d1dbc6e170def51f45a04b2b74731a826e03246d4c17742b04ccbb5a"
    "ko"
  end
  language "ru" do
    sha256 "5999009c9f5c6ec333ac1f18a8514d7b00a1a29c53803ef4966ce22f5ef22126"
    "ru"
  end
  language "uk" do
    sha256 "80b35c44b8b6ecae0401f662ca70f47656f526c55102119c417b3b95a2b92b6e"
    "uk"
  end
  language "zh-TW" do
    sha256 "884962f105958b81572446bab3c7e228f872dad65f07c2ae4bebb7a92834e593"
    "zh-TW"
  end
  language "zh" do
    sha256 "f536ed148e03337b0e778a79b25ece0fda4b73988cdc93c641386e4a3e002ed6"
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
