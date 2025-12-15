cask "firefox@developer-edition" do
  version "147.0b4"

  language "ca" do
    sha256 "a2489064295049f892da8637571723b47d55f84666ccfc694f8ab20500143fe9"
    "ca"
  end
  language "cs" do
    sha256 "fed56ae0b98cff35aa1dd28f84513ca569fe75b264fca59c06e51b3daae6bcf2"
    "cs"
  end
  language "de" do
    sha256 "b0d71dd91cfd9760e1e544e256bb6d496e6c342d3baa2cb2cbf8347ff327a107"
    "de"
  end
  language "en-CA" do
    sha256 "2820642dce989fa49c855ed64077684c34b61ac64842cf9aa92bf0d5ec68c7d8"
    "en-CA"
  end
  language "en-GB" do
    sha256 "6da51bf46154f3cadf2061a921d43396f82f9ba643a029f7ebeda6eb49815712"
    "en-GB"
  end
  language "en", default: true do
    sha256 "6165588feea8e79f7eea17ab3af9626fc100a182fbcf77d3aa48984f130b2acb"
    "en-US"
  end
  language "es" do
    sha256 "0ca8aa665d6cb66b8440d0ead1ce8fda2b2eae4d9207d6aa78e5630210806b58"
    "es-ES"
  end
  language "fr" do
    sha256 "ba27322646c978851b3becfd2c5e7844b0dadbf15b3909addb7800f98dbc18d1"
    "fr"
  end
  language "it" do
    sha256 "302cd5767ab3eb8eb36cf4b0ce1c55c9394151e1c885edaa2c7a46dc33d600a8"
    "it"
  end
  language "ja" do
    sha256 "6781d6fb04e04838aa57303b49de50baf96a094885c0ffe6fa33292ecbe7dc89"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "acf722a7702c2e23559f4f0c85efa83eb79444d54404628d233c848e1ce86dc8"
    "ko"
  end
  language "nl" do
    sha256 "4493f8309bab2a9b20b68033c3f952273c43d4f05130304bfbad7bbcec8234df"
    "nl"
  end
  language "pt-BR" do
    sha256 "ebee933c127805f919489751ada1018363812c804b416d4167efa3bb6441e3a0"
    "pt-BR"
  end
  language "ru" do
    sha256 "8ee2ce0316af0246bfb2452f16722196d30aa348b38374a496ac6a5edc1ddc12"
    "ru"
  end
  language "uk" do
    sha256 "87c7ed61979aeb4d4f362838b0b02537fea18ff49491d1f6176db5a4cbdcc766"
    "uk"
  end
  language "zh-TW" do
    sha256 "652d561c9fc26a3436a69a4e2a4dfc0f6bd56c7ca40689df52e488e39c59b04c"
    "zh-TW"
  end
  language "zh" do
    sha256 "03745c8ac3fed0c61d3bea6cce2dcdeb51e57436871fa4e3bd9032efc5d30eb2"
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
