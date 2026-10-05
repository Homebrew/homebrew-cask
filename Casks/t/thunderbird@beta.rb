cask "thunderbird@beta" do
  version "158.0b3"

  language "cs" do
    sha256 "307348cc7ad25f474a26b871a8897c207217003417148277ed2afaee2b586135"
    "cs"
  end
  language "de" do
    sha256 "880911e94e0ab57c8355810d87c0cbca39399312d707f076ecc2f72656d6d9c9"
    "de"
  end
  language "en-GB" do
    sha256 "e70fe29a906bbcb25a44b9f48a41858da97f6397aead815f06d7d651aed241f6"
    "en-GB"
  end
  language "en", default: true do
    sha256 "80593623dccc504c54a7a5a4c89a8feb38bee3d02e18b3d1947064b0fddbe23c"
    "en-US"
  end
  language "fr" do
    sha256 "55b734e904adc30613fea098c9428b9f5ea3267b07abdc4370a48c72c2372c2c"
    "fr"
  end
  language "gl" do
    sha256 "0a6affceeb736368a736d7bf2a868a23696923bdc0033284a9dc91c342a0a5c3"
    "gl"
  end
  language "it" do
    sha256 "5eec0eedea37cf91f0bc2f9951d525063547ffa85ff228d1690844e476e25a89"
    "it"
  end
  language "ja" do
    sha256 "b8a053d7214825ee32e4c0d3f034fe760e1b71babfbae2cda8756e6846db2411"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "8628a435f5dffb502ca1ab145a7cefc090949d823c33153df10b60eff1d9eb7e"
    "nl"
  end
  language "pl" do
    sha256 "ae9caa14871000aaad78a16c85ead4fa69001664f5c57038a25008e52f5a223f"
    "pl"
  end
  language "pt" do
    sha256 "217070bbe529b223b98fabd6fc36cb0645c0589d46811be8be680208d8ce7ae2"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "53c53836fac1646fed4e25703637f54296e640d643316d8cd3c59113f87aed30"
    "pt-BR"
  end
  language "ru" do
    sha256 "0d9932a8b0d55b57ee66fe252ecdfd4a543fbc11445e732ab0b99c44d8164819"
    "ru"
  end
  language "uk" do
    sha256 "2340293d6969d984cdb47722b1f3d48cfde29fe04eb35059a27597049cccd117"
    "uk"
  end
  language "zh-TW" do
    sha256 "26a3a853b5e86345428bdd3905bd5f611aec95f3782e4dea0482a2bbd26b4075"
    "zh-TW"
  end
  language "zh" do
    sha256 "9b40886283e18acc2d5f1a744335e9f9a5418121a4c262bb7bbb19adf6ec8990"
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
