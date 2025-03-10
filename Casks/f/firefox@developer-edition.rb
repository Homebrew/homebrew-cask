cask "firefox@developer-edition" do
  version "137.0b4"

  language "ca" do
    sha256 "93f8454715b6c60538d076c4780af72db5d751b594692734d706f05d01a34953"
    "ca"
  end
  language "cs" do
    sha256 "68c2b2cafe5f6cf29e79cb82c23fb9a2119a9e9b637127f54ce6ff8a9cd69437"
    "cs"
  end
  language "de" do
    sha256 "5cddd0d617692db3a5dcd0cd244e959d8b6445fba2376e1fcfec6c5a2d4aee5a"
    "de"
  end
  language "en-CA" do
    sha256 "4164030434e3df9f5b9acccd9badff70fc1dffa512b15e2eed38a8cc2824cdba"
    "en-CA"
  end
  language "en-GB" do
    sha256 "de6eed6a6ffa87e56b2182bcbfba8556564a9f447c0bc5d23942477860ccc6c0"
    "en-GB"
  end
  language "en", default: true do
    sha256 "a41bf0f3cdc31213d5b1dc2b0294da49c6670e2904aaca566c8ce29d08489589"
    "en-US"
  end
  language "es" do
    sha256 "0daca766b0bcdc49fa18b9cc5e89b733992b4afece84f4144c008c5c2a56a6f9"
    "es-ES"
  end
  language "fr" do
    sha256 "698d50f8f2ddcc4d0d8e778509184bd8055cafae6b3abee60430390323c06659"
    "fr"
  end
  language "it" do
    sha256 "338658bf7284d07cd6b1a9d93b58d83a2b0b692e422067fc8ae475856417c68f"
    "it"
  end
  language "nl" do
    sha256 "f061a0fe246b837637b8f1715b213d708b10a91ce42368f383d609f1da623f56"
    "nl"
  end
  language "ja" do
    sha256 "9d5f02435a15c8b4c689aa2cb76a56fa55bda9b854280955d8469ee13817c988"
    "ja-JP-mac"
  end
  language "pt-BR" do
    sha256 "e580abf907f2f1a30cc015fc589369aa7d0264b0788be9108bb00a712b35b566"
    "pt-BR"
  end
  language "ko" do
    sha256 "b8404d3b12a880965957b1aa123b70d64dc0c859f85dc43b45ca92670220efa9"
    "ko"
  end
  language "ru" do
    sha256 "ac74c1d85c202564b5468e267d8fde877d5c8c927e236da1b2f84664b31782c3"
    "ru"
  end
  language "uk" do
    sha256 "5fef123676c0c66a4899aa69fa7702515755329a9c9f0764fa6e7e2f8b5f9ecb"
    "uk"
  end
  language "zh-TW" do
    sha256 "91aa7b91770d72a42001b6bcc13192bc9389ed9513a38b3f471ee95d1215e787"
    "zh-TW"
  end
  language "zh" do
    sha256 "298beb468c7d9236e27650d178b3fa466d6781c3e42535b60401ee811165f668"
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
