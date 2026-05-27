cask "thunderbird@beta" do
  version "152.0b2"

  language "cs" do
    sha256 "ffb7db6b08b178affd5d72a477dab8b333206136bcd3512e92b67210f5262fe6"
    "cs"
  end
  language "de" do
    sha256 "e38fbb88ff191c83fd0d39ad531e554615319b98087e56ad07939fdb6d0a93b1"
    "de"
  end
  language "en-GB" do
    sha256 "c524370b451587c1c8ecb083f619ec701ed68dddc0773ad3522b7536754327d1"
    "en-GB"
  end
  language "en", default: true do
    sha256 "dc1b0a557fea26bf9823d576d8951fdd563fe10489026bec1ee4b8bfdc14cd0d"
    "en-US"
  end
  language "fr" do
    sha256 "12cc2a91657d8fceeaf357a4f0ae12f6dec04388e3a17bafe0980149287eb1d3"
    "fr"
  end
  language "gl" do
    sha256 "90dbd167951d1454e0d44c96f8d7dd0e768f95fe7abf27dfa0e6f97ea22c7f4b"
    "gl"
  end
  language "it" do
    sha256 "7f188406a0f578563eac01908a66e42402491ea8a037807bfe38750cfc0964e8"
    "it"
  end
  language "ja" do
    sha256 "fdb0fccccf69955a937129ade0a8214ca5e49653abc65165298bf0243721fd73"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "6b04fabeef7d936fcd5ec5b313b52f731b7aff9eebb48531edf70d864ab76a9a"
    "nl"
  end
  language "pl" do
    sha256 "eee976b242b55c092f91ca0dc55d4e3b1099cdcc0e182f1b62621f343a3cf2c3"
    "pl"
  end
  language "pt" do
    sha256 "4966b3f714d382ba352f11ceaac5727c0c90775bf910173b0e208c0b0a93c0c1"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "beebe48b8a99c70a7dcdf2de9ef82ac2a9f80b6b768fe6134d4291b5ef9b900b"
    "pt-BR"
  end
  language "ru" do
    sha256 "0413a7f22902f93e7fb45478302b433aa869c7706e2cd134bfd2c776ccec19db"
    "ru"
  end
  language "uk" do
    sha256 "77e10d6d5bdd735d5bebadfbd29be550bc5c24ce24a5b13d37e8814fb2ae35ef"
    "uk"
  end
  language "zh-TW" do
    sha256 "1cdf0c2fffd49c5bf7beac646c6f5004c77fad6e759a051cf5089d8cb9e0239c"
    "zh-TW"
  end
  language "zh" do
    sha256 "6670c40bfd6649cda16012a024527431ebb7d913cc51b81a7718b954e745aefb"
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
