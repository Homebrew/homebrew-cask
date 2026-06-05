cask "thunderbird@beta" do
  version "152.0b3"

  language "cs" do
    sha256 "6945a1b62e1b6f87d650abae1f5233e6e7fd458981420787f944a55457203552"
    "cs"
  end
  language "de" do
    sha256 "3350b5c3afff9c572b25822c6f94061c63c376fdf8d0d530b71e41d30823b1e0"
    "de"
  end
  language "en-GB" do
    sha256 "4609993657faf56434610341ecf2a63670e711ed5d23009a7a74b96ecb8f55ed"
    "en-GB"
  end
  language "en", default: true do
    sha256 "5653593f88e6054f5f41b5cb4777ea3aad58e89a50d35d3e5f91e4c7b425e755"
    "en-US"
  end
  language "fr" do
    sha256 "a7c64f73aba7a301a7ece867a839b9245e084032376574f5dcff4fa001dda482"
    "fr"
  end
  language "gl" do
    sha256 "824b61f7150788bda6e1ed34bc1ec68fe72a35c0fed705c219c18730846bcd5a"
    "gl"
  end
  language "it" do
    sha256 "f45287aad9698e6478ea6ef52139dc3fbde4ff44ac2dc566119e36df86a31d59"
    "it"
  end
  language "ja" do
    sha256 "5bce011c748ebc2ecebaafd3dc1559e40dc42a5f1ca9c45ff7219a3fe72c56bf"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "dcf5d87ddd3bf2f3f636a546e81fdaf7e2495a6d2887b24cb0cf9a89d758ba02"
    "nl"
  end
  language "pl" do
    sha256 "d76dba94be1d46358f8ba004176e2da8046910256592a92b831bec6d491a75e4"
    "pl"
  end
  language "pt" do
    sha256 "eb17a39d1212b8e6909b83cc150bca483dbcca876768dc0696f7d87142e26060"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "4321695de8bd26b914987d674d2ef1f55e7efe57207a62ed131ccbf7a00442e5"
    "pt-BR"
  end
  language "ru" do
    sha256 "89d21ce13bb72db65fe9e5f3f0b27be87eb50088ce8318d333df98daa989e5ae"
    "ru"
  end
  language "uk" do
    sha256 "40a3b180396e5a7270bd4fb8bd7a5e2564572a787fa89f33a159adedb3448a5f"
    "uk"
  end
  language "zh-TW" do
    sha256 "1109965b4cfa3b0a60711abd929f7edc51992bb263ef4a1d19775c98816aa219"
    "zh-TW"
  end
  language "zh" do
    sha256 "394f3451336805ae6b4c6781b535a9a14a0f82de3c9d66d7657e0358e532b7d6"
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
