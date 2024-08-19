cask "firefox@developer-edition" do
  version "130.0b7"

  language "ca" do
    sha256 "d8f2b0ba57c8b4e80aa011d63869caaed7190eb65a0552b7545dbd1216d54fb2"
    "ca"
  end
  language "cs" do
    sha256 "f343a065629ddc7f5d1a3d5efdc432f9536118fe0b0203380c506109c2b6f13a"
    "cs"
  end
  language "de" do
    sha256 "3dbf2e1ad2e579012314ec8e0990e103c6d66c246c961953f4f583a26c68d6fc"
    "de"
  end
  language "en-CA" do
    sha256 "f02d4851edcd919ab7da1bdab1abb8fe88a6040554a52ce546eb367c9066936e"
    "en-CA"
  end
  language "en-GB" do
    sha256 "81b701b66d1150f07f462b70fd67a94e38dc1181a8316646d956135350ae5a46"
    "en-GB"
  end
  language "en", default: true do
    sha256 "929f1fcfb0e132bd990f7abfec6a2a3c81c6ce065fc5fce38d0feda93624dbb3"
    "en-US"
  end
  language "es" do
    sha256 "ae4e8463afc7234102f426747f8aa4a89e19fe0157cce6e6f462863c0e1c1ec4"
    "es-ES"
  end
  language "fr" do
    sha256 "56c1db63758903b0f0a64cdf57b35796b20f506dcfb710c1c122f093e565c561"
    "fr"
  end
  language "it" do
    sha256 "bc32a67c7f41b96b2d1bad92e66e7bd099e532c9c3c53a7a45e6f3328c87d111"
    "it"
  end
  language "nl" do
    sha256 "5f96e4dd89cc42adb1827ace80bff9451f006aad78fdd5872d92ac33e5656eaa"
    "nl"
  end
  language "ja" do
    sha256 "0f3db2d401aa24855b77ced53c469a827b0d2e5fd8466930368a1dec8dac04b6"
    "ja-JP-mac"
  end
  language "pt-BR" do
    sha256 "4b280c36d06a09549fb1590d490a6833a89edb2c2d0163b8153237ffc92e2f11"
    "pt-BR"
  end
  language "ko" do
    sha256 "7a0636cfd4964ba2c41a554381c3dcea51d082ee9292cfb3cfbb6a5cfb8fc2e3"
    "ko"
  end
  language "ru" do
    sha256 "7f16859ae99587f73a60a6b6219e561cd4c941134dbe76f6ac349919e74f3976"
    "ru"
  end
  language "uk" do
    sha256 "928665e7458afc642199ad34b85cf03dceaacc3d79d61756209e6598f7de2720"
    "uk"
  end
  language "zh-TW" do
    sha256 "d69ae62e508f884af26db2047e31a126e8b143852db0d710ed0f3b7dc144b0c0"
    "zh-TW"
  end
  language "zh" do
    sha256 "008dd274d4dcfcfb63317c6381ae8b4d0de753e6e5f4e23b3b9fbf62dd18c0d8"
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
