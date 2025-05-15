cask "thunderbird@beta" do
  version "139.0b3"

  language "cs" do
    sha256 "9842be07aebc2f42c6ca935cda3c27501439db4cb65a03425ef410f40752728b"
    "cs"
  end
  language "de" do
    sha256 "bdd2412a51e0bd178f8acfe714da332f6a7edc2c010598739aafa91a0419140b"
    "de"
  end
  language "en-GB" do
    sha256 "b3d8e37ee2563b610d2b6c21495426fe8a192dbb7aef03d88426edeb5ec593b4"
    "en-GB"
  end
  language "en", default: true do
    sha256 "e8c7e36fa74e6440d938c63ede9cc230321a12b64ace476247fdd48b9a6699b5"
    "en-US"
  end
  language "fr" do
    sha256 "693f758d0058921fd04b869caf5ef22d4391a9002a703702a24fcc9ec38097ea"
    "fr"
  end
  language "gl" do
    sha256 "12289115f8807f7b96246bc97d1da9010c39b049af1911e86fdd03a7e7c94249"
    "gl"
  end
  language "it" do
    sha256 "c1167337410804936fea12ff8baf338088661de386be0163af68400323eab90c"
    "it"
  end
  language "ja" do
    sha256 "71a22955499daa356db886ba18d8aa7bd0b67af0a55bb29bdcc4601e374a47ff"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "f2da67492080f841e775d330566e3db639d253d0a511f71eadc9ac87b1ef2ee8"
    "nl"
  end
  language "pl" do
    sha256 "573eee724c6c343fd5a74f7fb7a5dc267da3d2b34cca170bab9669d3e6c28f9c"
    "pl"
  end
  language "pt" do
    sha256 "c2c5ddcecb80ffd88e0a3689dce3548dc5022271c34a36945bf09fc50f4357d7"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "40fa31dab6c2612f075c5491ac88bf04e96cd62d5596a36aff8f95ad6ecac5cc"
    "pt-BR"
  end
  language "ru" do
    sha256 "2ecafcfd9e9498e5e50084732977b306ba9f9ae08b2a4db871dc8e2603f9af75"
    "ru"
  end
  language "uk" do
    sha256 "b3140693ccf3d3614cd5f9f902f41bf5231e86c2c1ce13d7595762cea8458376"
    "uk"
  end
  language "zh-TW" do
    sha256 "0684e0b310414344066b53cba964b0ef84e93aa453c2ad037b664da94a291b42"
    "zh-TW"
  end
  language "zh" do
    sha256 "0aada7c53020ce1d2d8dacdb0ec92f27b641e3d47a33f6d0e6e5dde28277cb7d"
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
