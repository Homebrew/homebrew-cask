cask "firefox@developer-edition" do
  version "134.0b7"

  language "ca" do
    sha256 "8ecc12cfa93009ea4c622ed7b97403f98bbb03b09631ea3630981fcec181bd3d"
    "ca"
  end
  language "cs" do
    sha256 "db1c33324045ece4ae43ab3607f9e316e597311b37c0b6ad1f533645c4ba3ce6"
    "cs"
  end
  language "de" do
    sha256 "351ee8c805718c0b806f8ad44feba1fafb5ae950aa189c0975d3170ae1c69175"
    "de"
  end
  language "en-CA" do
    sha256 "3a8fe07b53a6d4092b4089d2e9741154c3307742b59ea9dea421a48a9e289140"
    "en-CA"
  end
  language "en-GB" do
    sha256 "5444316cdceba90a288f08d7a1c400bcf38484952193817fec2a66d206699669"
    "en-GB"
  end
  language "en", default: true do
    sha256 "9dfe594fbef8ff1e774fb8e226c83122c365ad88bfc966a334c9e3beaf5031e6"
    "en-US"
  end
  language "es" do
    sha256 "5aa7ec5362ceaf6196efdfafc6d9360836b2610b06b3ccc4782d90b9e1647e2e"
    "es-ES"
  end
  language "fr" do
    sha256 "7b524af6f780cfe364c4d63eba99b91fb35b324e91aaa389aeac7c6eba38f810"
    "fr"
  end
  language "it" do
    sha256 "7349b1aa5824a9cc792abea17ce55d7d3fc7fcba079c3bd213f7c7f82be50373"
    "it"
  end
  language "nl" do
    sha256 "875b4641f50a1b490720c64f6ca0302e889ca9b5eb8c0879d8f9a110e2612d51"
    "nl"
  end
  language "ja" do
    sha256 "4919c5b85a76416b1a3c4e6dfd7aedfbe9773ce1c4661123e5b85f9d975946a2"
    "ja-JP-mac"
  end
  language "pt-BR" do
    sha256 "ea8f2ab55b4ad28c8996045d8f29bd5c2011a27a4f80c20d0117350ba67848b0"
    "pt-BR"
  end
  language "ko" do
    sha256 "796ef765a50ca8fa949efb9f6937ec1bed747f674970d458b76284c893bdda27"
    "ko"
  end
  language "ru" do
    sha256 "01edf31d20615188e1dc8bf5b24e45864c0dde9db04ea2a65ea9827a5e3953db"
    "ru"
  end
  language "uk" do
    sha256 "f277ea84d83d3f566452ad622c57dbde40edf60603d385247aba5c1dee87485f"
    "uk"
  end
  language "zh-TW" do
    sha256 "d437ed7a7672372b6c0631b3a712bb48c9dd24c0f723e93d86a23160f7bed82c"
    "zh-TW"
  end
  language "zh" do
    sha256 "c7b0b74563f543cbf5a274e7bbaccd78bfea44dcfabda0df9fd024f13a06b475"
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
