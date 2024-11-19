cask "thunderbird@beta" do
  version "133.0b5"

  language "cs" do
    sha256 "e3559e49b27c1c860807e83fbf6ad834bf6cfd4b486bbe19bf8409a9398c3d97"
    "cs"
  end
  language "de" do
    sha256 "bcbba870ab2ba7d92a6cf75fd7067d1346ca4a3f61e0d5a598cb153850dc652d"
    "de"
  end
  language "en-GB" do
    sha256 "8417bfce54504120aaf568e3b299af393edc7bdd5ff9bf75805c5ce3934f9c07"
    "en-GB"
  end
  language "en", default: true do
    sha256 "d08c4eb4c154c24c2ed7189292e2978c87bb82ae231ae2c88f494f724b36384a"
    "en-US"
  end
  language "fr" do
    sha256 "bf02dcf0bf615b489eb9748f8e24c1fe109135c7b50ded4eccef5c30e929b0c9"
    "fr"
  end
  language "gl" do
    sha256 "58976ba41c773241d66107f4ee89d7ede999c56fb4ef67e572c9ca63b50fdf93"
    "gl"
  end
  language "it" do
    sha256 "283ed56b207844bf02dca12f6711e373810217dd66c28d6941b3695cb34aafb4"
    "it"
  end
  language "ja" do
    sha256 "3b520d4543c311659907c8ab084f2e84c37f6ae6dae5e536595b10bdf4dcd583"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "a456c55ee7e85d3d0bb97917ada98fd5d930ee3db7b0329deea8e72d9cdbf071"
    "nl"
  end
  language "pl" do
    sha256 "261c318a31314861287f0ccb842fea696cca0c8f20aceea3770e9ace2d14cfb1"
    "pl"
  end
  language "pt" do
    sha256 "29a4e1b96ca584a98b43513e7a5fca527220c71b8447c403990e845a752be2d6"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "0d486432e50a57789a12c35a04c063f7d5c12f8a561a3c137d6d0acdfd763485"
    "pt-BR"
  end
  language "ru" do
    sha256 "53c88bfca49a783e9d035663681e2a3eb925dd27eb9e9a0185528ba8f0131b9c"
    "ru"
  end
  language "uk" do
    sha256 "2fe39db3c4708224d04f1b6ace0fcb781b77db4385a0842fce1d68c5af807d33"
    "uk"
  end
  language "zh-TW" do
    sha256 "0a86e40787506c3689553e1c8b0d421baa755e28b7d1abef4d518f43471461f1"
    "zh-TW"
  end
  language "zh" do
    sha256 "20ad21eb1474bad650b98474725bdc2eb71c4f89cd3e17568feb7fbf539255c0"
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
    "~/Library/Caches/Thunderbird",
    "~/Library/Preferences/org.mozilla.thunderbird*.plist",
    "~/Library/Saved Application State/org.mozilla.thunderbird*.savedState",
    "~/Library/Thunderbird",
  ]
end
