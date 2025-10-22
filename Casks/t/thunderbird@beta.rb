cask "thunderbird@beta" do
  version "145.0b2"

  language "cs" do
    sha256 "34177b75cbdac70eb3f8b1080ee0725b5d6940e924acea373c9a9b92a6f202d6"
    "cs"
  end
  language "de" do
    sha256 "0c3513f90a0e25e155b4dc6ad418fd9afa8fedc64b4cc861cc1045ee36c24ddb"
    "de"
  end
  language "en-GB" do
    sha256 "cda015a9726845d83dc49a51400a8d9878bcedb3c6aa33d7e03487815e577c72"
    "en-GB"
  end
  language "en", default: true do
    sha256 "88066fa887e43dd36f36bf7fa15ec3f0c86194c36e9fd0870e572285c6741fcd"
    "en-US"
  end
  language "fr" do
    sha256 "dae023500a1cb9a1c28f5558cc5fff1e706d4b0c4407b52f4ec991f9f1df12e4"
    "fr"
  end
  language "gl" do
    sha256 "613008caf6a1a25e08233cc665fa8fb6160cef872e6d9ad1d729689277a3fff7"
    "gl"
  end
  language "it" do
    sha256 "c20f8a08898bed3facfda8b0423d6134a591ec298d075f9c30bad30cd0746bcc"
    "it"
  end
  language "ja" do
    sha256 "ecc91124123331bc510b862fdc087227bb9ef94cc306368be2bf26e3e27c49a2"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "36f9c2e56a45538d5b3ddf9278d6d7e472ac697f1e0fad1e89942e87e52e9619"
    "nl"
  end
  language "pl" do
    sha256 "f76d673462b5c0d157854256df9264fb8621359c0525e249afeb9fd9e4e386bd"
    "pl"
  end
  language "pt" do
    sha256 "22b9d61df5dd5895959edada5bcc278bb4ec37540ec8ee321f33ff1b842d2edd"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "dfff1ab4d3bfc29cbffbf3d4e9b122add7c4c3b7ac02d6a6a88e105519b06782"
    "pt-BR"
  end
  language "ru" do
    sha256 "cd33a5a7622979a503cf4fd745dc859f5ef9a27f243233b4d0efe448202ae77b"
    "ru"
  end
  language "uk" do
    sha256 "5ffbc1c825f20f815892a6ca2ab42b7e3cc7f66da47c556f6dd79edb822de9e3"
    "uk"
  end
  language "zh-TW" do
    sha256 "9e66acf69f2e385ba8fa367d7ce1b6ff1f936cbd231bb1962761c6c42b6b51df"
    "zh-TW"
  end
  language "zh" do
    sha256 "9d6c975c8eb4092c6c215c2f3ffd215c098746dfc3cdef605d5686fd9765cefb"
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
