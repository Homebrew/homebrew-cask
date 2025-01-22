cask "firefox@developer-edition" do
  version "135.0b8"

  language "ca" do
    sha256 "26eb4df1e438f7a9d4a0bca7e4ec08f06fc035d4c154349c6b9c9b2fb53daaf9"
    "ca"
  end
  language "cs" do
    sha256 "ebdda988a74d7e4d3d4b7264138f43d865cc39c0cbfb4c065a844aec713510f7"
    "cs"
  end
  language "de" do
    sha256 "71be790c3e5cc65aaaa97e80b4eac01c325942cfc799eec70a9412a0b7ffd0fa"
    "de"
  end
  language "en-CA" do
    sha256 "8e89f91fd65d310610338461f8bedc93048bed07905cdc920e13b97fa253aa96"
    "en-CA"
  end
  language "en-GB" do
    sha256 "32052b8785bfd3d0e0694f00c04cfbbbd79fbd4a7e51d3a81020dd646f141ff4"
    "en-GB"
  end
  language "en", default: true do
    sha256 "e609bb09fc05283e76839a0c8ac5e1711eb2a8eed1fe45f510f8e2fa476d480c"
    "en-US"
  end
  language "es" do
    sha256 "93fd0ca9438ad1525b828b72f366e073f8cdc4203594a83bc9d9781067a69498"
    "es-ES"
  end
  language "fr" do
    sha256 "eeb24c3a23ade31cb3f7f7938442ad42323a117b09095a17b44b509dd48d64f6"
    "fr"
  end
  language "it" do
    sha256 "fa3efd64c11947221088644949ce52e526260eed70b734647179f938aefea845"
    "it"
  end
  language "nl" do
    sha256 "e9255bd66188abd2582f6f3beec3180fd06fe01476afaa5a4060427ff756a7f1"
    "nl"
  end
  language "ja" do
    sha256 "dc8796262a17ea17b3a0fcac08b65f09280110dc81217308a67a31b60769d6ca"
    "ja-JP-mac"
  end
  language "pt-BR" do
    sha256 "14945e96745da15d19b1c0e415d287582d00c16159e3bf86c95ae5aef941ef62"
    "pt-BR"
  end
  language "ko" do
    sha256 "2bafe1f449e9d779379129e8c0459d4f5843290e5111ae0f7ee41c7abe6ffb4e"
    "ko"
  end
  language "ru" do
    sha256 "a26acade2416258be443af2c1754a6e96946f102047a7af2a8a692274271c656"
    "ru"
  end
  language "uk" do
    sha256 "eb05fd688368d9be8087e4eabc2b58f7fd42ba08aeb5d6cd4a52f6cfd015acfb"
    "uk"
  end
  language "zh-TW" do
    sha256 "a7f2bc3894c434e5430eb1dee7a9a39fdcf9687eaabf1816cb4ca2e2fd6b1c89"
    "zh-TW"
  end
  language "zh" do
    sha256 "1664157279b79a9ba69e2aac1c9b5c8709c405e3b8ed2dd662ed3ec9297f81fa"
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
