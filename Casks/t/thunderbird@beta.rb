cask "thunderbird@beta" do
  version "132.0b3"

  language "cs" do
    sha256 "9b7bf7a803de177d0223620d133d29f7627c4bb0337d3592dd185b194236ee61"
    "cs"
  end
  language "de" do
    sha256 "e685af21b64663b3d1506e727a7f80f83fb3e314d367f2bc06017adf9fa65762"
    "de"
  end
  language "en-GB" do
    sha256 "4d98c61e8e9ea38a92d8c4198697027147858e49d0f590b8f0e82dc1098a749f"
    "en-GB"
  end
  language "en", default: true do
    sha256 "dcd66a33f2f17b20fbf5bbac22625e9ff66848a32b8c13ec1de2264a48cab4d1"
    "en-US"
  end
  language "fr" do
    sha256 "168aaf188a12d7fd4a5b86043a365a44da7bf0a4ec5f5b13ddda56565631b251"
    "fr"
  end
  language "gl" do
    sha256 "b663b4981e0a10d1b1bde5ec2f3882c31894a2570a0129b45a051e8554309e86"
    "gl"
  end
  language "it" do
    sha256 "710f39b45b29828c7f3e7eb8262ddbae5c0217b342c17d986eb43f34bd4993df"
    "it"
  end
  language "ja" do
    sha256 "1293371d84c223659ab65b8ec334769527b60dcf43e2afe74d5040c33fbd6324"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "0aa26fe12a750d80b5a5f145b7d4a58fc1ae5d0fc197fcd16578b13f54ab4232"
    "nl"
  end
  language "pl" do
    sha256 "21b6839a38362031aaf195fce23ff638b690ee6f8e50a589ded54df32ddaca83"
    "pl"
  end
  language "pt" do
    sha256 "24f0735f68aeb10a5ed7e711fa89ed59123188ca66146ca9926b84b1ca30a50a"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "902c6c5a3ca1636a9039346415685b4cdb0888e4c00479d01437aa71306f8813"
    "pt-BR"
  end
  language "ru" do
    sha256 "e7a9b5f8c4df6bf8f23a761c0ddb2eeff09493f9bc84b0079c64e2784f70fbf0"
    "ru"
  end
  language "uk" do
    sha256 "c2e030aad83dbf658a5dfb6959dceb8df632f5755259b6503265d44f872be08b"
    "uk"
  end
  language "zh-TW" do
    sha256 "9ab1481eee66077e97e541c5ea5ca5dab8b985a50a1fcf7c9263b06b71078024"
    "zh-TW"
  end
  language "zh" do
    sha256 "bb0d7d225c86eb8182423f10fdee5ae5dabffcbb708bed456e4541288563ee52"
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
