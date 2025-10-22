cask "firefox@developer-edition" do
  version "145.0b5"

  language "ca" do
    sha256 "defaf7ba0b8fa4ec8c141dd9187252cc66e26f8e9a12bcf399f46e6564eb4bb0"
    "ca"
  end
  language "cs" do
    sha256 "c57fba9b2444bbdf80bdc705716e27ad7e573bc93c9fa29685be2dba935aabb0"
    "cs"
  end
  language "de" do
    sha256 "b51c7a7997daf7f4282f445d948ba2bacdceef400b924148dd1c2819faa71d1a"
    "de"
  end
  language "en-CA" do
    sha256 "bda596ce16f10e5ac9279409ee7bddb38d85db4e02e13097fd472cd0a0bd26ca"
    "en-CA"
  end
  language "en-GB" do
    sha256 "231293829c3995713148d158fbffd8ee3422992ef7c54ee3b6bdad93c914c55c"
    "en-GB"
  end
  language "en", default: true do
    sha256 "006f1edfeb45cba459d3ff1f217b6a0ffaa7720e378449dbd9a1e428b575809f"
    "en-US"
  end
  language "es" do
    sha256 "535cdf5827a9a2807679726ac8c4016bc18df6ce923c9a70ffe7316ed1711ca4"
    "es-ES"
  end
  language "fr" do
    sha256 "9e30aa66b3359b54fdae9bd0df6c8089ebc404301eb0e413c0054ebb2e07a246"
    "fr"
  end
  language "it" do
    sha256 "19581d7523150a304bd5eb502cd08f5b70a6163d10dc2b0ec8dce06e9dd172e1"
    "it"
  end
  language "ja" do
    sha256 "e2a7b438981bf669e7ca35fc0693661752f7988d2171aa2d2d722fc59e7af8b1"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "0d1766c3ebf7972603f01d0a59d1d6b0b7d9adfd8a6c6f364d97672515364e86"
    "ko"
  end
  language "nl" do
    sha256 "60fe68a19edb99eefda44e8368bba355c2638f54f1f07de1efcb2fab7fcc70ce"
    "nl"
  end
  language "pt-BR" do
    sha256 "8eb2b9c7fed8a3a2c709c2fca65cac3ef4e3f689a1bd9de11e37a2518bf809a9"
    "pt-BR"
  end
  language "ru" do
    sha256 "2b83a21acd36557be9255fba5d20da2af2ddea8598a32ba648f7f941e26a5150"
    "ru"
  end
  language "uk" do
    sha256 "dc61c19e7233f8d7a2e8da71beb4bdf25a2b95406d72574b9f491fa3df41b2fe"
    "uk"
  end
  language "zh-TW" do
    sha256 "c05fc1ee9e0a2625e3e86fbd00db6431a2d8805d628df139c5bb27ced15f7d9e"
    "zh-TW"
  end
  language "zh" do
    sha256 "260136ca007d5a398746da09152728646e8bab6568e3a11457f4a3f592c9bf00"
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
