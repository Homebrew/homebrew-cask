cask "thunderbird@beta" do
  version "146.0b1"

  language "cs" do
    sha256 "bc1f23b9e0c7d154345bbc91ad30fc44736fbeef97564ca86fea6dffd9a2c3f1"
    "cs"
  end
  language "de" do
    sha256 "62ad44913bd5469cea2170626f506bd3dd8f14e3035aa4debf8c8e0410980210"
    "de"
  end
  language "en-GB" do
    sha256 "22722d8984849b1e15f390f7b3728c58238a01585b96ff511ae496ecf1f6d001"
    "en-GB"
  end
  language "en", default: true do
    sha256 "69ce4ca943dcc47dd2c23304e1f26cbc1d6165a19f1bd318b846f3a5087773d7"
    "en-US"
  end
  language "fr" do
    sha256 "5956108ebdacebbceecf1e8d1e36a09cf92b1886d6253604806075712662decd"
    "fr"
  end
  language "gl" do
    sha256 "5244aca4d0760e38063806a5ec362423717b54d421352bcda1be706e355a583a"
    "gl"
  end
  language "it" do
    sha256 "1c1fcde95539c80b5a150d7422a02d7f0870f126c96fdaca8dfd49457aa0388e"
    "it"
  end
  language "ja" do
    sha256 "bfe487402ccf6029d6a08d4eced4655f2232de1b1db3a588b2eba8a8f97bb3eb"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "2f1b449a571e537549368e59633170d8e39be86dd54ffc82004d985f53791a78"
    "nl"
  end
  language "pl" do
    sha256 "930a737cf8c2976962dd8e36e79720d9fe14452bc465a615e7778f2662f2e978"
    "pl"
  end
  language "pt" do
    sha256 "263770a5eb60674bc2c73b2655c33e31ae125d03e5e04ba908d39262cbfd8401"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "984ae069253458797b74cca457cedaa613a7604f64012e0848cd6a40d1dea5c1"
    "pt-BR"
  end
  language "ru" do
    sha256 "74c7243d534338b33bc25b8b6213f30396d5f2e31f7214bf4ee5a9b44c0d0021"
    "ru"
  end
  language "uk" do
    sha256 "8ae82638fdf0efadfb939c3d0317b2df1fde170a86dad3fa3d29fad8cedb29e5"
    "uk"
  end
  language "zh-TW" do
    sha256 "56d691ff19755036b66c5c951606f511ccb313b6568b2d441c503a4eb78a93ed"
    "zh-TW"
  end
  language "zh" do
    sha256 "4c018c90a267a3533e2b72121dc1a229d054f6f4036865726569a98c528a8474"
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
