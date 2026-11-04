cask "thunderbird@beta" do
  version "160.0b4"

  language "cs" do
    sha256 "ced870b92740ff9e03f5f39b48b6e6a3c24588c292ee142fd68928e57a03f9ae"
    "cs"
  end
  language "de" do
    sha256 "2eea1f77680e11ac66020765bbc80d2365148dd80104a5bee96752685d1e1064"
    "de"
  end
  language "en-GB" do
    sha256 "7dc08aa70fb4cffd4685f9895f379c012cdccf15af513449c59a69fc720cceab"
    "en-GB"
  end
  language "en", default: true do
    sha256 "c6dcd648125f780789b6c9f575eb66860ec8cc9cb14400958de3465d7664ddf9"
    "en-US"
  end
  language "fr" do
    sha256 "f519dc424b7e6daff92ba7c09e0267c5b1c1908e8af768b3db307d48279170b1"
    "fr"
  end
  language "gl" do
    sha256 "6d92f937c425acb5de86af56d0048df68346ab9285dfd6069b0d56ae6abbe2a8"
    "gl"
  end
  language "it" do
    sha256 "b3120859df0e048c4f0d2f058d1918946f165a8719a77fda2d7146557388fd4f"
    "it"
  end
  language "ja" do
    sha256 "50e8de76aa1cc041ec187ef5d831be0fa8eda41e80de56be8397b0df56933d8c"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "d0c05f0aaf3e1af74a6570251b2262e78f7608302541c0c7f5ab314c234ed85a"
    "nl"
  end
  language "pl" do
    sha256 "1b2227d5a66256174657ba367c2b82d875e4520b6beee590ce14ecd88d089d7d"
    "pl"
  end
  language "pt" do
    sha256 "0e2cf38296760d969ffde59a491b23e4c8a54637601f9267cb9cafcfb4a1dc46"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "8175e9e86b6aca1533893f84f20be874c2df58e17ce9a36933d8a529c3908df3"
    "pt-BR"
  end
  language "ru" do
    sha256 "3d1b212ba7cf6a93f058482b52e4e5ce4ae3597bd280a9d50135dcbbb5f059d1"
    "ru"
  end
  language "uk" do
    sha256 "8d334fb1e562428f8fced5d6f5d95faa15794f29acec0c990cbe5a2a42c0ff4e"
    "uk"
  end
  language "zh-TW" do
    sha256 "e1f542ca4d075c8cd5d48fb34b2b6d99be514c97d39eee54297e3cbcb6812643"
    "zh-TW"
  end
  language "zh" do
    sha256 "f088eb2fc67de464066a1c6abab09237cd8e031c199bda4be22157006c8af32c"
    "zh-CN"
  end

  url "https://download-installer.cdn.mozilla.net/pub/thunderbird/releases/#{version}/mac/#{language}/Thunderbird%20#{version}.dmg"
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

  # Sometimes different languages can serve the latest beta version as Thunderbird Daily.app
  rename "Thunderbird*.app", "Thunderbird Beta.app"

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
