cask "thunderbird@beta" do
  version "133.0b3"

  language "cs" do
    sha256 "b073fd7874db7c818ded29f57f3f66092d8919e96a3e4cdd3c6fd380ce60bca4"
    "cs"
  end
  language "de" do
    sha256 "ba77fe45b9b7bfd2a2c64ba790558d67b8d8cf830f4f0297a0fd4ee662b25e08"
    "de"
  end
  language "en-GB" do
    sha256 "f3f681d35ce474e03e6f9010d0c54255790c7f761ae3d4942003b071d3953a3d"
    "en-GB"
  end
  language "en", default: true do
    sha256 "3d2af2ece866075680aad7063bcaf72287030c7c1809803709954bbf270bc954"
    "en-US"
  end
  language "fr" do
    sha256 "e831fa657854a508b2a0752764e673edb6a6dd39e8def4fbb5e106fcd9d1b78c"
    "fr"
  end
  language "gl" do
    sha256 "0f5f49c30a739c9bc5adaa91c79042a06e8b82e164bb5e613f6f2473161e1667"
    "gl"
  end
  language "it" do
    sha256 "7fd820211257ef999eee6d37a21dd3bd7bb7048d2646b486bbdd80b28ab29179"
    "it"
  end
  language "ja" do
    sha256 "676660655af5c069f0498666fcb1a9fab5e54f17bf47113f1119a85ee78ce4be"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "43abbed1d338ab7b71bd5f0751c99c499c46831bbaaa9963da16a1d7e5d2619c"
    "nl"
  end
  language "pl" do
    sha256 "a06f3f6ca9cc66a830afbc67a5fa4054b4c43c3ca12292761f4e7910e6ce191b"
    "pl"
  end
  language "pt" do
    sha256 "1d35474586ccf3931ee29af889e63727b2aa6fff4bef2d12af72ad2cd8df078b"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "b4ea60ad85f0ed367c8b2825e312d5eb925a7558ad19e597fc530b098b4fd866"
    "pt-BR"
  end
  language "ru" do
    sha256 "dec8f09125b02081effb5aa92531242e987bdce0cf2b438f83fe775fef8632b8"
    "ru"
  end
  language "uk" do
    sha256 "31fd6f601ae60a090f0767bf94d945071db5701fbae58bab367c073d7099a511"
    "uk"
  end
  language "zh-TW" do
    sha256 "bc5533e081b3d1d47880f13c68eeed59f63cc4a20ecc12fcc4f70fb94fbbc7a3"
    "zh-TW"
  end
  language "zh" do
    sha256 "4d5811175a78349f0a0f43092f7a8a24aaabd08ae0d36fde7face2ab899fe04d"
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
