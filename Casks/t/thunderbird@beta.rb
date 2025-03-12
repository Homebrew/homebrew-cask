cask "thunderbird@beta" do
  version "137.0b1"

  language "cs" do
    sha256 "cb1afae39acee5ce0f7cedfb746906f356c7b7073aa0b8c47545a61559a6b478"
    "cs"
  end
  language "de" do
    sha256 "3b0d8472785e53f64cdcf14feb6db652057a80211b38e9b6031a670f831cf102"
    "de"
  end
  language "en-GB" do
    sha256 "413de84e2e9d15f322e39040252146eee3a651c7e647765eda4b2da6f58b3726"
    "en-GB"
  end
  language "en", default: true do
    sha256 "e73cf11f4569ce4e846b75d3f647fa8c4c7a697a5328a590e189e9b4e3782e4a"
    "en-US"
  end
  language "fr" do
    sha256 "68a2e9eea01c82a2860f4e1d86c5f717762aea4b924c07da44df152ff5c976d9"
    "fr"
  end
  language "gl" do
    sha256 "b5cdfc24380f645debe77b35d9006d8f59940faad11eb6fa065a6e00bd581072"
    "gl"
  end
  language "it" do
    sha256 "759fa8fd7a50c996d6e349825c00a33e70a2c9a23cb5d33b6fa9007061668b18"
    "it"
  end
  language "ja" do
    sha256 "2523dd1b6af4dab302995dcb94e83d76847a05e1b072ef7b83f041b4b2fc6610"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "a8fa873d6069d3921a696952c471307a789f64a9e7ddef3b443f402306d3c2ff"
    "nl"
  end
  language "pl" do
    sha256 "c00e29ca9b67b0e97aa091dc0be6b5d042d7f2bb47b1fbb58b8a6803a2ddf9d5"
    "pl"
  end
  language "pt" do
    sha256 "5b803bdc812ffa72c86dfada5a4cc1c1e55dbfbd5dd8565002496f7a556cfe40"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "b51584f7ba4109990b0f9f83a4884bc6ac51600ff9f1818fd680f7c25d099c70"
    "pt-BR"
  end
  language "ru" do
    sha256 "d80b1a1015defd4992d01b837676a39b095429bf707e960590ea048e3ef99e81"
    "ru"
  end
  language "uk" do
    sha256 "5e34ec1577631ba801918f4761c8fd914afb7bf3379ce64a7959ac952776ce19"
    "uk"
  end
  language "zh-TW" do
    sha256 "0206e850238f153a258732ab18eab35d65bab76a31fa7f818dda87484847f597"
    "zh-TW"
  end
  language "zh" do
    sha256 "dfa7dfab44567f7b11a22511c9fd7d0da32aff4aba9123e211e7f066ba48b669"
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
