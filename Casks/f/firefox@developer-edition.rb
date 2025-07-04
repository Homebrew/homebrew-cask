cask "firefox@developer-edition" do
  version "141.0b6"

  language "ca" do
    sha256 "6926f7fb9c55aa8adbebbd4ee5f7575cad677679d1e8f56655a6c759ba4fc91d"
    "ca"
  end
  language "cs" do
    sha256 "d5e28abbc5e38adc4e92b6ffeb9619a40e342003d4d690abc80fd7fb2f826feb"
    "cs"
  end
  language "de" do
    sha256 "f45fb2730e15ac2618b300b48e110b0acce01c47bece16d2ecba158d6dd89a96"
    "de"
  end
  language "en-CA" do
    sha256 "cfaf1e66867eadd25429d2990bb87e31b35d6e8b7fa4313149e60824b329d2f7"
    "en-CA"
  end
  language "en-GB" do
    sha256 "d7083dc3684551ee28d37b7f4a58251000a45b2b53ab633145d005cbb1c1e9d7"
    "en-GB"
  end
  language "en", default: true do
    sha256 "1b406d887848eb73e82cc5414194bbbf81288e96d0db319dcde1a84154d8ef56"
    "en-US"
  end
  language "es" do
    sha256 "5c48b0fdd23013d4cac8de6a0ca40286e6aa8322290d7f1e06d2c6a14b7d9c81"
    "es-ES"
  end
  language "fr" do
    sha256 "e687498893f6d075deff6d2be6f172fa766b9cd4ba579527985d1d4f7b9ecfc3"
    "fr"
  end
  language "it" do
    sha256 "9a511fbb743f961b29e751b9f9ab55541ed69d3ff41f1eb3a9b55146c7020ab4"
    "it"
  end
  language "ja" do
    sha256 "4dc267a96e86d9e81b0b03a532f113f2a035e4bec7141a264ec2804348addb01"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "83f5bb63ef907fa434180f7f503bc18293aeb9a9ef5dcb328c71cbc9382f422e"
    "ko"
  end
  language "nl" do
    sha256 "322c8ef85bf3c75ff3f3a6e139ddd7538436130d1998d83f405a9b98bea4d072"
    "nl"
  end
  language "pt-BR" do
    sha256 "0c14ebe60d46227080874a10591580540659dc197b73d224688657cac3e93ba3"
    "pt-BR"
  end
  language "ru" do
    sha256 "15a3f9e1145d4b86544ad1b5cf3ebd9175d6d314acc9702e75381b26a677ab0f"
    "ru"
  end
  language "uk" do
    sha256 "8510d2dbc06cf59c80351c7113129ef819487abec256a5f3ad9a0eaee1af03bf"
    "uk"
  end
  language "zh-TW" do
    sha256 "422667b633c55ad9251505b2281386e0c1904c686365404ad6b3e4461ec512ef"
    "zh-TW"
  end
  language "zh" do
    sha256 "1b7c6e5eefbc41541a8447cc0a3780fdbe9089e68c79250b42ae25bbd8482ca9"
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
