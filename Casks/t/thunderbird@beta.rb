cask "thunderbird@beta" do
  version "143.0b2"

  language "cs" do
    sha256 "9b804ba6fbd2d446e4b71023bcdb01d516a97cd5beba00f40a4633db97068a5c"
    "cs"
  end
  language "de" do
    sha256 "8e8d71dfe1103d0b80299ca66a3f2418e9f8df2eab12db236c0dbc39881777a1"
    "de"
  end
  language "en-GB" do
    sha256 "25cd4ca2218301935930c3785b70b2c306a904a63e203bc722c7c31954c8ff1f"
    "en-GB"
  end
  language "en", default: true do
    sha256 "99530a7eec3682fb6f92ff59d810adaa771210c2ec17a1001a3d4b76f8700902"
    "en-US"
  end
  language "fr" do
    sha256 "0b76c2bc8958063dbc9fef32572326ad2131bf13c5110bcecc28637e07ad5fad"
    "fr"
  end
  language "gl" do
    sha256 "27b7a9c21ed71bd3dbc1c762c647321fc36d1094c2606f93aebe553a15fc2fec"
    "gl"
  end
  language "it" do
    sha256 "74910618c8d00ca5c86c3691c6d5d26e86c849e11be5788d677fa06333df748e"
    "it"
  end
  language "ja" do
    sha256 "243336946e0675bc5871bd34b711413c9c97c474545358b96b7165ab3b8b0022"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "e61a7a4b8405dc4f59c506c49aa9533bfd7938a1c95a2dbfd963435e50660b3b"
    "nl"
  end
  language "pl" do
    sha256 "322c3c1aaae08d2ad8532f8b1d187ef4b917ca38cbdfab876e5713b91b0c5156"
    "pl"
  end
  language "pt" do
    sha256 "aba36d3e29990565f9ef5acbd49bbf615d9fa289d40841577a1826b4257ede1a"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "26698ea4da30bae078de38ef2e170cf97747cbe185ac4233d4e41691bd66b960"
    "pt-BR"
  end
  language "ru" do
    sha256 "b06609dd2d30e05e02d5f35556936c1deb090b20c236a0628f89a0e359513c8e"
    "ru"
  end
  language "uk" do
    sha256 "644b2e7b66c368cb529e0b08eb90ff437906cf8b0bc104542d8e4a95877fbb12"
    "uk"
  end
  language "zh-TW" do
    sha256 "b401cc61030bfd1f39bc441d7cbb3f6cc93c0c7d7935c0d56ea19439865fc47b"
    "zh-TW"
  end
  language "zh" do
    sha256 "b2401c9376a46f6264f00eb35f70b75c9ce5e06e288b5ae1e0b950983e65be05"
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
