cask "firefox@developer-edition" do
  version "129.0b9"

  language "ca" do
    sha256 "0ed30b0d1ac35d50c01eb6c204128b87553206fa00755773f85d624846535fca"
    "ca"
  end
  language "cs" do
    sha256 "e1f6dc6c4b186046427602d712bc6e9c470edd7851dc0a782ea371239f81078d"
    "cs"
  end
  language "de" do
    sha256 "d50361ed5d3d589960858b1dd08e8d5a7a5aa400fc90ed98a739844899f68597"
    "de"
  end
  language "en-CA" do
    sha256 "f4497cb26848d61b3db10fc57c09b5bd80babd7831d930d40e966b1b8aacb7d7"
    "en-CA"
  end
  language "en-GB" do
    sha256 "005cf2a87862e50424829d507b50f557c47d8c04933ef8566db95d2906d0331c"
    "en-GB"
  end
  language "en", default: true do
    sha256 "9576f9ea2be59a0d9dd49aa8247c20b386fb11748778f965509086683ca6ded2"
    "en-US"
  end
  language "es" do
    sha256 "78370eb704ccf18ab639bff614f5d7b9eee5dc89be703ceb2563ff469b6f92f3"
    "es-ES"
  end
  language "fr" do
    sha256 "58a4cd13198da03b519b60fc032b5cfa91c30edc382089c3e7e0a07a7be4f216"
    "fr"
  end
  language "it" do
    sha256 "c28acfd8a6c13156964f8204863f040e541fefadc7efbd938dbea2cd77d5a6fc"
    "it"
  end
  language "nl" do
    sha256 "59f5f9c1f2106be1cbcaf8f08e1541c1fca5c2b7f176c8d9f2a0731e39604502"
    "nl"
  end
  language "ja" do
    sha256 "679c31c299f0955b175d3da26f277d3d2632f054df8b93ff0a601a720ad6cce3"
    "ja-JP-mac"
  end
  language "pt-BR" do
    sha256 "231aed8a5f9208702ebfe9f49d829ce515d55e6c1d12c0fb7c324f36365921bf"
    "pt-BR"
  end
  language "ko" do
    sha256 "5dbd489b80e51fc97692d08f832421e1c64dcd2311624bc5f55891b9e153d4fd"
    "ko"
  end
  language "ru" do
    sha256 "ac73aaad345df3d707457d85e19ea995ea2024428a171a91756c89fc59e30b93"
    "ru"
  end
  language "uk" do
    sha256 "7d5d13df3d9ca739086937129b84a0eef82759b6623debe09509c8562eb44141"
    "uk"
  end
  language "zh-TW" do
    sha256 "83891874b130e190a34e62e9f28b787a5a945c0923c06321a84212d696a2b2f8"
    "zh-TW"
  end
  language "zh" do
    sha256 "2a81abee521b6d4108ebf82799b6abcb8d1a10d3d04281e1f85f0d2d9efbf7f2"
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
