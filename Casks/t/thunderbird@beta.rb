cask "thunderbird@beta" do
  version "139.0b2"

  language "cs" do
    sha256 "8fab53f08e5fa1935a6731a5335fbfd08a70d5f334f56d271850c3a9ed1c2a1a"
    "cs"
  end
  language "de" do
    sha256 "ec93f3474b3b96b4738115e3a2cc52270d74a8b593032b6c77bb972089a9f8ec"
    "de"
  end
  language "en-GB" do
    sha256 "6f649e5d44b08c23a44e366c9d5fdd6baa62b565c22cd4375a894ee135d1a45d"
    "en-GB"
  end
  language "en", default: true do
    sha256 "553189cf4627ba1a0e4f30afa6597b4969933c37fa055efa9a9bd83dbd33709c"
    "en-US"
  end
  language "fr" do
    sha256 "3c26c801864e183460b5bbe5cd72576dbffd060bce26c667be67719d3cd83c52"
    "fr"
  end
  language "gl" do
    sha256 "a9c51b34d9ead451cb5dda68e970aa52116ab8200d965f7e085dea071204b1b1"
    "gl"
  end
  language "it" do
    sha256 "73422f401ac99d1f747358d5ae81fa18a273350daf9dc047d7882ba4b1ef6a13"
    "it"
  end
  language "ja" do
    sha256 "6a2b32af961e74a0efdf42878679021953da6225cd84134fd3dcdf79cd8db011"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "13e1410357ba42ee103cc661e3446470cb659e2402766c33c8ddd5e9419652fb"
    "nl"
  end
  language "pl" do
    sha256 "be1db722578e0d1f4519df24c1b24ab61e665f52fb6593d4424032c298af87b1"
    "pl"
  end
  language "pt" do
    sha256 "45fc8384adcead33f3533869ceb13d149cbe01f3389faef7f06e7c303690c03c"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "5bd56193c7f6a69912aa061b2f6da59d528e858e6ee39cbb62e4a3d694feeb96"
    "pt-BR"
  end
  language "ru" do
    sha256 "40c1c968e67d13e4f36f99a515949214a6085f653895a6bf6a0e69b0cbcea3c1"
    "ru"
  end
  language "uk" do
    sha256 "1602fd4f315ad6c8e5e9b088fdce9ce35bb7e229f51fe1a6e172cd0134cdd8e4"
    "uk"
  end
  language "zh-TW" do
    sha256 "2cef3376b00d1a08da9076a49a45b3a6aee6c24fd310b9fd9d605c014c996f09"
    "zh-TW"
  end
  language "zh" do
    sha256 "f726afd53c0f2e806c52431b5f196de77a615711a6eb291e72d54766eaf266a0"
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
