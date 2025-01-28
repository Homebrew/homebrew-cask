cask "thunderbird@beta" do
  version "135.0b4"

  language "cs" do
    sha256 "c858e3bdd2169e0c5500c3084801859b6011f80a39f3b41537df5a0708d165e1"
    "cs"
  end
  language "de" do
    sha256 "0275a45525c6348ffe0b210983a0b0801f59904bdd3ed54b806c5c6382caa53c"
    "de"
  end
  language "en-GB" do
    sha256 "de46e20cbc7204e2a87bfa9b7fdd3905f98ae591d3ae23a1588385082aefc840"
    "en-GB"
  end
  language "en", default: true do
    sha256 "b6be03909ff229ef74e60de1ba39cf4b0ba05f6bbbbf3874f3af0c455a63cc89"
    "en-US"
  end
  language "fr" do
    sha256 "d00274c3d856dc392c3c3afea5c7a73dce0ed5a0e6e932e7d2c86dc6ff5d80c7"
    "fr"
  end
  language "gl" do
    sha256 "6bdf4595cc6645e68fa70726568fc8081e0811392bcd8f1d961f50489a1a5123"
    "gl"
  end
  language "it" do
    sha256 "c028db87600654d0b1b64c27c600ffa75a5e39e2f0a028d5f85fcad3c4f29d0f"
    "it"
  end
  language "ja" do
    sha256 "ecc373bafe662f36d9ea485bca36360931a927216cc205ad7c936e77d646478d"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "15429fe40e23a2201be96ff30baddef6023bc1baa47b92569f7e9058f8e13581"
    "nl"
  end
  language "pl" do
    sha256 "b60f7abbd0950c65f7e6485e3cbe4bd02258406d759b72a1197f7e4237950602"
    "pl"
  end
  language "pt" do
    sha256 "cb18dce04765cc04097d6fc497f12eb7ecba033b09727070c8b3341cd7ea9525"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "5d5a71c5a92f7a677e0832d0cdd21558f6c56f2049d94d6c835b3841ff229f9e"
    "pt-BR"
  end
  language "ru" do
    sha256 "e89a0174ed61114a767afd9f46c4e23158c89c5cbb2f285bb1b02f2571d2c769"
    "ru"
  end
  language "uk" do
    sha256 "672784ba9bb5956e87909eefd45fdbdd7c9898b8ef79f060e057301937b63256"
    "uk"
  end
  language "zh-TW" do
    sha256 "19887db7fec5f39f8f3073ce1881cbbeee78feef925c2fd29a0c2e54e0388858"
    "zh-TW"
  end
  language "zh" do
    sha256 "26cd8a5ff33ed8d9fb7f70545655c8ea90d66cbc0a02beaab3c7e0f0742306e5"
    "zh-CN"
  end

  url "https://download-installer.cdn.mozilla.net/pub/thunderbird/releases/#{version}/mac/#{language}/Thunderbird%20#{version}.dmg",
      verified: "download-installer.cdn.mozilla.net/pub/thunderbird/"
  name "Mozilla Thunderbird Beta"
  desc "Customizable email client"
  homepage "https://www.thunderbird.net/#{language}/download/beta/"

  livecheck do
    url "https://product-details.mozilla.org/1.0/thunderbird_versions.json"
    strategy :json do |json|
      json["LATEST_THUNDERBIRD_DEVEL_VERSION"]
    end
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Thunderbird Beta.app"

  zap trash: [
        "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.thunderbird*.sfl*",
        "~/Library/Caches/Mozilla/updates/Applications/Thunderbird*",
        "~/Library/Caches/Thunderbird",
        "~/Library/Preferences/org.mozilla.thunderbird*.plist",
        "~/Library/Saved Application State/org.mozilla.thunderbird*.savedState",
        "~/Library/Thunderbird",
      ],
      rmdir: "~/Library/Caches/Mozilla"
end
