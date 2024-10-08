cask "thunderbird@beta" do
  version "132.0b2"

  language "cs" do
    sha256 "97e7c02e387c70467a89229447fec083da51a73fba468313b1d30d3b0bfc3806"
    "cs"
  end
  language "de" do
    sha256 "1f33cadb82c99bdc0237e1c8a672be33ec230a6bb0f1e06b448e0e38d73b5cf2"
    "de"
  end
  language "en-GB" do
    sha256 "9fe51b4b299af94ad98f1f6135939b873e4ae84d693e9a466f72806ceca8b130"
    "en-GB"
  end
  language "en", default: true do
    sha256 "fba21adc5762d012d9910cc6cd993948aa6879c797f9dfc817b5bf9dd92cf5fb"
    "en-US"
  end
  language "fr" do
    sha256 "25a39d4d783ae5c60a87478495d3eb70363d3c1fb362ba4a08e67f8d5cce1ad2"
    "fr"
  end
  language "gl" do
    sha256 "05ebac0d3025f725a413297a9dac5bc60a93bc391ad524b1ac0de5b087e9299a"
    "gl"
  end
  language "it" do
    sha256 "71d7e2fa00fc94f923946893cb826234c7a0074690381e425f96c910c2d0f07a"
    "it"
  end
  language "ja" do
    sha256 "7d0ca929620d7e8bc478838867a8c73dd447b0366a258a141cc5bc30ff6baaa8"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "86e1c4d06dfc72489f30a773a04689eb9e51364586c3c8c3418d81656d007dd0"
    "nl"
  end
  language "pl" do
    sha256 "84ea1f030eae711819aefcbdffb94f81cb54bbd55c208250c62706056f856648"
    "pl"
  end
  language "pt" do
    sha256 "c06bcff8baf03cbb2cc211bd9a72a4e816c46e2037a570a143b12be75c4465dc"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "4de0bbbdb7e5431598e2c3134b00efea1a6b477013df2e2521c196fe907901b9"
    "pt-BR"
  end
  language "ru" do
    sha256 "8aba513c653f98e0302d25df46f2569808b9e814524b2d4957ebbac4816a0584"
    "ru"
  end
  language "uk" do
    sha256 "8c65748d2f07b469e218c3afac5fbada96bb1765a630f91cb7e7690e04b4af08"
    "uk"
  end
  language "zh-TW" do
    sha256 "47175689d0f30785b1ffa3e8cb2ad08eefcd191b22c9abd5ef4d4ae478c1f5c8"
    "zh-TW"
  end
  language "zh" do
    sha256 "d1e8cbb9cf2fb06025168d501329811fbbccb5c000decdc8c8d6ce7a84683234"
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
    "~/Library/Caches/Thunderbird",
    "~/Library/Preferences/org.mozilla.thunderbird*.plist",
    "~/Library/Saved Application State/org.mozilla.thunderbirdbeta.savedState",
    "~/Library/Thunderbird",
  ]
end
