cask "thunderbird@beta" do
  version "134.0b1"

  language "cs" do
    sha256 "98f3205d3e774b54df8c3a0a875e51154883b27528e6e5de8e59b324875311ba"
    "cs"
  end
  language "de" do
    sha256 "46fffe418f76ae0559c6c19b2523af30847af44090b404d9567390b0dd27a59c"
    "de"
  end
  language "en-GB" do
    sha256 "89a1192f6c03d4de40611f554d094d09d7fccd6f062f46eba3e5b4721fc98588"
    "en-GB"
  end
  language "en", default: true do
    sha256 "687556ce925fd80c5b2c9f670345f0512850f5d231b383811685429564fad57d"
    "en-US"
  end
  language "fr" do
    sha256 "9d97cdf51e4811e5710d19949579052fa44bc3989e541b2a7b3fec8081486c96"
    "fr"
  end
  language "gl" do
    sha256 "bdf6e4f3a483929ba3efabbee6f09fdc25a39a520cd565a1742420626c5ec4b2"
    "gl"
  end
  language "it" do
    sha256 "89080e79a680452c16bd8d03cbc042776697b46763d37ac588f7c50ce2a23821"
    "it"
  end
  language "ja" do
    sha256 "f11c5f4fb42b311f0f95b4dd24af718ba6c79e6fdf31cdc624c4cfdd6667fdec"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "456d8f74249302085c1e026195282cf25a392435e74386557d31e0f6d78758f1"
    "nl"
  end
  language "pl" do
    sha256 "1423ac3edb7f8afd2e748cc3d8e7c10f6fd9e9aa3087bbc62f09f521afe2e283"
    "pl"
  end
  language "pt" do
    sha256 "d6d2f14ca886feb68726df9a67ef126ee5453e0540c5ef9af9e561d5ec0bc41e"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "c4303290a0c884122fcade2017b780042023eaae3b755013070ff8460537e00a"
    "pt-BR"
  end
  language "ru" do
    sha256 "ad4bddb787ede394ab8c77bb32f2ad11a089aa96ddbf406534ee5f8d8d9bf7c6"
    "ru"
  end
  language "uk" do
    sha256 "51f78fcc40f6ee77b3a5fe76d566c29c3a75c32779dcfebbd5c9f2aee35dc7eb"
    "uk"
  end
  language "zh-TW" do
    sha256 "1826ab748645e52dd19141f15050c42edc2f479e53eed05ffe1a282b586e3653"
    "zh-TW"
  end
  language "zh" do
    sha256 "97d1cda0f9f2f8b2925456df3e3a9e57a453444028c8d1f4ee44b16642d77fb9"
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
