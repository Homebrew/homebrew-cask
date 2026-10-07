cask "thunderbird@beta" do
  version "158.0b4"

  language "cs" do
    sha256 "7925300f848d9743971448196628f88a9b99b7075a8f9644d3c8eb62aa928449"
    "cs"
  end
  language "de" do
    sha256 "d6c4ff829e3802b0e0cb16e91db3666536dbdef01ca35f541a2f8e4318808d98"
    "de"
  end
  language "en-GB" do
    sha256 "60aa19ad132fd4b72228ab74a1a240b2e09eeb6e159133715c3b7783adc0859f"
    "en-GB"
  end
  language "en", default: true do
    sha256 "650c7fb6efbb3e86ac3a98883d36b6ef99e6214c106d6b9925f610eb284662d9"
    "en-US"
  end
  language "fr" do
    sha256 "db0fbc41b8462ac3061ae0d1210ab1d36371bcee8f15d4fc1bd4709a6496a4ef"
    "fr"
  end
  language "gl" do
    sha256 "52f59f7ffc5e94693657eab242a70804ce965419fff645ed75ce5ec20f081586"
    "gl"
  end
  language "it" do
    sha256 "72786b66fbecebd56a4282074a59a190b92cb3d7a22cd70cb6d4768a2db427ab"
    "it"
  end
  language "ja" do
    sha256 "ba824ea5fce547c66c40f280308d0ad56dd60bc005ead3268ac46a98a8bf2fb3"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "cdefd5afbbc1a1a997cb6d02851e13ee4bbda2f3f35d4600f6456b2326e40fa1"
    "nl"
  end
  language "pl" do
    sha256 "8312489020d41f848aff3c68b3c1179fae8f8ce357e249f716064bb0b0cc96be"
    "pl"
  end
  language "pt" do
    sha256 "277c107aea61512a99f00f875aaaebd60d448475fd76c9bda15cbe9200a2ec2f"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "d9fb8bef63b93c45accafb0763d03def8512c24d252e642db58a7651b603af40"
    "pt-BR"
  end
  language "ru" do
    sha256 "45b7ab7ba918f87d407924763cd033a63c002378d7b23f7640a47057e61ef4f3"
    "ru"
  end
  language "uk" do
    sha256 "e185b0a7ee29b8a6bef12db9c253a81b85c3f8f163b7b02f9e8915472e5173ee"
    "uk"
  end
  language "zh-TW" do
    sha256 "004ee9306dc20ba59889849051246ce010842f54590726192503c0e8965427c9"
    "zh-TW"
  end
  language "zh" do
    sha256 "cf370e9a2e7b414305bca70ceabfc0552036ab57759394e206fc7a7394692086"
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
