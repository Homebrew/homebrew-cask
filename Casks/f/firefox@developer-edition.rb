cask "firefox@developer-edition" do
  version "145.0b8"

  language "ca" do
    sha256 "652d9335a9e28d61f3c367e6486a90da6886bfbc8158c610a997ee409e746826"
    "ca"
  end
  language "cs" do
    sha256 "34adaf756a7c584e1d8d4a073fbedce4b576ec4c537c7f8de9d9a7146ebbc80a"
    "cs"
  end
  language "de" do
    sha256 "d2eb9f3b9597c8760983d3d4867b122eaa737d766a8e34090fff660e08879796"
    "de"
  end
  language "en-CA" do
    sha256 "b95164f7b326e59e611253e838c13edf543966ed31d4ce4f7c63ffadca8989b9"
    "en-CA"
  end
  language "en-GB" do
    sha256 "f7518a4474c9f2b34f8a16ddbbe682086f84e0fe23d7855b606aa6f7241de918"
    "en-GB"
  end
  language "en", default: true do
    sha256 "3d1ca8fd741ac5b126ca874d626d5e1b7860669837ba104bc2e420f2537b06de"
    "en-US"
  end
  language "es" do
    sha256 "1e799742d6c1603a0d53692957bedc90903000bd0ff4e590835414743746a3f8"
    "es-ES"
  end
  language "fr" do
    sha256 "063fd7565ad2b3c363609fb2a75f8786ce15710c7d09ca0a345b38205321ca5c"
    "fr"
  end
  language "it" do
    sha256 "e06793abdde0113cb9f876ae76414b0425c5bff5cb916419feb6a29317bebdaa"
    "it"
  end
  language "ja" do
    sha256 "f152ffe55d124e03f9d68a2eb66eee2b56018d5d24420562befcf2beee5aa89f"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "6ed3379113d565f9be0b25341cdd2aa66705e5022a59eeac16cf5eedfcdaee95"
    "ko"
  end
  language "nl" do
    sha256 "8a7355c879430f5b0d67fc915017cd2689eceb0f883175290ebb4c7055a1e4e9"
    "nl"
  end
  language "pt-BR" do
    sha256 "7cb4dcd170c0f7fff1659638543936f9e282996a212f86647b2d74604b7ad83a"
    "pt-BR"
  end
  language "ru" do
    sha256 "ffac373af88a9e4def43c6703eb29a9ef0a94d030131397477925d4253187b86"
    "ru"
  end
  language "uk" do
    sha256 "c2080bccb67a512a3077f0db72375a91191b990d03cd55c92dd13a8849a5451d"
    "uk"
  end
  language "zh-TW" do
    sha256 "2da32805c12042e7b665f7aae7afc0e4fdbcb913b7136dfcdcac11dd6ecda135"
    "zh-TW"
  end
  language "zh" do
    sha256 "d6dde5b98be1b012dd42b792a93daffac86d39d73b7e079c1b6723b19ec7c658"
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
