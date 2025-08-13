cask "thunderbird@beta" do
  version "142.0b4"

  language "cs" do
    sha256 "4a59cdce1a98bebd8892d9a06854a8ee3c98f9c3893c1e1aeb584deea9b207e4"
    "cs"
  end
  language "de" do
    sha256 "24fc7c906118d853a2bc784545cb962be2a72b8043b69c90d5e6a66610b19b91"
    "de"
  end
  language "en-GB" do
    sha256 "1a50d3635f123fa38ef7fb00318f42e6058cb14a52caf0f6546d609481cd93e8"
    "en-GB"
  end
  language "en", default: true do
    sha256 "0d2c84f266cb126839b284918814d4f3877e3de47d35c064cd3fe087746f088d"
    "en-US"
  end
  language "fr" do
    sha256 "8dcc216a4b567f65b80ab984846f4af6823274e160dca06a54111151405c6fae"
    "fr"
  end
  language "gl" do
    sha256 "ceba93f69918310a6e8a09ff45161cde180d6e7a7abf35548da680f59d376afa"
    "gl"
  end
  language "it" do
    sha256 "1b097d3258ab6bb27ed3336b6a39589cbb64dcb9cdb35f51ea13ded5a733c1a6"
    "it"
  end
  language "ja" do
    sha256 "ed98a05599dc455e483b17b4dedcb20ce678bee4d7ec237d80b858907e0668f5"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "7851c2599541063fdb284761a960b34a09709ee3f89f337293d418376b42c5fd"
    "nl"
  end
  language "pl" do
    sha256 "70565c27ec7403470f503f3c5963dfe91b8031e15839319482fa912138f822e5"
    "pl"
  end
  language "pt" do
    sha256 "6bb452080e2be27a8b1975ecf97ce9a774b62eb089dd39e4414c6027b283686c"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "dfbf90bb5ed178a231b46f40bef44da1eac48b4afb93ffcf37b96e2ae6afd256"
    "pt-BR"
  end
  language "ru" do
    sha256 "05311f3b5a837b53351a340ceef95d4ae8cf22cd56aa1d4d9162a0e44b27fda2"
    "ru"
  end
  language "uk" do
    sha256 "9aad9f6a53e6b0b250422fc63ca963aaf9879bcaa27e114c62d214953e0c520c"
    "uk"
  end
  language "zh-TW" do
    sha256 "72bca481966e5eeb79f4f49c9b1c937c8af283cdb70a1f0289f2488d64a9cbde"
    "zh-TW"
  end
  language "zh" do
    sha256 "3607fa277ea6c5b3b057abde8e72578ee7eb718975fa7e2f117b567ec1ff7798"
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
