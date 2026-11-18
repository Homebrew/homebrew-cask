cask "thunderbird@beta" do
  version "161.0b4"

  language "cs" do
    sha256 "9ba5a4636428cdc8a54fb720c87bfec5d9a8046915eac8cc6e747d8ee1e9839e"
    "cs"
  end
  language "de" do
    sha256 "ac3bc52bb724737ce3417728cfd4808fa22d3da7f80eeacab57cbe3dff15c55c"
    "de"
  end
  language "en-GB" do
    sha256 "ee92b69151a474671d05e8279158955a4e8666169fac7102e53c3bb5c08e2144"
    "en-GB"
  end
  language "en", default: true do
    sha256 "4512432236d5072b5d4a6138b6dda3edf097bc7742d584624bc4f5b75b2719ee"
    "en-US"
  end
  language "fr" do
    sha256 "a2a2aca3dd3e16100314a166bccf6905ca6c20c23756f6c3ff80f52159bac247"
    "fr"
  end
  language "gl" do
    sha256 "8e967a928bcb2fd635d8ed238d23e4a8307cbda1ac12eaa966f4995cc4a7a5e2"
    "gl"
  end
  language "it" do
    sha256 "865909d9961f3b1ad1f7afcac1cc3699d6a0aeada8bdaaf20e009211d38477f2"
    "it"
  end
  language "ja" do
    sha256 "ea45ca0116825fb6b468cee6df40fbe28d360d5320d80d166b4feeeb1683448b"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "85b9d8a7a63bf408cee930ff25e4b29c9318d2dc0291c42c599480e1847ec3ee"
    "nl"
  end
  language "pl" do
    sha256 "146fcba3e7a05ebbbb5b3e9381d5a24c13aecc2ce11b5e9e6eb9fa45c805cfa7"
    "pl"
  end
  language "pt" do
    sha256 "ab2ca145a56801e91c3a78cd3d9f7d4f714035b987594f8b4292edf14fe94d06"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "53367920fdca6ae63efe6f4b32ca511b790c8bce079a567c4df3d1bcf4b58e07"
    "pt-BR"
  end
  language "ru" do
    sha256 "8616cfcc299174c78a3a370210c88b2dfd46078e8010225f6e3ae614a73d8fdd"
    "ru"
  end
  language "uk" do
    sha256 "73fc1529fb7e292ef8d8a7ac08fa2d596c2498b925fc1247fd75af782475f741"
    "uk"
  end
  language "zh-TW" do
    sha256 "a42be69e277dab70f7eb88cfa5cfac1db86f23f8d2c790413d3742873d929f29"
    "zh-TW"
  end
  language "zh" do
    sha256 "ae848bedabf38a35fbc82b351cf087552904e5a29f4d2539f283313b53139d61"
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
