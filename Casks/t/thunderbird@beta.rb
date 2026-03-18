cask "thunderbird@beta" do
  version "149.0b4"

  language "cs" do
    sha256 "7a90fbdd4b3bde273d64f0479bc0c1be9317b7f32c7db203346dacbd688f242c"
    "cs"
  end
  language "de" do
    sha256 "40f8ec337de67d5874471ae2edc1183b67d306e8a400489fbbb196ad72a8efd8"
    "de"
  end
  language "en-GB" do
    sha256 "6b4ce5545c1633057ff68b7b5b60a5728d974e522c7a6fc2895c434460968d19"
    "en-GB"
  end
  language "en", default: true do
    sha256 "3ad9d46a028d467e6e78aa4a3015039e526d76fe04cc38d1c833cb260014ba0e"
    "en-US"
  end
  language "fr" do
    sha256 "c23883ec16ea38327289f6eb981b165c8d2a7a69facda7c49d1091c2d1cdbc42"
    "fr"
  end
  language "gl" do
    sha256 "9b10c2d3c25b815b29ecf90b05720a9f37ba88448eccc164bafb8a5d9cab7a05"
    "gl"
  end
  language "it" do
    sha256 "601085035cdda3a0b97c330a123d8a22e482e30ea7709a088d8fd145a529c0ac"
    "it"
  end
  language "ja" do
    sha256 "037cb2af93e359fb51e3845a67b11f60fcf2db597fe5c5ead1c54be320189937"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "9842047bb84f735605b2bc576101100b64ad44270b1002361d34ae2dcc67c6a6"
    "nl"
  end
  language "pl" do
    sha256 "ff767e35023167666d795b4af7c58c1fb3b3a590507352e81ee6f27d50cce7ca"
    "pl"
  end
  language "pt" do
    sha256 "54b36b0fe7dbd89e8683f6b5e422b9c96926ef7b915d89c180ae6d1744cdc567"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "7d13ba9badf897b53f2020b88b0120809738b33539a00ad8ed6c0cf13e3a36fd"
    "pt-BR"
  end
  language "ru" do
    sha256 "7de0b39e11c25f1ceca28bd74596f56e414fe9b487d3d8678f85fecaf0f8fc63"
    "ru"
  end
  language "uk" do
    sha256 "f8b15424c5f0657316bd6c120eec899860e0d563eecde0c4150f8f96e6e34f56"
    "uk"
  end
  language "zh-TW" do
    sha256 "780af259d432eda96e19289fd195a112e44cbdb607de106a5d7c1abdec46dfec"
    "zh-TW"
  end
  language "zh" do
    sha256 "143c70090f251d12697b7a99962ca043e13db02711600ba660c50b7887b472c5"
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
