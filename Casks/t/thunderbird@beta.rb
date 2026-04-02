cask "thunderbird@beta" do
  version "150.0b2"

  language "cs" do
    sha256 "ddf94fda76f93eb25108ac3ef9c7b1bd4939c9430fda56fedac1710dd7a45799"
    "cs"
  end
  language "de" do
    sha256 "c47b3550b4fe8ed480eef98a590729e755c32225eb3ed8147b675290223a69c0"
    "de"
  end
  language "en-GB" do
    sha256 "ef4652611a11e9e7436f3c5207e2bad9a3f6d6bbf411be3a677a81d835108e8a"
    "en-GB"
  end
  language "en", default: true do
    sha256 "c451d7e525b84d388a0f9fa6f7891358a52f8934c5a4f5609ad2093e33d6fd71"
    "en-US"
  end
  language "fr" do
    sha256 "663f296a58745cd0933b8437433419316542a745404970ab2f7c417583fb8b42"
    "fr"
  end
  language "gl" do
    sha256 "31b184fccc27724a7d44e88922c0c086028d38af7f3633ddef6f7915e7281118"
    "gl"
  end
  language "it" do
    sha256 "be1bbb5fe5f10c19ca298f2fa28a7fa8b13d4a2e6e47e2fc324ceef1240b2abd"
    "it"
  end
  language "ja" do
    sha256 "14e1ddb225864e9c17145ca63a1e40043f24dad463301fe37d084ceb92025f18"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "5930ac3dfd08e71ca313f8a816406d2735c7b935504b5de328dde32decee8d50"
    "nl"
  end
  language "pl" do
    sha256 "23ea12621c7f3bbb5c75c2976ee66d8acc8a63610e645b0c6cbb727adf9867c5"
    "pl"
  end
  language "pt" do
    sha256 "40689ceca557b00e37da58963ede491bcf6aa65bf2b789ef6743715db67716fe"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "bd94ce0e46de2ac27e04138d831bcb212d06a0a81081190a5fb393a6712657f7"
    "pt-BR"
  end
  language "ru" do
    sha256 "70893dcc2589038488d60bc3f0db7bfea57f445f3cd93b0c827330c48783d245"
    "ru"
  end
  language "uk" do
    sha256 "6f253f1c0609cc8b889a7c7c7ee05a8c8a69bbcf6e3d6ea8f7d44fbca09ef9e6"
    "uk"
  end
  language "zh-TW" do
    sha256 "b046ee88d425f42bd1aa10d4b38efdbbd775214df921ef2ea775037afd5e944b"
    "zh-TW"
  end
  language "zh" do
    sha256 "5e0878d5e532999ce74f8391f54f284f7b3fe197f5e354464d9d5a9652ced5f4"
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
