cask "thunderbird" do
  version "115.5.2"

  language "cs" do
    sha256 "d228bf60f0c7e3b6cefbd0ce75bd195b7b905f39831041a79840613f83339f7a"
    "cs"
  end
  language "de" do
    sha256 "81beefe08d7b112ad072958f12722980b7afab454ae8ce979954d84a97edca73"
    "de"
  end
  language "en-GB" do
    sha256 "b9fee231bf2aa0c74e6b3a4924cf753b682325c11ab6d9159e978391f509092e"
    "en-GB"
  end
  language "en", default: true do
    sha256 "d859e9b5d81d16737d8f305667c0c9abbd45d4eae4bb637b35b86eb961820f81"
    "en-US"
  end
  language "fr" do
    sha256 "76430d88efbdb8cbfb918bad20da9444adca406f6e767ed0321245ba50af303a"
    "fr"
  end
  language "gl" do
    sha256 "3d3e2e33835e4455ad773d030c60eeb18745fd94577e86aed200a7e65c182447"
    "gl"
  end
  language "it" do
    sha256 "5d403e822fc1159e5405b32133ec14ea66c9788feb2bf07e9d28dd1f037bbb96"
    "it"
  end
  language "ja" do
    sha256 "8ec0154d4a83b0f2561d635c38c9d7034ddafc6b302b91f74884414a239beb6e"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "66bfdc745ece4bb07bf0fe08e02236b633cd6e7ae7ffbef9af7052ff5dc9c6f3"
    "nl"
  end
  language "pl" do
    sha256 "b007005cd1a7ac3fe4459350ce702de0eacf9dfac71cb23e1fba52a2e50ba399"
    "pl"
  end
  language "pt" do
    sha256 "2946fdfcb25be379b2d81715d2d3a97a616d2bb229c26590473d999834eaa23a"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "c4635cc318efa138533e86b5c62cbfbb1ab14bda986ecb142254960914eb5500"
    "pt-BR"
  end
  language "ru" do
    sha256 "8f34b5c890770b40e7c1000fa9514ebe0ada6231d7377b25c3954ecb5715ee3e"
    "ru"
  end
  language "uk" do
    sha256 "53b0d7dedd24a6e2809f2e26da4ce18a7311522378fdda3bee67d5ebf739157f"
    "uk"
  end
  language "zh-TW" do
    sha256 "5f00850bb9c6470e264fdc1e804d55db070787c4d85e57164cc2cbe748fa7342"
    "zh-TW"
  end
  language "zh" do
    sha256 "39e2c8556c1645d521bd1af3b965d17b2fee3853c0e9b145390b54eb3accf49d"
    "zh-CN"
  end

  url "https://download-installer.cdn.mozilla.net/pub/thunderbird/releases/#{version}/mac/#{language}/Thunderbird%20#{version}.dmg",
      verified: "download-installer.cdn.mozilla.net/pub/thunderbird/"
  name "Mozilla Thunderbird"
  desc "Customizable email client"
  homepage "https://www.thunderbird.net/"

  livecheck do
    url :homepage
    regex(/href=.*?thunderbird[._-]v?(\d+(?:\.\d+)+)[._-]SSL/i)
  end

  auto_updates true
  depends_on macos: ">= :sierra"

  app "Thunderbird.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.thunderbird.sfl*",
    "~/Library/Caches/Thunderbird",
    "~/Library/Preferences/org.mozilla.thunderbird.plist",
    "~/Library/Saved Application State/org.mozilla.thunderbird.savedState",
    "~/Library/Thunderbird",
  ]
end
