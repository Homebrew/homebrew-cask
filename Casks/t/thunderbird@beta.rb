cask "thunderbird@beta" do
  version "147.0b4"

  language "cs" do
    sha256 "f3c251168c5f8b865721de16959b1c15be8ff9e258ae3419c5054e3197a9ebe7"
    "cs"
  end
  language "de" do
    sha256 "4c320dcba12488040ea92faa4dca15595fb0ab842688c5e50b48df29379ba106"
    "de"
  end
  language "en-GB" do
    sha256 "3003785589a62b91c7eff7ef30bf94499946d71c3b5f3e76c96565fb3842c13f"
    "en-GB"
  end
  language "en", default: true do
    sha256 "557bc867b5fda3b8628e8abd4feb8557c72cb36f6497ad16fb6b67dfc0a5044a"
    "en-US"
  end
  language "fr" do
    sha256 "74611d5ac37acb57e67135a3e2a15e81ec00d05a746db3815e4e9572ced21d30"
    "fr"
  end
  language "gl" do
    sha256 "13ef92abfad9f772114ea5e0c66a5e2610814ae40de1b0da3eb0edd1f1c097d8"
    "gl"
  end
  language "it" do
    sha256 "5d9997e522fa1bfc4f52b8c61a2d6bfd68ce9bca3309734005a24139400d5f2f"
    "it"
  end
  language "ja" do
    sha256 "5f5c36bc3c51da587baff671b755ce638ca671c117028e0f611f954d54c9b0c7"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "26e98009aa72a449bdaeda840ca142f996a288d31586a23f43836f61ed5adff2"
    "nl"
  end
  language "pl" do
    sha256 "c549290eee3455f034b1f0d1e0db59eefd49553702b315d629e44a1c363a4182"
    "pl"
  end
  language "pt" do
    sha256 "e657acec7794d34f22205ed00500563b9f67f014f91e55758eb554177555ca51"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "eed1aca129e76e963592aa42b297f911abc186d2141c36122b311b931edde9b8"
    "pt-BR"
  end
  language "ru" do
    sha256 "1fc07fa8f23d23d0868315e528393769f5af1bf63285811d72e6f13518f8b48a"
    "ru"
  end
  language "uk" do
    sha256 "40c12ccfc1971888739a982217a450f33250d086a1d011de8edf0223f2ce34be"
    "uk"
  end
  language "zh-TW" do
    sha256 "e755ca54fe4ea00394d2db01cdf32ec7ef3bdea4873e1e484771f49c5f23c8bf"
    "zh-TW"
  end
  language "zh" do
    sha256 "20614d0cf52ccbe272a1e13609b67a35b109fe56e755a0f4eb589cc6688000db"
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
