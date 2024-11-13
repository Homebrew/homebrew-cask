cask "firefox@developer-edition" do
  version "133.0b8"

  language "ca" do
    sha256 "243074bee82af22e7c813ab76ce6ec5b9c76390f727da0da07dc9caa133a3169"
    "ca"
  end
  language "cs" do
    sha256 "1490542d235e351dd4aacc9847715a83e88f59f4552cef42eeb92c928f4d77b4"
    "cs"
  end
  language "de" do
    sha256 "d84a0bbf8abfd2c1b1942c7cb6efaecf83bab9e9860da22530427d8bfe22b8d2"
    "de"
  end
  language "en-CA" do
    sha256 "a6254ee13e3a435fd666316ffebd77b9e38422ef196dac22b4c5448e9240ec6d"
    "en-CA"
  end
  language "en-GB" do
    sha256 "31136195fb4525dcebc5e4500277ce81c509140b05adfa5156404095a857cba6"
    "en-GB"
  end
  language "en", default: true do
    sha256 "f884a2e4d2cfafb810e7bc45f1a3106859c2eb2ba88a4ca8b5f1453a7acf5990"
    "en-US"
  end
  language "es" do
    sha256 "52ab01f726eab0ca0b14f7c5863f8d7fc577cdcb10e6af6ac9d5b2ebae71b610"
    "es-ES"
  end
  language "fr" do
    sha256 "81706e380d717cd4a4cf87523fdde93c75b9e0726de32a7d3a2b318f825c7fbf"
    "fr"
  end
  language "it" do
    sha256 "4f82e42515d02908cc25d8ac1525a4e95f519c8a1ba8a559c03409b5ce25531a"
    "it"
  end
  language "nl" do
    sha256 "055b0e2756cc953efc53eea8f0c1f0314633f94baa600455d02a5281a735f470"
    "nl"
  end
  language "ja" do
    sha256 "1c3146112996028d78402113b04a3d25d5b6fcbacaf15d30a8e3ba367602b7f9"
    "ja-JP-mac"
  end
  language "pt-BR" do
    sha256 "d89b8d1162236ff716a514e214e6e59fd2b4ff89f2a05a9e66b0a47cb1e7f719"
    "pt-BR"
  end
  language "ko" do
    sha256 "1cca4cb3f623ec9bfe65f6335904a11e807fee9d5c1e8c8960883b79df454f93"
    "ko"
  end
  language "ru" do
    sha256 "7f683b8b8fe288d404e3f05da1aea98502bd3f0dc92581d0fc99dc057f928c9e"
    "ru"
  end
  language "uk" do
    sha256 "16dcdcd03c14645e7f4fa701e9b7e59ee188aed9a681709aa80f55418ec39732"
    "uk"
  end
  language "zh-TW" do
    sha256 "1a6b7cdfb1adce1ab88be7fa1ce76457ab793c3ca2b77615a7b51c8ea6c2dbe6"
    "zh-TW"
  end
  language "zh" do
    sha256 "29f520d44d21644825a739ec99590e85746a531bab72f86d2bb1fdd4decda7f6"
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
