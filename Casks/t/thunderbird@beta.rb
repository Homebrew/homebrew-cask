cask "thunderbird@beta" do
  version "155.0b1"

  language "cs" do
    sha256 "f8db655e22257fb9b7606a9eb2a33ec4fd961e5cef2fb1cc8138afa2e833d99d"
    "cs"
  end
  language "de" do
    sha256 "9235f98d81560984e96e42b7168f13bd6f51c819ad669a6f553cd00c0fe5f184"
    "de"
  end
  language "en-GB" do
    sha256 "15a98fc2e908d455408648d553feff2edac6b1e214d199e058160b14baa87f3e"
    "en-GB"
  end
  language "en", default: true do
    sha256 "99c1028df0a8e8e21718a51c3e0d6d676c5ffdfe488e2ff1bb79ca08cd5726cf"
    "en-US"
  end
  language "fr" do
    sha256 "aeb92b7629f99d99e5ea51212e60144d610c469e8810a12d3c3cbd3f71409b5e"
    "fr"
  end
  language "gl" do
    sha256 "eb71de2091df017226eb6af026a748b5dae6f630400e54036a1576e22a89bbf9"
    "gl"
  end
  language "it" do
    sha256 "a74932a079c2f1f0c039b1527331041c5c2871af11f38aed1bfb4f19031e67e8"
    "it"
  end
  language "ja" do
    sha256 "41d3550acd6e0387b6c62ed18d804d7599ce11b64d5f2d1cbd4428463bb486cd"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "3d3ee3fbadcd5be5e84b0a0c2b290479400d384df7d3c35fe9a276cf38efe920"
    "nl"
  end
  language "pl" do
    sha256 "ef2453e7d1708b47807ae04604136153b80ab6e19908a30f1b70e2a1a9bd0931"
    "pl"
  end
  language "pt" do
    sha256 "7a9bf11b008ba9f62e9a36adf98a3c47f99e359fffc7b05ee1bc53ba002be17e"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "dcc5a3ffd92239bcb604783ae31385fc212e3acddafe79cea28a00edf8a2ff37"
    "pt-BR"
  end
  language "ru" do
    sha256 "6d646316cd46301fd7ec633d18673a331e3d451c20b76589622e4fccbd628cea"
    "ru"
  end
  language "uk" do
    sha256 "92bf214191e6e1aaa9fe42c7de47dfd10a123d2463de3b040937e20098a522a8"
    "uk"
  end
  language "zh-TW" do
    sha256 "699f04b1e52c448f0979a7c962585bda3dbb9e1ddca3c93ce7c9d438f607661a"
    "zh-TW"
  end
  language "zh" do
    sha256 "eb15045ff18ef7c327befa17ea6543d544dc39cf218e7cadc2982d538ed40a4a"
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
