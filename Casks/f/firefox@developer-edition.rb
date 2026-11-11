cask "firefox@developer-edition" do
  version "161.0b2"

  language "ca" do
    sha256 "d8acb681a22bf86d4e2383d7f9ce220a4db504535cfbb741132a64146506276b"
    "ca"
  end
  language "cs" do
    sha256 "34eda41d59bd08d2f7a04e2bb9863d99d25c8d9e32503e9005eda0d7d57d179f"
    "cs"
  end
  language "de" do
    sha256 "b7d99a6e95de734d4e1b5256197e68d69d897c2c5b340197213ef88312ff5d09"
    "de"
  end
  language "en-CA" do
    sha256 "5c91d4749f17d58d652474289d42775d907cd013fd5d54d16a0ea081f8e504dc"
    "en-CA"
  end
  language "en-GB" do
    sha256 "1c2496ed90d26820b5fc25e95b9a110094b6dc06b6c73aa7f135270f1c0c7f10"
    "en-GB"
  end
  language "en", default: true do
    sha256 "26074368e7540d97058dd869d40afb9aab6a762ff787b2a025218e6b80922888"
    "en-US"
  end
  language "es" do
    sha256 "ae1495328dced8d5e5b3a1216ae2d22bde13a8f6add3ad3b1483b79ddced3998"
    "es-ES"
  end
  language "fr" do
    sha256 "4c17ba39d70d19a8501615e074dfd254da2a573b5a6fddcdcd64084bd5bfe0d1"
    "fr"
  end
  language "it" do
    sha256 "b19e885df4dae9dd0253bee46996132ebee58a949d925173db4c1eed8c1f57b2"
    "it"
  end
  language "ja" do
    sha256 "d51107bc476a823fe6538219e5096f639faaed4fe5e26bcaad400f703a40fcbf"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "58ec74dd6191524ff8c82f6f6d8f69db66ff2ec36a39ac573cea11e352d98bad"
    "ko"
  end
  language "nl" do
    sha256 "5dbe4f444816386a1c387e9f42917224b15253a0c66f5ec28d2b67125dae2cca"
    "nl"
  end
  language "pt-BR" do
    sha256 "967e0dba2c8dcd4eac93cda26bea09e32fc3c2f100ac719d4340f1072c152eb4"
    "pt-BR"
  end
  language "ru" do
    sha256 "201903fbe993e11e200b7fb7371843838c81423f1cd88961106ef3fface4c0df"
    "ru"
  end
  language "uk" do
    sha256 "fbf7863f391d5c349ca7d4adc831649d7d952751a14d92e67f7ce96792386bdd"
    "uk"
  end
  language "zh-TW" do
    sha256 "b38fc450ef8ffe47f0e51b018e94f173dadc18f585c841452ec4b1c14af2b078"
    "zh-TW"
  end
  language "zh" do
    sha256 "45bf6ee6dee0de4c5eb53076649737bc00f313b9de1ee12f00154cc13e83e1c7"
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
