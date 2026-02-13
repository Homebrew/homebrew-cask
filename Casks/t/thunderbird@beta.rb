cask "thunderbird@beta" do
  version "148.0b5"

  language "cs" do
    sha256 "d59aa04be911c364a4d926a9d8d6f1672e220f218678928805958eb6b77f84eb"
    "cs"
  end
  language "de" do
    sha256 "59849533ae0b9785817325d7a463dcd28a9806f2ed6deb7e8f9969b7c093b1f7"
    "de"
  end
  language "en-GB" do
    sha256 "9f3ad585f26aa7d373e2c3747ff3f43c5e8630d03c5af13fe68167b8c91d88c0"
    "en-GB"
  end
  language "en", default: true do
    sha256 "29a4815dc61f342e8abe9b8e710317aa17e59843a849cef77094885ee0f341b8"
    "en-US"
  end
  language "fr" do
    sha256 "02297273d9fee9b1ff3077f232fb30f7f1374b6c906201fa2efa3716d5e2b226"
    "fr"
  end
  language "gl" do
    sha256 "cd5d75682d8a33cbb7a760935c1afafb2f7163a957f4f785835e7cbf0ed6f34f"
    "gl"
  end
  language "it" do
    sha256 "6d223f25dcc9e1cffe7fb7bd59fb7a6e0db2f3a68f6932605249ea415ac8924a"
    "it"
  end
  language "ja" do
    sha256 "9428ba4e6aac29e1cec46de6462b603b10e8a1a4a36e0590de216a8045cb6588"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "b3cbbe785b5adb2f385d72b951417795505c2e37c18a777f88e8c9615a36be9a"
    "nl"
  end
  language "pl" do
    sha256 "9bb9bcde870ca76137319b92ae815893c30a6b7d8e264116d63cae79aef39f0e"
    "pl"
  end
  language "pt" do
    sha256 "00a4ca4bd6bb3bfda4ec51586013b45aaff2073fab35c964a5c636c28cc23090"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "8654955ce187126d72c0d7cad2060511b9d4aa71e645c63b57175026c3ae78b4"
    "pt-BR"
  end
  language "ru" do
    sha256 "d4ddf254b427feed3821a98a0ff65c1f780204a0fca1dc9dd4ba2e3ac55b3aac"
    "ru"
  end
  language "uk" do
    sha256 "0c2c78e4bb964331912b1638f8315bbe6ae46e22f5ee1973b1fe98a415071707"
    "uk"
  end
  language "zh-TW" do
    sha256 "f3f413de48244df1cd62c9b988ca0b4e9163a69f510ab3147886c0fe5ad41247"
    "zh-TW"
  end
  language "zh" do
    sha256 "0a700074e994052c17f9ea620dd70d44e693cbc564e5722e1f061a9ce2bf557d"
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
