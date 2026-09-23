cask "firefox@developer-edition" do
  version "157.0b5"

  language "ca" do
    sha256 "c0ada4b3ce44d61a3032fa53ba7fc949bd08c6a0fcdb2a34b5ce9e6c491ee91c"
    "ca"
  end
  language "cs" do
    sha256 "776a8f8d0dd07bef8cdb10729895cd872e85b014d56e482c3cef9557cea99a13"
    "cs"
  end
  language "de" do
    sha256 "25a5126977475d263aa0801c0e341b92c353df7a9ac110e1076f99343b8f570a"
    "de"
  end
  language "en-CA" do
    sha256 "459b39764a8fa192edbe9c2df5b95be0e3a551853d2f3a33b88b47223791467e"
    "en-CA"
  end
  language "en-GB" do
    sha256 "3f3bee739f97bf6c7f5a3f1faa2b02bf447061944eae730600e417786bbf5087"
    "en-GB"
  end
  language "en", default: true do
    sha256 "109c7db032fc84b23287700b9fa887e7ad9217fadd614d4b6ea3aa24d8c99b60"
    "en-US"
  end
  language "es" do
    sha256 "b4be89058fdb1d1adec257ef4fd6393c0b6c0fc3e124c3596612c02d7464c443"
    "es-ES"
  end
  language "fr" do
    sha256 "11d28444e41cf8b900e40d580f0494c8ec664aee68b2dfb00c336bd7eda8b692"
    "fr"
  end
  language "it" do
    sha256 "91825b7ab7d25cb631982b9a4fb1f672df92cae5228f51013e519ea7f12138f9"
    "it"
  end
  language "ja" do
    sha256 "74e5207c32d713b6316e60393010675eb595db09504383d319230bbf68d9617e"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "747baf790070a5414c444dea9be46605b5c280127dcc8577361c81b0039810f5"
    "ko"
  end
  language "nl" do
    sha256 "0699e6e3b9ac3882f23d0d160603f5f5cf9acf2d0e874a99aa8d89fc20d65f19"
    "nl"
  end
  language "pt-BR" do
    sha256 "776997af79e995c11dac3f59a3e37db9279dfb4bfc119babb4695e841b906ecd"
    "pt-BR"
  end
  language "ru" do
    sha256 "f73001a681b03f3cd54e252dd0c08e99fcb9ab46c137ad2d905724b202ca79b0"
    "ru"
  end
  language "uk" do
    sha256 "1933850032fafb9468689bf786a2a437bef984e81435c0148ce7ed59acb5dd79"
    "uk"
  end
  language "zh-TW" do
    sha256 "18485c3ea5a5601eb2103c4ed9dea43fe0e4c6572d9358fa3ad96f40639ca17b"
    "zh-TW"
  end
  language "zh" do
    sha256 "d0aa29cc70c749bb6fffeabf8b8cf5f9bda9205eeb3173af939909480803d0f1"
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
