cask "thunderbird@beta" do
  version "144.0b1"

  language "cs" do
    sha256 "6b0abaa43b1f2c3ac13828b2b84a2f5f0d06f6c645930e41047a38205d67f85c"
    "cs"
  end
  language "de" do
    sha256 "12a578718cf51dc6498fa3682e48a9b717d0f769ab38f52635dc7143db79b98c"
    "de"
  end
  language "en-GB" do
    sha256 "6481d075a8750391e7f641599b973693c027130108f6647e7a42c49debe1edec"
    "en-GB"
  end
  language "en", default: true do
    sha256 "b62252cbc61541ff5dc6a642f3c6b7040dac3d7eee06d374f031881513a2b25e"
    "en-US"
  end
  language "fr" do
    sha256 "f6b8d0fb4356a812193ccc8b72aa3d2935cfc4c8684360306d119d5afe8c0e1c"
    "fr"
  end
  language "gl" do
    sha256 "7649a37256850251babd23e79b77c99a2165e241508ff7ab68dddddbbe5ec366"
    "gl"
  end
  language "it" do
    sha256 "0bb536d967a13fab2801e4881466119fda3cd1c596849af86005c8dd3778d19d"
    "it"
  end
  language "ja" do
    sha256 "722de9e06e2ae1734270b0d505ee8c520243484d69474bc77327532eb2640235"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "d6676bb5aa02aa601433a53e3568f87a8b0ca307c7865a56a219f15365e17f3f"
    "nl"
  end
  language "pl" do
    sha256 "0f366af9093b66610439b5257176cb6263b7add1b9016c831fa4ffa249ed28e2"
    "pl"
  end
  language "pt" do
    sha256 "0ad8818132a6121c45acc3e2e4a8f2a2f48e88d7b5d20b08a248d8960b866a0e"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "fbe9e0b2081d0792f311f6c7213149acbfe4bf1c7b18d22b66af9ed48c21b7ed"
    "pt-BR"
  end
  language "ru" do
    sha256 "b80fb08528b314d4e4ce1e7a4a5bce59a32eae32321be4f255e3d3a4b0eaf314"
    "ru"
  end
  language "uk" do
    sha256 "c01b181ccb49bd942e44647186517a92b77fc0a2cd1fb87d8334875df8b2c9d8"
    "uk"
  end
  language "zh-TW" do
    sha256 "b894a380534034e1d46c08ede5d47fc19b46df2e40ecaab6e572911876181414"
    "zh-TW"
  end
  language "zh" do
    sha256 "7f2900a77293f5059bbebb4657b92271afa45854cce00f39d46bb4ad59c727c2"
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
