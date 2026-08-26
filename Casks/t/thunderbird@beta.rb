cask "thunderbird@beta" do
  version "155.0b4"

  language "cs" do
    sha256 "236457d1869b59c704401a1afe56a5f9902285b367dbe91eaf0a177f3b3ddbca"
    "cs"
  end
  language "de" do
    sha256 "18d5da356ff5e821a95aed5188a842c836013f22bfeeff192afb1fc4ce41d81d"
    "de"
  end
  language "en-GB" do
    sha256 "8b3663f82a03e91832154bb3d798ea5b3521a74459c1782ed2a11ae00cb3b53e"
    "en-GB"
  end
  language "en", default: true do
    sha256 "3147a43ebebc055b61f84eeaabede68a52f6197ab044988ba638eb6dd0247be0"
    "en-US"
  end
  language "fr" do
    sha256 "26fe99592a49b988d8f5b0f9adbd4a508ce96a733f88b9a6a52c123a92e1db90"
    "fr"
  end
  language "gl" do
    sha256 "36eda464dd6512db411765f0557d8587a32e1ef2e483c34b91659d9217ae0a72"
    "gl"
  end
  language "it" do
    sha256 "dd824d797a2d2979a68b79b403ddfd73e8134a7a104ac214818614e1c7240e09"
    "it"
  end
  language "ja" do
    sha256 "86c8f41ffc982ef7709ba6b8017f3b13572b341837d61c8baac0545659de027d"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "f657bb25534041059e22132d1b135eeac3599fa89e73e9e8dee00498f73845ee"
    "nl"
  end
  language "pl" do
    sha256 "7cd084070cc098e5b619a1176877bad96f7e9b7ed9d607a60e979f23d6e370de"
    "pl"
  end
  language "pt" do
    sha256 "693789078cc2c68a93e9d383d520506023678a388028590e59b7bc827404e053"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "a23b3d403a6cafa302b5c2d0b94aeb9efdce83fe54b6c90c513c38921cab5b98"
    "pt-BR"
  end
  language "ru" do
    sha256 "a1ebcfaae084002331202798b0b71d207f0397cae8395c2ac9b20d488de690d7"
    "ru"
  end
  language "uk" do
    sha256 "19ae2ddb0db861f597945052ae69454885b9d2bd3b5ed2ab23ceb61f94b8d323"
    "uk"
  end
  language "zh-TW" do
    sha256 "9f16b06ef8e0bcb5843c173893a2551ec0697805ce93a480f41cda7dd5fbd2cc"
    "zh-TW"
  end
  language "zh" do
    sha256 "0843838943ff5e48ddc096a536e109b8e8b8aa0bde07512e562ebcaec40545b0"
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
