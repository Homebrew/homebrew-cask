cask "thunderbird@beta" do
  version "154.0b2"

  language "cs" do
    sha256 "67849d60afffb7d42ef7cd98fec5bdf106d0b9b6b6dd3c8c813de819b5355665"
    "cs"
  end
  language "de" do
    sha256 "46d3981ed855734ba8e2b54f6915b7e7300d363b581f633a98e84fd52e0be81d"
    "de"
  end
  language "en-GB" do
    sha256 "a41513a02db422dba60ef3ed676d3209cf7571c5c7fc6587a06997bbdba2268f"
    "en-GB"
  end
  language "en", default: true do
    sha256 "7a6cd467d8e7dc7381fa241a87e803af3d589c0a2688dfd5a5c3640f371cf8d9"
    "en-US"
  end
  language "fr" do
    sha256 "309274575153c013f9e4ba27d2715e32bb670938d7c925780c3e48b55f833032"
    "fr"
  end
  language "gl" do
    sha256 "e332489f2c382c516251c0cb1cb9e1de6797350879e1be5c3a9f20bb156fba7a"
    "gl"
  end
  language "it" do
    sha256 "56ad33344674867185615a31b3e3f84f2f866d50ca50f30f7a5dc2bec6670ba0"
    "it"
  end
  language "ja" do
    sha256 "5457eb791281df23a5696da1eac2d9ab8efdacc8cafc939ccfebfc710fb4cd63"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "24b3d10a00be414beb8ee4248ebeb9e7f96ca127c67d257ed59059dadd93eb61"
    "nl"
  end
  language "pl" do
    sha256 "aa9a93bf06de51c7ad463bd1187c2413d30ca38b7e8f62edf55e5cb7427a75a0"
    "pl"
  end
  language "pt" do
    sha256 "e4aa50bd9ab89460afc7c87a62c6326887272f644cec02e2bfe9a5eb260a35c4"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "9e7db09bc5ec9d442f20ec637023edca24c91c34e36c7fe64ff54fb837a0f208"
    "pt-BR"
  end
  language "ru" do
    sha256 "0b1486a33595d9758cdbc65d1c087b7f945b82eafd45fb0660a12f36a0a46b30"
    "ru"
  end
  language "uk" do
    sha256 "f90e6a0a5d80761fa4081c58b0bab12cd9741a49a030a4f75bbfdd18a0609ffe"
    "uk"
  end
  language "zh-TW" do
    sha256 "e6e70c3d514445b98229124bb3edf16914974eacc18621213fb8184abafd8562"
    "zh-TW"
  end
  language "zh" do
    sha256 "e9afcbf55f7a78c68bc591f5a061fea4bff58fb96829288929ffd435ef2860e7"
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
  depends_on :macos

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
