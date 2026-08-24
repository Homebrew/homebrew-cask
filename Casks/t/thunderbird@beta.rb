cask "thunderbird@beta" do
  version "155.0b3"

  language "cs" do
    sha256 "ec8e15807d436731ed183419ba65955e6a7f94100b3ad2823469853ef8b7593a"
    "cs"
  end
  language "de" do
    sha256 "5ee69a1da99bc485100155a2f985f4bb94ec7a118fee0d131079044e79f193b4"
    "de"
  end
  language "en-GB" do
    sha256 "c4571a994b0b9c2337f48a502d65eb01952900f9d3d8163128cc8028262dccf1"
    "en-GB"
  end
  language "en", default: true do
    sha256 "fb76a7dc90894e5e0d7551521ebf34f7ab2a55a92c780be6eff70a9cd8b992d2"
    "en-US"
  end
  language "fr" do
    sha256 "20afbd4efbc34b20290265044f091b1a1341eb9c207839051ff4a5f77e0259bd"
    "fr"
  end
  language "gl" do
    sha256 "ba126bb30375067f17a503754b28574caaf4f25f01c8c65a172e3f770a65239a"
    "gl"
  end
  language "it" do
    sha256 "e825a9a4d5cd3f8454fed05f969b4f82c6eb5d4905018b927ea82d4a310991dd"
    "it"
  end
  language "ja" do
    sha256 "819397464bab70b6e6ee76ad468992f25765e3514aee6ec361fcd5faac5844d0"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "f090374b73f7ac367fddc7a6fb25db9508d2eeb2a5a22a1ea4f323479b351ee3"
    "nl"
  end
  language "pl" do
    sha256 "336afb6d7c9b1e62a55d70278cb1bdce137f0f3155d5e44bd886eb09322af5c2"
    "pl"
  end
  language "pt" do
    sha256 "704d51229a09c05c29e87315b53017a626772d2e2937fa230b039af649f0798a"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "e21416c5b35343421a54b0e1d8dac1528b083e461105f45bab474539f659eb61"
    "pt-BR"
  end
  language "ru" do
    sha256 "4f277022fefedcdc39227f03b740668bd714b3c90a46bc94b2de5c9267448756"
    "ru"
  end
  language "uk" do
    sha256 "d66d2dc87d3d36d7affb63bb0cc67a75278fc4f2d45495732b168773116f823b"
    "uk"
  end
  language "zh-TW" do
    sha256 "6a7163e91b50b7f04b69c36e452ea786387fa5587ecea46d7134b53af5c75a68"
    "zh-TW"
  end
  language "zh" do
    sha256 "7625f9f7cfed62c7dc1fea83f00614b6638933369caaa9f3ed6b57f6b926eef1"
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
