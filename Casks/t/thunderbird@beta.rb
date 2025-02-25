cask "thunderbird@beta" do
  version "136.0b3"

  language "cs" do
    sha256 "5d31b325c9122856e8e3d43c1ed1a97ac67a411be4f60b13d927eca02ff70435"
    "cs"
  end
  language "de" do
    sha256 "bf20211e7c51e4f43409518a63c621a60074b38bc47cf29e99455978f1edfec8"
    "de"
  end
  language "en-GB" do
    sha256 "acacd87cce24c4b8797d15b256c49f50853a83c955004537849d8a1cbed1e03f"
    "en-GB"
  end
  language "en", default: true do
    sha256 "29385cf61e33211bdeafd1087254c86d4ba4bcc5bf34d76cf8f5e982c847f257"
    "en-US"
  end
  language "fr" do
    sha256 "11c0593e2db551eb9dd3eb2f96a7a576418de010a5d5d8e9ec77932fc76681e6"
    "fr"
  end
  language "gl" do
    sha256 "347612b75bc61e91d884da3906524cedb626d52a6cef7a75c958df8cbacb57f6"
    "gl"
  end
  language "it" do
    sha256 "5a0479ca5fa11e6e9e71883e865ca8437f4108d0d55198aadd2132e3d048bcac"
    "it"
  end
  language "ja" do
    sha256 "d032612a57b0403ac53c0af6bdff79cb90ad8e0dc97f7cc55d3063ac67935d17"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "12626f5b2dfd838adf6fbb2c10a774aee533e489db77c06383e14d1d6fba9af2"
    "nl"
  end
  language "pl" do
    sha256 "5a7a897c09d1bd65a6109ae1310bcbd0fbcc0b281a4ff515c64a32ae655e9949"
    "pl"
  end
  language "pt" do
    sha256 "74fa915382d8d71fea839e4755f61146424387dd997387ad8c6598a268ac8b54"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "31d38e3cdbe530dce5b1011c91081114d0c1b9732aff697b78280c9706a81d9b"
    "pt-BR"
  end
  language "ru" do
    sha256 "58ea9ce991def8a34a7bd354728eb362c0be8ef5f0f70079f818ac8b96782cf5"
    "ru"
  end
  language "uk" do
    sha256 "7a7a2ec0de6722d43080956355b5b5f78dc1b23923b4bc5f4d5247960af25d80"
    "uk"
  end
  language "zh-TW" do
    sha256 "22038bf60f8ee6c64e642a0af46f25d608cb56a67c094522bfecb80ea499f99c"
    "zh-TW"
  end
  language "zh" do
    sha256 "db0a7113edace492f6d37a0b4b9c310b19f0500e248dd5ae7b877e5e26cf4843"
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
