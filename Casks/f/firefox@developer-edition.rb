cask "firefox@developer-edition" do
  version "149.0b8"

  language "ca" do
    sha256 "584658974a643df332d74269a6996afb3a48596aa68c6fe6ac4bedfd5767415a"
    "ca"
  end
  language "cs" do
    sha256 "9dd04060d606095825eae61e9349716dfa14d58a350371eb1efee82a50fda752"
    "cs"
  end
  language "de" do
    sha256 "f96e581cbd708f6c623f2e267ccb2adc5fc3631ba755e7480b3a2f9e82889df1"
    "de"
  end
  language "en-CA" do
    sha256 "9bb67b395356bdb1ca387ffb6b281ed6b71eb70045ad82f405202b6ce24ca966"
    "en-CA"
  end
  language "en-GB" do
    sha256 "c029ab8f0ac81c347a326d39e4c0bd148d868ae4502fd3595299c212e2d3b8d9"
    "en-GB"
  end
  language "en", default: true do
    sha256 "ce96255987869bd5fb68ce7d17761ce321898ac59972bf13df92e9807bf1521e"
    "en-US"
  end
  language "es" do
    sha256 "d43b6f02892b9981f1cfa375a4833e9a72c884cc333176f8f52cf72025208052"
    "es-ES"
  end
  language "fr" do
    sha256 "62dcd0d83f128a96b40c3c2e308c3437882c98a78463f8feb6200f5d5e68c537"
    "fr"
  end
  language "it" do
    sha256 "65678d1cc2e721c6a7ff8eea04b4b6e6089072898de6864158332e6b3075c30e"
    "it"
  end
  language "ja" do
    sha256 "e30768d176dbfacd7270ec20c54f5da1af44e98482d92bca83750bb07f950d26"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "dfe310664f1ad5aa784bef52ce19169a30e2973b36f85439faf4f2a7ca97e3a9"
    "ko"
  end
  language "nl" do
    sha256 "01a543e744944c3bac574791a4cd9e0afe9ce2be1ae39a5d97d8c6eed14cc6cd"
    "nl"
  end
  language "pt-BR" do
    sha256 "f52d543f91cc6a9307a278ff1fec87a5318795bb6c390e030a1bb4ce3cfedf90"
    "pt-BR"
  end
  language "ru" do
    sha256 "10240a31a064f42ef599da665745879e3f10fe67987526eb24cb00e32591041a"
    "ru"
  end
  language "uk" do
    sha256 "9e77ab9a4163507c2ebd0d46422eb65b844fe21cb9432d2d519e973470ae9a65"
    "uk"
  end
  language "zh-TW" do
    sha256 "b309515d2cbea15702984d0fa84bb97428cb26445f4fef7e9354ef432ef36f8a"
    "zh-TW"
  end
  language "zh" do
    sha256 "4483532f97537c8b307c6745f2ec8eaaab1af68a656d82a1a9d16d0f0d28819d"
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
