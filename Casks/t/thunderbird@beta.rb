cask "thunderbird@beta" do
  version "154.0b1"

  language "cs" do
    sha256 "e5b89d0d96411a56920c6c84d39958326b4f46689be9f05190f59db31543397a"
    "cs"
  end
  language "de" do
    sha256 "d65c5a924aed5f30a3aaeed2804f4480f9edce75391d191d949166cbc0c6cbbb"
    "de"
  end
  language "en-GB" do
    sha256 "5045af23dcd4ac3d2a12d151840074127c5dabc917b31c5b4a1b58ff1b7b1ebf"
    "en-GB"
  end
  language "en", default: true do
    sha256 "2608e554897ae9bef98784010638d35f9bb18ed0af90eb12afa6f032ee19a403"
    "en-US"
  end
  language "fr" do
    sha256 "26dce946ff0eb5c587388364e068c3ee9607becf250f39545f99bd4b955d9e00"
    "fr"
  end
  language "gl" do
    sha256 "a0bfda160b6af7500d8b7e7fdcfab8480404df601100375705b15bc35607f1a1"
    "gl"
  end
  language "it" do
    sha256 "9334e4cf9c5a6e3209b2c606156ec49f868606404cfcc0936c26f421358ea2d1"
    "it"
  end
  language "ja" do
    sha256 "b5954ed7096fdcdd59d9078bab9722754a45959b791b868f2be979683dc072c0"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "646e77156a9ff484fcfeb19082926d96cb0e9128150cdfcd8114f901bc8c381c"
    "nl"
  end
  language "pl" do
    sha256 "0f8cf9c7625e009541080c91daf23e969209a373ad7fcb530b9d0b1eb0ea172b"
    "pl"
  end
  language "pt" do
    sha256 "5bd6a3b2686271ba5cb0feb939b6d9edb3c9e9f674063c1615606b63dd931601"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "c978cb59f0744d13d89e60b081dbcda53d65c5e21ccb306e950eb9c6d805bb2a"
    "pt-BR"
  end
  language "ru" do
    sha256 "9a1b067babd088a748aab47e2e0b1dca7858e4b656217fcb57beeb3636acd301"
    "ru"
  end
  language "uk" do
    sha256 "5cc4a5b00e291ec19c63fedde54126395947e4c9e6777e01e35d6f0caf20a686"
    "uk"
  end
  language "zh-TW" do
    sha256 "a3f480dde04a493280630e56f6a0ee565f5654c7ff809a1960c3527c2584f21e"
    "zh-TW"
  end
  language "zh" do
    sha256 "e7537e4b9435532f51f583dc56260ecb6067f75c398c40a86e88448b97b360c1"
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
