cask "thunderbird@beta" do
  version "146.0b2"

  language "cs" do
    sha256 "db8a8c8a5006153d735574a630962afa1cd58c58f8f188f22cf8510a192ec1fb"
    "cs"
  end
  language "de" do
    sha256 "30d9361bbd222d58c899926992806479274cb59045954db45956f35804e8e73e"
    "de"
  end
  language "en-GB" do
    sha256 "43693055372643f4f183105d75c766055658f4fc07a0520da563bfd33614349e"
    "en-GB"
  end
  language "en", default: true do
    sha256 "70912f8f30663d942caef124091793acb1cc9b2b591510b005021200009e89fc"
    "en-US"
  end
  language "fr" do
    sha256 "e2660616af2ff833032e84ba659c2ed0a2e28e3880c14ae52d357046adc8badf"
    "fr"
  end
  language "gl" do
    sha256 "a16de44ecf6f37779031f2de6cc4ca4a0d59a59982d141d309ef05371f674767"
    "gl"
  end
  language "it" do
    sha256 "ae5de2676b873d73f9825be2b92e632735046eb7db6ee5d48f55fd380ba1809d"
    "it"
  end
  language "ja" do
    sha256 "95dd8dd7332c0ef8a69e3ff3247e6b12176a6e40eadc5bb4ae8c6a9707e37d84"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "ce590c6b5fa5fa603551d66b3d5c44f0dc2578542fcefae92bbb2d5acc5cb488"
    "nl"
  end
  language "pl" do
    sha256 "86faaf5fec40a46873d590c5c1cf7b9cb47577fb2b4340941112894cc9417aca"
    "pl"
  end
  language "pt" do
    sha256 "5e81fd318933ea0533a05730d695f1fae7dcf6b8293976a72ecae98b183acab6"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "ad6c181f1230567e4fb5dcfc62f47d18eb9070c03841e275bd88166bc7f2bd38"
    "pt-BR"
  end
  language "ru" do
    sha256 "590bc2522818355f08e75ef5598e7405fa0cc39a6fbc606550c840615b8350ee"
    "ru"
  end
  language "uk" do
    sha256 "8f58397ffe9a823f17a205d46f4a430e551107eca1cc26c2a81b84696670d095"
    "uk"
  end
  language "zh-TW" do
    sha256 "3a14a6aef9330f4306d053918751ae1711f99d287f8fcc90a88ec4e6cc52970c"
    "zh-TW"
  end
  language "zh" do
    sha256 "2c123a592c6ae704871a6d6cda38c3bcb1422fb1e5302180f7d342061f2ceeb7"
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
