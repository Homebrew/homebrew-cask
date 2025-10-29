cask "thunderbird@beta" do
  version "145.0b3"

  language "cs" do
    sha256 "2f5e0ad01826ec45ad4142d6022f472006de2b5e9d9829a0ed9cfd6aff7d70de"
    "cs"
  end
  language "de" do
    sha256 "d685d3640d2cedebccde90743c4b03f19cfdb921eab81fac627e736e35b712d2"
    "de"
  end
  language "en-GB" do
    sha256 "985fcbdbd4a9fa254f6a7b48c2f2d4540a74f9010124e9d429b57904c56cdb7b"
    "en-GB"
  end
  language "en", default: true do
    sha256 "a86f20c9d498c3ac5e65ce066e9356490415b96b63cb67bb6cf1136f34bfb854"
    "en-US"
  end
  language "fr" do
    sha256 "95d4f5c8aa2acc1fc84f5aaca77d5a7b58c0c6b0423ced7e83bc506fb19bcb6a"
    "fr"
  end
  language "gl" do
    sha256 "12bb484d415860d3796d93289e401d56c84fc70570c993fe3c2820afb9261c6a"
    "gl"
  end
  language "it" do
    sha256 "6d8e8bb36aa2908c0fee3446f8ba09106a7b4d789774423cbc275a8f66136ebc"
    "it"
  end
  language "ja" do
    sha256 "07f816ae84adeba7b6b35f3d8da35a5ecc0aee8aa362b919999c3890f080e482"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "3322200f567c813d6e2cb89cd0f554bd5af6915da04033639c2163e9cbfc83f5"
    "nl"
  end
  language "pl" do
    sha256 "56c204d86e06e7ff7382c307fd47a037de5939ef605039226e17bbc3ef3f17fa"
    "pl"
  end
  language "pt" do
    sha256 "378aa97742696b23c90431f25cae3c6c252d7b173ecbd74b54593da842535112"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "d24666fd3714a183f626a7bf6b5f78fb46eebd14d14c5d9c31f309a4675eccb6"
    "pt-BR"
  end
  language "ru" do
    sha256 "cd34a6b65fc880bf2bfcf6ee5f9e39b39d5cc6b73f3dc6bf8e91d2eca286ffbc"
    "ru"
  end
  language "uk" do
    sha256 "142599214358cd61b097220bcf4fb6f078fca26133d78a167666653372af5e48"
    "uk"
  end
  language "zh-TW" do
    sha256 "b0f2424214dbb6d387d6fa2c0effaa336ec48e49f7199c761e71b11e27dcc014"
    "zh-TW"
  end
  language "zh" do
    sha256 "4901f4c3b7f54d2e01e5c3184dc1b4f8c75d4cb92d64835802ecd69adea82adc"
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
