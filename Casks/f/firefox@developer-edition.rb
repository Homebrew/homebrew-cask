cask "firefox@developer-edition" do
  version "146.0b2"

  language "ca" do
    sha256 "32f6f288cb0880fe735df9dfa1cfb82dac7e35944e93c850fd41bb5cbb69b38d"
    "ca"
  end
  language "cs" do
    sha256 "36da99dedbb185b1bd0708c4dbf6ad266001badbe4f35bc9c3b2e5defd5aefce"
    "cs"
  end
  language "de" do
    sha256 "50dcf8f6edb8fe25cfe5f9d8b51b6937444ff9cf016cf608808b776d6d24b942"
    "de"
  end
  language "en-CA" do
    sha256 "3bc340bd01657f981e8b72a151f951826ad19b86b9037f364420ebe11bfcc642"
    "en-CA"
  end
  language "en-GB" do
    sha256 "5c651bb4848ed9ef33d2d208bad6e95f2affa7c3258259c9987a33a3aa311512"
    "en-GB"
  end
  language "en", default: true do
    sha256 "96d5e38f9e05ed92df5b428cbf03c01aaf067202837ef1f3096c3c72d30a2c22"
    "en-US"
  end
  language "es" do
    sha256 "4e5f1c4dcf0207ded22eac14866fce6c576d14109edd52e2b49bd4a273df8437"
    "es-ES"
  end
  language "fr" do
    sha256 "cc8ad52f276097e090b96a6c2ba017bb94996c9a34acc567a3c44dd6fed149ff"
    "fr"
  end
  language "it" do
    sha256 "51783f202125b2b62f0af9e584dfd7cff655237b9535369f61eb0704c2bbdc88"
    "it"
  end
  language "ja" do
    sha256 "32face6bafd01e8d9283b3f86e34300251e289e362929c0c59d8377db7d69722"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "4588ccd5d07e9ee835b5c2d216e76b047fdb462cfad20c6acb880e9f51ad29f6"
    "ko"
  end
  language "nl" do
    sha256 "7316b2b19bad19036e352ed436c94b52ead89c39a5fc5e0317268377ead0438c"
    "nl"
  end
  language "pt-BR" do
    sha256 "fc38c12b4ba3a9dabf27495fb5231adc7f060382f22e9cfd035a40035549c09c"
    "pt-BR"
  end
  language "ru" do
    sha256 "5e92d419c0c96e430ea3356a15625ee5b2fdb3aefa1880d4da0f881c17cc1f32"
    "ru"
  end
  language "uk" do
    sha256 "ff971ca18d285a9274e91968217cf44114cdf5d9882634fd8a6cc5374aa5dd82"
    "uk"
  end
  language "zh-TW" do
    sha256 "ed08060134cd2e7ffe7199c37140cb66cdaf2eae71391a4c1d2b463bbe638be3"
    "zh-TW"
  end
  language "zh" do
    sha256 "c344008003d7a6c8c4897e6e82a811f1bf25a11d7abebb02243e9c73c3408fa5"
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
