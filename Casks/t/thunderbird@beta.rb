cask "thunderbird@beta" do
  version "135.0b2"

  language "cs" do
    sha256 "e7b72106cad319bfa74863331a29d63726ccacd1c01c0d66b8516e798663987d"
    "cs"
  end
  language "de" do
    sha256 "5607b06d90ec041b7f2365dd8490b21e0c7055e6bfd85c7eda8d2a148f43770e"
    "de"
  end
  language "en-GB" do
    sha256 "e10519b86570d9cb2edee341626f55b27523e53d19b1423ab92f2545d6e9343e"
    "en-GB"
  end
  language "en", default: true do
    sha256 "460ceec80615b32ec62838171bed04679d8e5c129218918cba446fb4f21bd6fd"
    "en-US"
  end
  language "fr" do
    sha256 "e93972171bf9f8c4c776d38c1ab6ffcbb2475a536c47ab66cff3350deb9d4188"
    "fr"
  end
  language "gl" do
    sha256 "a18bf23f00f276ddfb81ce15c0782a6086cad44a18d853931e1526d32f4d8d70"
    "gl"
  end
  language "it" do
    sha256 "5145d6f085159a5c50feaa9f9c1279ec45433936ee0e693ea9e476e4e60721bf"
    "it"
  end
  language "ja" do
    sha256 "650cf51c519d93e87768635a325604e79ecd6e57085f082acf095cf30de3448b"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "7d835dcaa7ed537714485eba52f04548be5faed9da71b02ecc3d0036cc2b869d"
    "nl"
  end
  language "pl" do
    sha256 "93543abe4aad4119b9bbc6fa79c5c53897b44b8e085bd3bf2e9e1fbd8adaedba"
    "pl"
  end
  language "pt" do
    sha256 "fc2517bd3e584fb5f7dcb190015bc1bd79d18c19fbce5aabbebec2ee6a51ea78"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "268f5d53b2e635ebc6f29c37c2e4bdd0ec9491c3cf34157c29d4d620f3d29bbf"
    "pt-BR"
  end
  language "ru" do
    sha256 "bf2d48942638a3f059ab8ed893c4cc5a7269a68ef79d5f0cfbb60018f3197f60"
    "ru"
  end
  language "uk" do
    sha256 "39ef0fda2371e83352f7cd3f207c7e567912de3a2fd37c48f6dec7e04ad587e3"
    "uk"
  end
  language "zh-TW" do
    sha256 "056d7779f03d2dd1c656a4a2394c55e014f50b2c7e0edf3f651395b04af3594f"
    "zh-TW"
  end
  language "zh" do
    sha256 "bbca629c9881c086d45d06e4ab6ed5031c24a1496e0e421b4c4b0c80bdbc97ff"
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
