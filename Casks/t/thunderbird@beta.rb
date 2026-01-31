cask "thunderbird@beta" do
  version "148.0b3"

  language "cs" do
    sha256 "334bee6dd0c59539c28b03aa7aede32d7bc2bf70f6260d88bfe77f110d034d2a"
    "cs"
  end
  language "de" do
    sha256 "ab8c74981e68b562c882f4cf8fc07139d4b160854ee1c96726017ecb3d61ebea"
    "de"
  end
  language "en-GB" do
    sha256 "07dabd73fb2ae75704bf6135ccb8c693246b2e39970682ca87faf6ca5e738411"
    "en-GB"
  end
  language "en", default: true do
    sha256 "79eed22a0e6a4b30cc117d9ea701167eb0c318c5013c8bc4730e0ee81ad957a9"
    "en-US"
  end
  language "fr" do
    sha256 "fcc78ff777c549eade81f1a14f6dbae9b75def7704bc113758da2b7eba38a4cb"
    "fr"
  end
  language "gl" do
    sha256 "975805bb0ee2eef7b3778c21c299130751800099f3250e038f24816b966b9ecf"
    "gl"
  end
  language "it" do
    sha256 "c1b59722ce77a6fa90e8bffa4a99a663f67c14afcd6e8ab1f18d0cc8150158f9"
    "it"
  end
  language "ja" do
    sha256 "2cf6025e8e0f3616f0761ea5f8bf9185d2343f1d837d7e87849908fc0237a13c"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "6365b8fc90192c57a7293862d42d4b776d003cdb8f0a090f8c2e0910cff00f93"
    "nl"
  end
  language "pl" do
    sha256 "9da08810117f3cf2a8493585c059f35f8e614aa4929d60371ba846491a43e7b9"
    "pl"
  end
  language "pt" do
    sha256 "a8fa327ab856dfec0b0d774599c9604c4a476f14be9f5e6b595f96fed9133d8f"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "3210bfa4de08a4554d84ba2fcd0e4ed5d484eba9bfa7612eeebf5a9f09f6ee67"
    "pt-BR"
  end
  language "ru" do
    sha256 "c80c6aa85f35f0c860229effdf0153a50c211005e69dbe0ebaa32f80334eaa70"
    "ru"
  end
  language "uk" do
    sha256 "b54a8587eb5a0e35b015fbabd9bb9ddd5a984beeb2b6ccfffee2fb6df57e8325"
    "uk"
  end
  language "zh-TW" do
    sha256 "206a7771ad68587fcf01943880c4bfd3afe626c8ec8f81fcf3215acf61b08cca"
    "zh-TW"
  end
  language "zh" do
    sha256 "3af5e17a8f24304b9116b9381bcba665962ad22ee85743f04bed6651690713c2"
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
