cask "thunderbird@beta" do
  version "156.0b1"

  language "cs" do
    sha256 "0e90cf4936e1f87616c5307608f4d02d10d31cea2998e4b1e9e73e1487685da0"
    "cs"
  end
  language "de" do
    sha256 "3b1386ee2d0eca245b277427f04f4a4f8661055ae6e1006efb45ecb3667865a5"
    "de"
  end
  language "en-GB" do
    sha256 "eb4870f9916c93b60bce595854a8607cddedb6b23e8376599275b987fd2618c5"
    "en-GB"
  end
  language "en", default: true do
    sha256 "43e03acd20aa5989a2a07dcad171688d575f5a113358c2a26679b068a57510f8"
    "en-US"
  end
  language "fr" do
    sha256 "4d259c9ca524cb6df604b45fcfae5ad53e07eb00c61bc87bf6a785f2716d6852"
    "fr"
  end
  language "gl" do
    sha256 "ec1be44e886ffeb9b78b1e22c2e1ed21b1f8aa192235388f24e6e1688ed6bff7"
    "gl"
  end
  language "it" do
    sha256 "95a1fc6be9000300ee31c32a89a3c98d9a697ee401c98f670168363a6007d1e5"
    "it"
  end
  language "ja" do
    sha256 "273adecd763169910cd96188257b809151f65f23424e789855b0fba24b91b7f1"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "d5171f254aac0a2f7ea8bef15229a1928c99c1681de487be4e68702a7705da7b"
    "nl"
  end
  language "pl" do
    sha256 "e6c9c316a51cd111123d51675d109e9ef2725855a93523140868e41d420c3364"
    "pl"
  end
  language "pt" do
    sha256 "eac3e112797efd25d91d7407d375a37880aa7d36bc4b62fd2a86c1db5efe6ece"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "4cf7a000e1b21dc502ccb11a393b501af14982be88428eae1bf431be880fd4dc"
    "pt-BR"
  end
  language "ru" do
    sha256 "81b9588042d308d824ca9ccedcf8c93484898501bdec29af4229949b14d8d6fd"
    "ru"
  end
  language "uk" do
    sha256 "1fa19c035471415fb193d44bab58319839677ff79765932cd34f56eab5584eea"
    "uk"
  end
  language "zh-TW" do
    sha256 "5b1fd6354c4a335d571b9f7766fb0210d8b48e0a88a4e363a0972ae4c5275293"
    "zh-TW"
  end
  language "zh" do
    sha256 "e051628bc1a858f5e8083685592bb611593577d96fcc3ec3f6ec5c885173940d"
    "zh-CN"
  end

  url "https://download-installer.cdn.mozilla.net/pub/thunderbird/releases/#{version}/mac/#{language}/Thunderbird%20#{version}.dmg"
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

  uninstall quit: "org.mozilla.thunderbirdbeta"

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
