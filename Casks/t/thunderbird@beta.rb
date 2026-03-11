cask "thunderbird@beta" do
  version "149.0b3"

  language "cs" do
    sha256 "eec1d9c9a1abaef1b784f0d7d513647f570bfe8b9b5eddc55e9a776deacd6b60"
    "cs"
  end
  language "de" do
    sha256 "e6b502fc66f44bfe7df7ea667028509fe37f96fbfbf3c26296d9bcc60bf2fa3f"
    "de"
  end
  language "en-GB" do
    sha256 "bd0730e2e1a48cc399dc3aac506c7936ed54059d35db94ff8cdbba14f996cafd"
    "en-GB"
  end
  language "en", default: true do
    sha256 "a649f205cff9fe2dc790d85b3c27b0c8a4665c8cb49e16b26637c9574f158228"
    "en-US"
  end
  language "fr" do
    sha256 "a5b35f2832e07d283559fde1d7e52c9b6e40c6d622873f85308b8e608fa10e31"
    "fr"
  end
  language "gl" do
    sha256 "fe59c7bfb2a7586839f5f6e1349d755c9da1a0adcbcb7919be8c7e1f821e47a5"
    "gl"
  end
  language "it" do
    sha256 "b63e6b7fe677257d74850bb3e0fdd6233c2a071a99ca7e34627f9a4e2c83ff0f"
    "it"
  end
  language "ja" do
    sha256 "2982db3c60623a135812483448137e24503427451ffbc57097d7912a5716def9"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "75e626081d5ce8c048c21107fa03074e1d8b64fa69907f76762a4826acdc5fde"
    "nl"
  end
  language "pl" do
    sha256 "aae079334abc007c799bdc6f6669a5e99736954a799cab92d5d5911a5119f0e0"
    "pl"
  end
  language "pt" do
    sha256 "3948d1eb56e60e427a4cc5533867b924a62678f5cd607025c24b8f1fb8af72c6"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "4162a7d7ab2fa91b0f95dfaa1a658f3eafcbaf1a0115836ccaac6646c7aa36fc"
    "pt-BR"
  end
  language "ru" do
    sha256 "43fe17bf2f60fdc25ff1ccad980728f8f73203dd7b413eb2d0e14f4b83918c36"
    "ru"
  end
  language "uk" do
    sha256 "22bd02a06fbba6e41d46cd74e80abac7fbefda463c701792287cc28f7acd3a0d"
    "uk"
  end
  language "zh-TW" do
    sha256 "5f7c6877493a1ea27af3d2a7f4dd52ba20467d160098808d11d2c19bd1195061"
    "zh-TW"
  end
  language "zh" do
    sha256 "7ba24d5c9ada529865097ca861777d0edd847078ac26e58390d92721eac3bfe4"
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
