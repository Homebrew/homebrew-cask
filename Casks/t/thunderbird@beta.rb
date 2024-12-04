cask "thunderbird@beta" do
  version "134.0b3"

  language "cs" do
    sha256 "349262c1773530a363ab6e6900225ac212c52d412207da06d969c08bba6a4e4f"
    "cs"
  end
  language "de" do
    sha256 "6d6dc9535d27bb3e7c9f7111f1f752743a7aede1ed9d74878958c5add4d04f0a"
    "de"
  end
  language "en-GB" do
    sha256 "5decdfd0afb7d41a4f3168ac7cb84b63e1dc70dd7dea4506a711b6500f7f4001"
    "en-GB"
  end
  language "en", default: true do
    sha256 "9f6152b58990a99130d9794647d1e539bbcd823ec6a8e6b9b43966da4f27158c"
    "en-US"
  end
  language "fr" do
    sha256 "da7074748fa64618141918349ecc4e66795e10994ff76b4d5c58607f19e7c231"
    "fr"
  end
  language "gl" do
    sha256 "e75baea7f448f0574657d43ae3a7e60769442a908485c772a60cb8c5b98a5946"
    "gl"
  end
  language "it" do
    sha256 "35f8f8e9c05023404c28916bde0fae3c358bf383529874ea357b7c2d6707e14f"
    "it"
  end
  language "ja" do
    sha256 "d62ba40565f6fbf946c960b464b59386139f12f1bc2621d9934fd39b351579b5"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "d76ca323a00174480281b6499c86e95e89524d43aad13b9796d6c62fe77e7cba"
    "nl"
  end
  language "pl" do
    sha256 "5c22511cb9af586cae0a5e891e7f30ae9b6ffbdadd918552b9372d91eec29b85"
    "pl"
  end
  language "pt" do
    sha256 "fe51ced7fe083fa837ea4964daabb92d67bb85e991527326b6e0c94eb6fb0445"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "ccd563d0c85a52ce59b5186776ae32209e153831c07882facd807a86b44b170b"
    "pt-BR"
  end
  language "ru" do
    sha256 "fa1f8d83cf90892335ddd8f98923d641c7c705cfbffae2dfe8e0a577b4f38f23"
    "ru"
  end
  language "uk" do
    sha256 "6ed52943680df67d4c3aae3f814b7e427d6298ce8c763b57581f707574cc4aa7"
    "uk"
  end
  language "zh-TW" do
    sha256 "0ed8e7f578195f10c9f34c9502ef27edc810cead1ae97f1df5d2592579818e9d"
    "zh-TW"
  end
  language "zh" do
    sha256 "73741837987b317fb7d5c9a6560c367fcfedfb4e15de2d720b58fae954eee3c5"
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
