cask "firefox@developer-edition" do
  version "143.0b9"

  language "ca" do
    sha256 "037f34413ea75c25ba6b8ea6fb3ab9c67a39f96bc4deb6025b8cfa92922959b3"
    "ca"
  end
  language "cs" do
    sha256 "67c0cf1069a48597e3c5ae4068115b284c7c1b2232f0ca4423b4bbf5d71aa036"
    "cs"
  end
  language "de" do
    sha256 "92f7acb379f933714c948463f2daa4b67fc02cd5bb19b94518076e0e6d5001d6"
    "de"
  end
  language "en-CA" do
    sha256 "e3a262c3d783b05b36ec64cce7427ba965de95a8f5a36d15b669cba53620eaa8"
    "en-CA"
  end
  language "en-GB" do
    sha256 "dbb44185f79a0dd8276a75642ce659a89fcd8394d5bc29568fdde10388667440"
    "en-GB"
  end
  language "en", default: true do
    sha256 "0af51447333a1afd2ce892967f38f51a4f5811c322b98d764e69a3c409cd6410"
    "en-US"
  end
  language "es" do
    sha256 "3ffc99906e4be7efb74cdeb86e2424bd72dc73f8f140d4213e1e7ba7344d650a"
    "es-ES"
  end
  language "fr" do
    sha256 "109c6151fb75d08b523450f7681ea92ddcab81df10b534544c77a6570b7436a5"
    "fr"
  end
  language "it" do
    sha256 "c6c4731baaa08d56e024e2acdec2b52577f26ae79ec6477f1f34cd27907c3ce4"
    "it"
  end
  language "ja" do
    sha256 "08990ae2a4c4d00562dced8b992396c13be0e722bdcc2c3529a71895ab213bbb"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "f22682a427374f6d92a2961562c95a3d9d6fb967924cae29df17290e63071b6d"
    "ko"
  end
  language "nl" do
    sha256 "8d85c2ae08191dc2d5b74a97e3c95af8386d6cc0a7b898c3670e39259449a40c"
    "nl"
  end
  language "pt-BR" do
    sha256 "e64162fa20bc6c60fccee4fdfa419716e1a64bad1e76413afacafecf11ac82c6"
    "pt-BR"
  end
  language "ru" do
    sha256 "3a4a538846d8e330ea5c495880fdd168427c49c4e0f57175f459105b3fffc1b0"
    "ru"
  end
  language "uk" do
    sha256 "86072f9c88c41ac3f13d46af1c047763ca4cabe4e9e5e3d79c2736a5d3fdb181"
    "uk"
  end
  language "zh-TW" do
    sha256 "45d9b9c14a8ad04b84f392292f71192aaa18e7ce3dce4bcdc75c1a8ace11b98d"
    "zh-TW"
  end
  language "zh" do
    sha256 "2a34e123d724dc5bccb4489703cc5eb8559a090c5cb40223373a660540945dd4"
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
