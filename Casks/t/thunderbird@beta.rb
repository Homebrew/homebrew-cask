cask "thunderbird@beta" do
  version "152.0b1"

  language "cs" do
    sha256 "b09a581a631285aa5379aa971f0c14af5597aafd2625e306ba9c106d3d519946"
    "cs"
  end
  language "de" do
    sha256 "ae52b6377661fafe6aaf2fde1f75b13cba5d6632d4225eb31e24c91c0ab5d415"
    "de"
  end
  language "en-GB" do
    sha256 "f51055f9cccc646a73fc4fc0b7d17fb4f3d5cf1a59bfb6c5bca92b88a07f42c4"
    "en-GB"
  end
  language "en", default: true do
    sha256 "37b15479b523a6c7032a01352641cb77e690207b66b5b555c5af9c3fe4447081"
    "en-US"
  end
  language "fr" do
    sha256 "5b67f69a538ed4315d6c8470739855f1108121b10266a833703d0225e9350250"
    "fr"
  end
  language "gl" do
    sha256 "4145b9eb66cc8cb8219f83c2ce1c7b77c18f4b7b6aed1c34030b9beb9df83519"
    "gl"
  end
  language "it" do
    sha256 "34bbe072338b8103f2aabaea479cdfad83515f306492ac26021f6cac8ca37f79"
    "it"
  end
  language "ja" do
    sha256 "ea9aa1c666babf25d5c5b570b804ff1f370115d40ab97d2c70254051443b769a"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "cfb5fc2104c4d62ad4d121863b6f8a534309b989ab806aeaf05c9d74de250ac2"
    "nl"
  end
  language "pl" do
    sha256 "555934374e4611a5e71f5fefc58095dcc220b8001bbe8548b52d78b18267e6e4"
    "pl"
  end
  language "pt" do
    sha256 "39ffed0acad0ff8a4d467e2ce37de44aac25c3a28adc1d636a7e1c6da2d423b1"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "f822828be9a4242ee7a915a23fe2c8a9fcb05f0e57fe1dd48c9a945e1ce63507"
    "pt-BR"
  end
  language "ru" do
    sha256 "ff6294c7809c696a9f4a7259a0118024bf58163567b62bec5f435b8d4f795867"
    "ru"
  end
  language "uk" do
    sha256 "6a2227863128e9a01d23eb2fdc9908de052434ed3172e4db07d074ddd0b70b96"
    "uk"
  end
  language "zh-TW" do
    sha256 "b539ab449675e60e03df636eeb24f47358822e9c5a7f6f4c6f1f597508a61d68"
    "zh-TW"
  end
  language "zh" do
    sha256 "adebe109b6c531236155ad5291baffc3f06f6b69dbf060e5e7bfc31a35f495c3"
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
