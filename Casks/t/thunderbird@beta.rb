cask "thunderbird@beta" do
  version "160.0b3"

  language "cs" do
    sha256 "9d5d4ed44740fcca39d772a7aa1904bdd25c73b8eefef7226e6f2630423fd53f"
    "cs"
  end
  language "de" do
    sha256 "8ba755d97bd39fb04a2c34d6db8ae657b0075e7efc6038c2412da6812e2d5568"
    "de"
  end
  language "en-GB" do
    sha256 "6ddbcacb15fb47885389973420318a6804347393d8ca43bd0ca8621fc27f21cd"
    "en-GB"
  end
  language "en", default: true do
    sha256 "d5769bd9af186b3e716dda309cfacb3f585c242692c25a6d29c8d82964bc3544"
    "en-US"
  end
  language "fr" do
    sha256 "e22dab3b7b32c23ba61ad2bf5e88161dc30292d6b5d3c26b818870c839481082"
    "fr"
  end
  language "gl" do
    sha256 "3b77eebd6000075c6c9512b5b33bdbf4a3fa11469bccd7f2730a977971e71db2"
    "gl"
  end
  language "it" do
    sha256 "e7d79306df78a213b50e5d1a8f2942b390f2e29a9a553216422b0600aa99e42d"
    "it"
  end
  language "ja" do
    sha256 "f9604400a3e34a442d01c74ccfa41a79e4b12b917a65f682a891fca77b936cd4"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "207d0bbfa2ac5d27f583fb28fd5084387a5d5a814e3a9e28d21b32c454dbb10d"
    "nl"
  end
  language "pl" do
    sha256 "0f97ca1d240e1b066d168cfe0c75ecd886fe16cd3575fa6e15fae4dd48f0808c"
    "pl"
  end
  language "pt" do
    sha256 "22dbdc29dbbc90176788dcd0a5f3a16c0e11b5a1aa40c0ee43fc2e857373d9ec"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "e1ae3ddeeedad22f1d3ab20ef26030db34db5cccc62b8f4ab81bacb5e311d408"
    "pt-BR"
  end
  language "ru" do
    sha256 "f7996eef8da63c287fbff3166ac18bd98f3467b8421d9359be4ce4cb972f3abf"
    "ru"
  end
  language "uk" do
    sha256 "8ff4bf4d9ca3ad7e09dbd09fdde54bd751dbe42014414bcfd79c952e35b52d92"
    "uk"
  end
  language "zh-TW" do
    sha256 "41ec5da8357cde947aac03a5b8da216dca71477271da854bc9a2f9835759c143"
    "zh-TW"
  end
  language "zh" do
    sha256 "26136df972533a2c21a13b3ce099fa17d7e081df741c192ec38e2cfa4afe8b75"
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
