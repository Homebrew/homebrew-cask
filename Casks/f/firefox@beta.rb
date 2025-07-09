cask "firefox@beta" do
  version "141.0b8"

  language "cs" do
    sha256 "18dcd969683ea0d46576ee40ba146392ebcefbb3f1ba44baa95db966a53b9a53"
    "cs"
  end
  language "de" do
    sha256 "44b19c8dbc5fc5d31823fee34eaa1250cbbc63c38cb92b41926c28ced7a54662"
    "de"
  end
  language "en-CA" do
    sha256 "859492c136488f4c4872dead964d8143e7adcc0a3252a2686afe702db12fd151"
    "en-CA"
  end
  language "en-GB" do
    sha256 "c8d3144890d076c1bbd0c7a16a69a110a06ff735d478497bd8940eb225215e71"
    "en-GB"
  end
  language "en", default: true do
    sha256 "a6e3184ad3fef2c95b57d553c2794f2cb6dbddb20969e3d78316ef6f8c2ce569"
    "en-US"
  end
  language "es-AR" do
    sha256 "a64f719e5e5b180b04e112ef01e1c5f4d3aa88f2cc88b7ebd5ab937cf3a319aa"
    "es-AR"
  end
  language "es-CL" do
    sha256 "5b8977a994c31fafdf54d3bf9d98b0cd269f9ec62d6ca0a721476c846e577ad1"
    "es-CL"
  end
  language "es-ES" do
    sha256 "721f8e0457e34f1d58daf8980e0b7741afb8dbc418768db0d7c47abaaa699f30"
    "es-ES"
  end
  language "fi" do
    sha256 "277ff8feb97a1fff86c470e2e18a6b0fa568a778c65bfa5b3b85b13b61509f94"
    "fi"
  end
  language "fr" do
    sha256 "b72bb82c7f49cca0fd01005c3249dc8757a3769e9fc58986309671eb0da98a15"
    "fr"
  end
  language "gl" do
    sha256 "769e0cc36adffebc12339c7249aecfedfc04adb63362e84bd8de8ddf34a9f852"
    "gl"
  end
  language "in" do
    sha256 "3526d4b8fe0b684f357b4aed9debe2302289187e3c35b49888d17cb7be572716"
    "hi-IN"
  end
  language "it" do
    sha256 "7466bbc9ade73e0f7cbdd15a1b72abf2e43638883f35f1c997ffff24cd6e0a46"
    "it"
  end
  language "ja" do
    sha256 "ea1bebf32d8ddab6fb62539cbdc7865775b578dc5102ec3f21e6172afe15bcbf"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "31bb315222d8476f22b2c2aa8c5fbd0913a2f13f1038c7297623ca507b532216"
    "nl"
  end
  language "pl" do
    sha256 "0b0f1113e4a78e254a61ad9c768aa9c3ea7fd12ac3e1dbf95fe3b021e3c47133"
    "pl"
  end
  language "pt-BR" do
    sha256 "542108dab60ff18428cd70eb98ce23b33109ba7a0bc9bdfb0d49d3d47bd76eaf"
    "pt-BR"
  end
  language "pt" do
    sha256 "13dd76de841d4e8ec32817459f7694c2f77000467b1ebd21a80fdb2471a68553"
    "pt-PT"
  end
  language "ru" do
    sha256 "42c07e3b67d4d60b00fb8c5a3f8032d38ff06cf402620c6cd50d36896420f770"
    "ru"
  end
  language "uk" do
    sha256 "d9da95a55e3671c2f332266775de9eed70141bd641566ce4d5d6831e38bdc6d9"
    "uk"
  end
  language "zh-TW" do
    sha256 "07857258431da582685d7fc9ac3dd63e23f0709b13e12769872742700d7e3635"
    "zh-TW"
  end
  language "zh" do
    sha256 "ac39b5d4f53c04a4a7034ace76b5e2272def0e3844f2c6283da23d9845d40309"
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
  depends_on macos: ">= :catalina"

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
