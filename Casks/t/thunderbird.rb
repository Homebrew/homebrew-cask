cask "thunderbird" do
  version "115.1.0"

  language "cs" do
    sha256 "b03b7bd1ef37dcd70dcef0eef46daf309d367fe67174d585e94c3270f37a7604"
    "cs"
  end
  language "de" do
    sha256 "fe20547f26cb40af9f71ad5ee8d0c661579450cb12107b297d9fc45f624f32f7"
    "de"
  end
  language "en-GB" do
    sha256 "4f77d19585bcb842c7514e2a48f61126389fc16a70d3943699e3886383f3bbc0"
    "en-GB"
  end
  language "en", default: true do
    sha256 "558d8564cbe886dc603f64870ab4c30a4f47855db5d32f84a1a5c974abaf156f"
    "en-US"
  end
  language "fr" do
    sha256 "04fa8c7ab194a4664f144c86feb1027941dcfb1f31e1f6fcba4bc1540e0beb64"
    "fr"
  end
  language "gl" do
    sha256 "d9c7f41b8b5767d22732640b3d7379ee3d2071c6b31b96f103602cdea2742e9d"
    "gl"
  end
  language "it" do
    sha256 "1704c912372aaaf83697982ecbd5447f482419f7f434adda6ddf058ba89cc96a"
    "it"
  end
  language "ja" do
    sha256 "eeba9c994e6e811035bee4e10f8da9c9b8dbc9da95737f45cadf5e098b259456"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "4f38957aa5cb0c3bd99e7e0242ed82c4b808decf535eac45c9c1ada43a97d14e"
    "nl"
  end
  language "pl" do
    sha256 "339879d0ff594d0311ba975a3f9eb7afce3882b8e616b2809e397000f599f52c"
    "pl"
  end
  language "pt" do
    sha256 "f2c352870bb45426d6a635f08ea99bd9a623d03a24d4214c91874ea423c4d7d9"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "e0bdb23a98c4bffbbc8ffc6babd9c04d738002b798906d5525fe3b2f493c2e8d"
    "pt-BR"
  end
  language "ru" do
    sha256 "4a0d781466a23d52b47c8585f72acd3007bf4574c992044259e0f78f7490e561"
    "ru"
  end
  language "uk" do
    sha256 "9be596b201cfe20f3e83be19834ecfb8635c0851d423f51ac4f9f4f8bba5f6e2"
    "uk"
  end
  language "zh-TW" do
    sha256 "80579c7e6db2027d7609ffe51b7b1271df052f8585aeb7cba1316d347bfb8f7d"
    "zh-TW"
  end
  language "zh" do
    sha256 "130c75d15f93bf943401fed6c24c155ab81d8369c1a18bdff7836ad922f08ae3"
    "zh-CN"
  end

  url "https://download-installer.cdn.mozilla.net/pub/thunderbird/releases/#{version}/mac/#{language}/Thunderbird%20#{version}.dmg",
      verified: "download-installer.cdn.mozilla.net/pub/thunderbird/"
  name "Mozilla Thunderbird"
  desc "Customizable email client"
  homepage "https://www.thunderbird.net/"

  livecheck do
    url :homepage
    regex(/href=.*?thunderbird[._-]v?(\d+(?:\.\d+)+)[._-]SSL/i)
  end

  auto_updates true
  conflicts_with cask: "homebrew/cask-versions/thunderbird-beta"
  depends_on macos: ">= :sierra"

  app "Thunderbird.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.thunderbird.sfl*",
    "~/Library/Caches/Thunderbird",
    "~/Library/Preferences/org.mozilla.thunderbird.plist",
    "~/Library/Saved Application State/org.mozilla.thunderbird.savedState",
    "~/Library/Thunderbird",
  ]
end
