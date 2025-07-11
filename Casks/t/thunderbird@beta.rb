cask "thunderbird@beta" do
  version "141.0b3"

  language "cs" do
    sha256 "34d89d6e144a6770cc18498067daf414cc3a7c94318ec884a094f75170c6010a"
    "cs"
  end
  language "de" do
    sha256 "6409ab84f6f9656d5ca226570e7a6ccb8b994a279a98688b99cf0d655610f412"
    "de"
  end
  language "en-GB" do
    sha256 "b661db7ca9fcbbeea04ca92de22b4b052c0cb8755f808c95c8bad767e7747215"
    "en-GB"
  end
  language "en", default: true do
    sha256 "06b47e5aac132385ba5c1ad87e1b6482feb8bcc820c5907020eff54c9af8b5d2"
    "en-US"
  end
  language "fr" do
    sha256 "0c8a6964201a71f463cc17e505cb901121d2934074fd4ebfc1f064fd8e59308e"
    "fr"
  end
  language "gl" do
    sha256 "31077fa9ae8d4cd8414c32bc475b36ae19a57c45c08e4502969d04ff0938cdaf"
    "gl"
  end
  language "it" do
    sha256 "e47bd95d3a069408abc6f0ecc58ba4709615c6b70a5873f046c6849f66325a0c"
    "it"
  end
  language "ja" do
    sha256 "424a3c330841850c3b549d042db673449e52e8b2c7a6743f425c87af89e8aaf7"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "86a7323e0ed9cb958b6bb43ff665713131a717eb24b682b97b5e000a71b84872"
    "nl"
  end
  language "pl" do
    sha256 "6e7b65ca0be2f08ede42914446b0432eb6b5bc80584bf302416f9833b47ce44a"
    "pl"
  end
  language "pt" do
    sha256 "261d1cc6dadfd300f9c49d71acc59829900da810552af1ec338c4318bb49a109"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "bc595862da3077a4953606d0c773f014ef17a27a05cf562837481fab39a554ad"
    "pt-BR"
  end
  language "ru" do
    sha256 "917e973fafd4598ba13374fc63f81bf232636ebbcb3899a7ab224c9633720428"
    "ru"
  end
  language "uk" do
    sha256 "6c566eceb8a1ee09abf5df5e66be9d4ee51994b79958b05c2248e4c08e830913"
    "uk"
  end
  language "zh-TW" do
    sha256 "f352a1128145cbf0261e051dab1c3839ff3a3b7ae74bc028aa2b7faf95d7f1cc"
    "zh-TW"
  end
  language "zh" do
    sha256 "1a0003943db516e8c35774268aef4281db5f4647fa8904af917a9d0cd16d7c08"
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
