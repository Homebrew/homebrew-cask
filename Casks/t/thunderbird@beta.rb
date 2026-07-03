cask "thunderbird@beta" do
  version "153.0b5"

  language "cs" do
    sha256 "c01670f2f1f64595bdb6561cdb9be0b19d4da54460c41ee4fc748dfbc42751d1"
    "cs"
  end
  language "de" do
    sha256 "bb9dd41c44be1075fd619acd7872f7f8d521d64d58d0665b351259714d5f5143"
    "de"
  end
  language "en-GB" do
    sha256 "f6d4dea05a7797cc03fe1b67fb69156520e2c582188ab956f64efa968a44a03b"
    "en-GB"
  end
  language "en", default: true do
    sha256 "ad22747a26440ae73b0250a9d4f4009586b9edad0d4c274f85c375e2ebdc8bd0"
    "en-US"
  end
  language "fr" do
    sha256 "d5676f9b766628aa2aa8e3c187cdc43534e51b2575942121667bdf1a1c1e0d34"
    "fr"
  end
  language "gl" do
    sha256 "38187e9bf2c17d60c144dbcc876ed8b31bff7a3e6e60e7efac0c031fb5a97a6b"
    "gl"
  end
  language "it" do
    sha256 "d21f5d59410ed0600741ad5015f63cf554b9cf8993bb25bfc114dcbdca07e17c"
    "it"
  end
  language "ja" do
    sha256 "28ea0f686c124bb3ffe2122686d61bb62728ca73b4ff4ff8caa82d1e1cf96464"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "6f07d9250ed9d0cae40d750a1c661606e7e2cec934028ab22eaa519c39b8a9d4"
    "nl"
  end
  language "pl" do
    sha256 "17d93eec538ddc44778f713b6fc5562d4655fbe6e633edf9995c72f8407c794c"
    "pl"
  end
  language "pt" do
    sha256 "d7f2e55df31d7cb1a230d511c050971959242196663f167284b4eec95a4bef82"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "93ae9730ea394c211b01e55c539a79c7ad75ad4e9d071e3df40e583ee5dede8b"
    "pt-BR"
  end
  language "ru" do
    sha256 "2609870aa920885ba8512753bed71f72b337ca33cdbcc6c8f70ba09a1ea68314"
    "ru"
  end
  language "uk" do
    sha256 "51a70325efc0b18b15ed8a0cb8b77ab51c35c0ebe3d1ffe33a7f6737684f92e0"
    "uk"
  end
  language "zh-TW" do
    sha256 "b30b256baf5b88449f1ee9a8d4e3c4330f526fc50398e9b6934173e291c76be0"
    "zh-TW"
  end
  language "zh" do
    sha256 "0e4377010f7515a5e381fefa29aea9574ad1e36f9abce124ffba9c9c981cd3db"
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
