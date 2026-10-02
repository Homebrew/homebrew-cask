cask "firefox@developer-edition" do
  version "158.0b3"

  language "ca" do
    sha256 "60a19065bf8814bedaa839cf338a25062d3715dcc6c48fa24fac934bff66efbd"
    "ca"
  end
  language "cs" do
    sha256 "c2739bbb6cd85715cf0d9d676815b36c46c5dd78cf3412273d6caf8fb56261af"
    "cs"
  end
  language "de" do
    sha256 "c2b0509193bc837a7edbe58bcc9adcfd41cbc5bb17bee2c5520930c3a77575e8"
    "de"
  end
  language "en-CA" do
    sha256 "5a103480e8ff09a511717c4f0fd454a026ade9d37ffc8b6e66f8fb45eb533aa4"
    "en-CA"
  end
  language "en-GB" do
    sha256 "edc80c0275dc46c1c9d17c38367723bbd1012767082aae62e70ad26ac3923ea9"
    "en-GB"
  end
  language "en", default: true do
    sha256 "ebd87a5a5b029e6b2cba154465cfd9bbc94c1f16c412a79b6d47d99699193f8e"
    "en-US"
  end
  language "es" do
    sha256 "5e9ea225a3e67270af365400e30b661934c048198be680be66075b8976d86761"
    "es-ES"
  end
  language "fr" do
    sha256 "074e58955249711380a08cc5aa598817fde150ed56f1d183c1850c8f9380e0dd"
    "fr"
  end
  language "it" do
    sha256 "65f3a212c32a454509a4f9b7790adb086feb0d8a2d57b4ba7fba0215126fdd77"
    "it"
  end
  language "ja" do
    sha256 "ced6bbc3035a9e82a12646cd8afb4b5052b2870f75f1313be733ef2103e7bfd6"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "f3d7ea7cc162437ba3dfe487634bf938f557311ac903ba6bddb60209607ef895"
    "ko"
  end
  language "nl" do
    sha256 "6c261ce7acee071ed7465fb0d717ee34eb15e4baabb254cb3453eeffe8f26c7d"
    "nl"
  end
  language "pt-BR" do
    sha256 "e12b946876871b44f11929ee618f302291e014b81bf17d011b961be89371d382"
    "pt-BR"
  end
  language "ru" do
    sha256 "9c21db3402ea05b74c68d81267361311b968b1fbb86a361a5d3bb7a3d761adb9"
    "ru"
  end
  language "uk" do
    sha256 "2eab90c6be05a069eb03fb6f53cc22829f1b9f6bfd2658d8c9d7bb916730e69d"
    "uk"
  end
  language "zh-TW" do
    sha256 "f57eed8629fddadb911d86dd3cd5d946197daa08670249ea20c077fd04237047"
    "zh-TW"
  end
  language "zh" do
    sha256 "86d2ae51c4e12d5594998e4fc78a3347a086a4d382e9329a9516d4d5ab7c76f2"
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
