cask "thunderbird@beta" do
  version "149.0b2"

  language "cs" do
    sha256 "46b90e233a39b934903b0d9092a699dfeedf68c6af800dd8137d85945544b7a6"
    "cs"
  end
  language "de" do
    sha256 "905110c65809694d7300e136beb2c165cd8b03084cf6eb251d2dac86cfbd1050"
    "de"
  end
  language "en-GB" do
    sha256 "7f42a487a92502e21bdb320b64ce08885d434cbde9809039716ab2a734641b7b"
    "en-GB"
  end
  language "en", default: true do
    sha256 "61468ecb07b6642fb173fd40ab4186ea792657f847cfcb402869a4cd6e0bda8f"
    "en-US"
  end
  language "fr" do
    sha256 "7e8d95cc0c6c15a76468b3728b1dd58571ceea4062197610e089ba9101b8ace4"
    "fr"
  end
  language "gl" do
    sha256 "1bce00ac39f6aa1512f86a2ea20e06c15b04339706f5d74bcf80aaaf86412047"
    "gl"
  end
  language "it" do
    sha256 "5d91bf5bd0084989069e94c323fce2ea26359da8e595c240580df5f64df9ff7e"
    "it"
  end
  language "ja" do
    sha256 "6f853218ada73d01c86b5222d57263c464e4afeeb0b9e4ccc3b07d1c71ac6930"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "6ae34022999d56583e83d62058d4ad9821b6b8301673a357567db7bf59bd700a"
    "nl"
  end
  language "pl" do
    sha256 "3caf806b7f064707f9e6fc9fb415e0c819cdb7b537768e14e2ab3fa2bee2e72a"
    "pl"
  end
  language "pt" do
    sha256 "abe16520588d6d7c690144f490d3cb91a1ea9e729b4d6745d3938d364f405776"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "ca912f9d598416a7fe362170c32bc8d26950b32059f1355b0a8fbd8ba625d4de"
    "pt-BR"
  end
  language "ru" do
    sha256 "61513f67c6c31eb69f115b456a96db493a23003ffc9b1d1f3abf930a8ee80c09"
    "ru"
  end
  language "uk" do
    sha256 "c6fda5914be244840371bd596a484a26af645fc64f19c3f59bb98691c4e4d1be"
    "uk"
  end
  language "zh-TW" do
    sha256 "b0d5dcc1787effd26a75f4591e317c3dcd2ca175f15632c2720b2d76fa2bee18"
    "zh-TW"
  end
  language "zh" do
    sha256 "762a897ba7caa8df9b0850177fc4bc8034f5b35e9afc022aabd564cf9a3f81b3"
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
