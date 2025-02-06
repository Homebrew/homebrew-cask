cask "thunderbird@beta" do
  version "136.0b1"

  language "cs" do
    sha256 "3ba44329a6c095f8f7ef16cdbe0f2d7a20af5a1067be1e5adbc0016c3b0b8fe0"
    "cs"
  end
  language "de" do
    sha256 "7e2b0f34056be3a4fa880968cdb55560e987e2a4da81a842edf3cdfbd0d728bc"
    "de"
  end
  language "en-GB" do
    sha256 "c77bfde3a1d00f1041ea55c41cf26a91b98d953b0e04e1c99e44bbdc2ff8db8b"
    "en-GB"
  end
  language "en", default: true do
    sha256 "9dc98acf2482d9a2cfd256fc32e07fa2977cf2248f420a581fe41fd1bf1d7384"
    "en-US"
  end
  language "fr" do
    sha256 "d801c878a100f4fde52add091a48c3f15841a4d8a7f161e4e63fc1e7799b815f"
    "fr"
  end
  language "gl" do
    sha256 "74554343160566a3725e7466482fa851fbf46240172a3fa3fd5b7cf97b6159c5"
    "gl"
  end
  language "it" do
    sha256 "62e3bb0335ab2b384d310342cf406617db0bde2c8972a15dd8d4752684c6e943"
    "it"
  end
  language "ja" do
    sha256 "6f6bc4016f346ac195157ef53a1586a87b775a96ec3d545d5a83d53f8f354b74"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "cc93df050a7863029bef4b2035cb496166c016fff7229080e6362d846dfaa65a"
    "nl"
  end
  language "pl" do
    sha256 "863fba23c2e10946378f519b6edc4be614c6108ac414fff163ec17ef584a2639"
    "pl"
  end
  language "pt" do
    sha256 "a9003ee259f4973fa14c75475ce95374a1d0f9cf353fdf376a7efc7bb00f35d2"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "45b1180982005a05cfa8fb62ed840d1c632dfec545e7674c97992e915bff0b29"
    "pt-BR"
  end
  language "ru" do
    sha256 "cc51393e03cc032fb5ed413e1661f4daded300d0657166c7b3ff85c6a191ce8a"
    "ru"
  end
  language "uk" do
    sha256 "98227e62d97d46ddfea7ed1bb930ffe3c50244da08f0eba1194c6f93059581e5"
    "uk"
  end
  language "zh-TW" do
    sha256 "6b3a67caef23cd1e06fe3f4e6adc45a2727e109f1b1025e599b12623bf763b5d"
    "zh-TW"
  end
  language "zh" do
    sha256 "a56c3da8fd5b8eef93f97124b66e338d4d743c69473b3776b09741d3cb74e6ed"
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
