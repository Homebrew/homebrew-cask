cask "thunderbird@beta" do
  version "137.0b2"

  language "cs" do
    sha256 "c270d153736fd24f99d8f2ee6eb1229b15253fe2d04f1e5eaf3c91241c9c3db9"
    "cs"
  end
  language "de" do
    sha256 "d915a9e2d34abac2b99f2c33a11bd451d5f4e109f83a1b716e5ce007f51ffed8"
    "de"
  end
  language "en-GB" do
    sha256 "3157f7e25f44d30c88b58d8772b56e8cf2e3d10db0244008ab5a8e665dbf0323"
    "en-GB"
  end
  language "en", default: true do
    sha256 "e0b431a82a0544057a440026514258a1f067aa4d70e1e53e1bfcf1aca9b80547"
    "en-US"
  end
  language "fr" do
    sha256 "d4d629860b0c8f151c45bf109d2dbdaafdd97d4e72a4855e10948a733c76e31e"
    "fr"
  end
  language "gl" do
    sha256 "a9fc3c5b2fd25fca73fd16b22b7aae6aa38e5b97a16821f534f85f22b6d8099f"
    "gl"
  end
  language "it" do
    sha256 "d1c6d9a687e9547ed73a86274606f43978de48d670eb13ead94a20dbbf049ddb"
    "it"
  end
  language "ja" do
    sha256 "5bb42c737a215d6c8d26b2f4c4ca11dba75066502ec2df21f2a70cd56fe3f76d"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "5bed58533020611683e90a861413130f33b3916482bed4a4e73cba9f96ac3642"
    "nl"
  end
  language "pl" do
    sha256 "307d8253821f57c2b6ca19145a910ac0c2700510957690806805d9792fba262c"
    "pl"
  end
  language "pt" do
    sha256 "718f88a24d670041779e910c7cde95add595529a3a362465c99d433360c7d98d"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "b7e1f474348b6aaccfdb10c40b0e81970790bc9a6a1f96329adce34e77c9133f"
    "pt-BR"
  end
  language "ru" do
    sha256 "eeebafdbfef0544efa03b87a6618c6a951000ac1b9cf102d4a0454c4845b596e"
    "ru"
  end
  language "uk" do
    sha256 "1f4714948cbc717f914a6899bed167deae5f75e670f34f8d0bbdb0c15dbe13d5"
    "uk"
  end
  language "zh-TW" do
    sha256 "a6feb5c4a36f3518c1303d7c9ad1240e8162733218abbf60b0a88dac05b59079"
    "zh-TW"
  end
  language "zh" do
    sha256 "368fe44e9673c2bfbdefd4b4644bfbbb48bd7b0649ee070e92a8f643082a3a0a"
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
