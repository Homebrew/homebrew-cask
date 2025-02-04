cask "firefox@developer-edition" do
  version "136.0b1"

  language "ca" do
    sha256 "e4735c3cdeab54cf13c35f3b9543cac1e31371878c38893a6fdec52f6d32f68d"
    "ca"
  end
  language "cs" do
    sha256 "57e869598f7d8941a7581761f009ea64b86138c771047dfbce28d6e6f7d1b321"
    "cs"
  end
  language "de" do
    sha256 "d160819a6f295eb418772d3e34494c0af2359a53b7297a04bf01b412529ea059"
    "de"
  end
  language "en-CA" do
    sha256 "0aadcb17bd302e59276f3d0dcf8d06bfffeddd030103403b04b294dcfc1ae1be"
    "en-CA"
  end
  language "en-GB" do
    sha256 "cfc6e350a8afe1cbe85eb6dbe4b410e985b489ae46c87d3ba2fc585219910b9e"
    "en-GB"
  end
  language "en", default: true do
    sha256 "2b88b4855c9e8510d32a979a84f66dc9b8992b99c710f4e3de3deba97b006124"
    "en-US"
  end
  language "es" do
    sha256 "8e3ecf9a4370cda38280e03eae9d2dfdc70bcf2db30508f083d578fc283b76fb"
    "es-ES"
  end
  language "fr" do
    sha256 "156014d43602154b08194c285989bb75f2f2b4c0aa79bf0c348d3d618343726c"
    "fr"
  end
  language "it" do
    sha256 "f500dba183457a29f8ec44c32238544a74ddfb7c5d43417c4adfa925a052edd5"
    "it"
  end
  language "nl" do
    sha256 "11ae395d3a56b7b2edf1b9fd2eb532bd93b226071aa1137d08d48aef4ffb1d58"
    "nl"
  end
  language "ja" do
    sha256 "1cbbd53906bbfc54319556cf5f6f071fe02641ec10e398d01824274e2c0bbe6c"
    "ja-JP-mac"
  end
  language "pt-BR" do
    sha256 "dd2adea10c45de43b52cee6068b06dd73701523f108d050047053a4c8111b2a0"
    "pt-BR"
  end
  language "ko" do
    sha256 "3e6674465e7f7fef9c09d7394a0f761ca034aefea98633c57c4b7e0664a86299"
    "ko"
  end
  language "ru" do
    sha256 "0f85597401a734688123e061bcbf9dcdea9f7b7945c12a9969257b6e79732dc2"
    "ru"
  end
  language "uk" do
    sha256 "7a981098774a68deeba2edf08d434ce97782f1b0264555076eafcdd05060fcf2"
    "uk"
  end
  language "zh-TW" do
    sha256 "7b41ff151a27546c2f17d446b9485657c05b3782c1470e294932bf64454c66bc"
    "zh-TW"
  end
  language "zh" do
    sha256 "fdf71f50e4f0698d4db4dc752df7c96eeaf596ec49e75bf2c59545b4986c019a"
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
