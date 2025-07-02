cask "thunderbird@beta" do
  version "141.0b2"

  language "cs" do
    sha256 "f5ea401ca973915ffb04a5dcf20b387018f4c344e110a0684be49d90dc423086"
    "cs"
  end
  language "de" do
    sha256 "af510fd105682a2b2c64d3e2e7ec1a17b29d472090b220df42d12bf4515738f3"
    "de"
  end
  language "en-GB" do
    sha256 "c8b309157fc57e45f18c13b12c187443158e76d02fcbd67d31945ef267e63886"
    "en-GB"
  end
  language "en", default: true do
    sha256 "061c808b97a7c2c9d8032fe6d836de49796318f4bb24a99e5e959519e0483edd"
    "en-US"
  end
  language "fr" do
    sha256 "704e88b259bee8dd6a2a8c4a296586eaf87d75d738f52e655024975f6fa6da6f"
    "fr"
  end
  language "gl" do
    sha256 "ede82efb77e240f5fb3510f1cb3c33ca4f5b355cccc84a863cfd65326a570761"
    "gl"
  end
  language "it" do
    sha256 "0343c05891aa34538877c5a5e5b4343f2de02a1c40f96967122c5d3d4f7248ea"
    "it"
  end
  language "ja" do
    sha256 "1c8ee8807b62a6ea8fe335eb83ad0d4645e720eebeca0f70afbc436a4c35f512"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "626115796c80f5ce3895060ec2a1638473305ba2bd881410083de61800e5e6a9"
    "nl"
  end
  language "pl" do
    sha256 "b098ffb9899913a82d3d4470df7e8c619c3775392647d4fcd6dc313f7d992df9"
    "pl"
  end
  language "pt" do
    sha256 "4b37784d9feac61f2891fc80a7ad32eb512bbde266c499033d0b908429729485"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "5337f68ccaa95d249706602ec6dfb9c42f7e24dfe5e35e84b748cd46c6c5fd49"
    "pt-BR"
  end
  language "ru" do
    sha256 "578c7bf24358fc5b5e21f56451d08f9902f355842f4a31169852e4e5ccd4dab4"
    "ru"
  end
  language "uk" do
    sha256 "4aece31d4df3dfdd351e78033d5bfe6de575b7acb46df59edce85c1a2bb51691"
    "uk"
  end
  language "zh-TW" do
    sha256 "b0e17c23aa4b0b8bd6d6a70b23637fc58685ed96bd978c2af98186c395292085"
    "zh-TW"
  end
  language "zh" do
    sha256 "01cf260e2e8aa4fe7c7bdae07041d47cc505dd15726cefe69af66e1d380defa0"
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
