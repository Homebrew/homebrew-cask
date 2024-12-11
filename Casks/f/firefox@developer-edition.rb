cask "firefox@developer-edition" do
  version "134.0b8"

  language "ca" do
    sha256 "4ef802469801a622047f4ba25825920f58d7e04321ec5cc3b37c6cae8f0e3ef1"
    "ca"
  end
  language "cs" do
    sha256 "7983e4e816d1b35e0ecf219301d3f775d8c123bf0e1e823cfead1e52428bccc1"
    "cs"
  end
  language "de" do
    sha256 "a0415c755dae0b1087d0022703df98231344df6900857d803592d5dab1f6485a"
    "de"
  end
  language "en-CA" do
    sha256 "6ce0aad41141c02cf4fcae952ce4c5d716ac669f1287eeb630bfb4f7c352dc14"
    "en-CA"
  end
  language "en-GB" do
    sha256 "6b30cd60ba207981816473ec1f61a6b4420cba195f806ffd6cacee345e1a82ec"
    "en-GB"
  end
  language "en", default: true do
    sha256 "9a1ea0a37ccffd1ce14c7ff60aea46dc3f60a8c5091c3a40426c5a90ca66aa10"
    "en-US"
  end
  language "es" do
    sha256 "4372e6ac03dd5df301c526bbb5a9df36e8a502d86e556dd77fe73a24747fcf51"
    "es-ES"
  end
  language "fr" do
    sha256 "ad94ba8042ebab12fb813c8ce9a9ef349a085bd834635e66e62abf09de04e9ee"
    "fr"
  end
  language "it" do
    sha256 "54f82584ad759fd63062e2334b7a086da968aa9e2b40fd9adec6c4011a5af7dc"
    "it"
  end
  language "nl" do
    sha256 "dd188825b82c595c73e680ac792956bf613648891c77ee6c4cb73db42f444d05"
    "nl"
  end
  language "ja" do
    sha256 "142192207263b286515700dd8bfd5d7d9503bccbae11ae6f74a109bbc65e2a79"
    "ja-JP-mac"
  end
  language "pt-BR" do
    sha256 "42e4a8a95fe3bb81d2e4836e75abfbe48ea34b3b4ce6944b3896fc8a607de7b5"
    "pt-BR"
  end
  language "ko" do
    sha256 "9d9cbc443bf304443eafb821f9913069bff556b738f0fc78df7a5847e379232e"
    "ko"
  end
  language "ru" do
    sha256 "a6ab6866b7f6784d7afbc0c70fe5661ccf9c84ea4c6a6c014e3a407e330ba0e1"
    "ru"
  end
  language "uk" do
    sha256 "e9af07d13bb988dd8a02a26deb218ac006e707b3c6abd60d207213aee4d7d044"
    "uk"
  end
  language "zh-TW" do
    sha256 "4cca254aa910b3e31f73b906da16aabe8f4ce8a418e19272a57dead6f0bf248d"
    "zh-TW"
  end
  language "zh" do
    sha256 "2df9efaf5787035f4d19c24b7752db3aedeec0c04a1ec801bebeee2e6e2887a6"
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
