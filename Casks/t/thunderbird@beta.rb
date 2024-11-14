cask "thunderbird@beta" do
  version "133.0b4"

  language "cs" do
    sha256 "af50459e30837411608a89a0d2598b3724ceaa237a1ef058ac554c73b3a8c8a3"
    "cs"
  end
  language "de" do
    sha256 "a3c170d490b89f4e0c93d7866ed13307defc4e0f83fc3c5ded4fa447ce15d111"
    "de"
  end
  language "en-GB" do
    sha256 "b67a4afa21388c705a894730d1e2da7bf3afca3f14d97642ba855c84738bf203"
    "en-GB"
  end
  language "en", default: true do
    sha256 "9741d3b6161d8b375450450203e776c2fb583e73c64d6ecff3af95ccbc3cde8e"
    "en-US"
  end
  language "fr" do
    sha256 "96cb9726ff2fd8e7dd40f05f57a6f4be98cfea68c58a3cb7a911622008b7a618"
    "fr"
  end
  language "gl" do
    sha256 "8244cfaa2d2fd82413d50c31f1709cb0c493d110fbeb062528154d7442b36cfb"
    "gl"
  end
  language "it" do
    sha256 "fc301cda202f3e719814204a3325702ece22bef939163149352dc8040cfc1f13"
    "it"
  end
  language "ja" do
    sha256 "e44a7ebc13b8ca5eb9251d1ad16d33d113776946980e6f58711fb1b48a8f0685"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "95e4224400a3f89672bb330c3983b7413de1b5f5740e174ee8df237455f1f50b"
    "nl"
  end
  language "pl" do
    sha256 "ddcaabe9187c17c59a0b6cb3654b91c86898540f8f8ec8ab1c985f1e47bf4cee"
    "pl"
  end
  language "pt" do
    sha256 "d3e687cd8e011e8e435f48d507573d95fb815f1f361bb0c9efda1be3cb35beff"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "2c7957a4a26d6a6549a86ee55663557807e4a7f5d15629a273e084b853db5528"
    "pt-BR"
  end
  language "ru" do
    sha256 "c39ea14e71b59e8375b59a90c9a9020b9af2bda4c342f0df05d76c3733075f85"
    "ru"
  end
  language "uk" do
    sha256 "302fc344e88796b004969b3281f3f5e72e547f4186e4db1f1b41d25050048f37"
    "uk"
  end
  language "zh-TW" do
    sha256 "f18057846e7c3ad19a71f3e04f0b6409c0e6ff969587e20813270791ee77a81c"
    "zh-TW"
  end
  language "zh" do
    sha256 "e6f0576c7edcede8756365454746f32b979e23ed50a4307c00006f8647d886ae"
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
    "~/Library/Saved Application State/org.mozilla.thunderbird*.savedState",
    "~/Library/Thunderbird",
  ]
end
