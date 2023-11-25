cask "thunderbird" do
  version "115.5.0"

  language "cs" do
    sha256 "1523a3cd249fbc1ce13b3763c4715b5a5c36ae1ca31c897cd53ee116b9947df3"
    "cs"
  end
  language "de" do
    sha256 "b427c33957017a63975b6026c5821a12883af7da4361507f8595ef3dd24a5387"
    "de"
  end
  language "en-GB" do
    sha256 "a1f95db8bd302a1adbeee9d26d4714a206cca2bc62a973f9eed48df9506eed0b"
    "en-GB"
  end
  language "en", default: true do
    sha256 "046c27e4ae6a4f00dbf8393b3aec687aa7627eac9a0875dad9490248b4d6a0b6"
    "en-US"
  end
  language "fr" do
    sha256 "dd1081188094ff04cac2fe9015e24ba91038dee872cab08fdd9b4bbf85ff3670"
    "fr"
  end
  language "gl" do
    sha256 "445d84bfc2ae99f0c30f96fc9d05d6eabc5e672e33a00e0d39433d9fcec7fb43"
    "gl"
  end
  language "it" do
    sha256 "e7293862f2b6345a40d203b036681b73cec9c18612a0bf43d7fa003fb4b17c88"
    "it"
  end
  language "ja" do
    sha256 "81f2a613accee75151145853490537e216d3753e16dbb6b10acc88d5fef45324"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "465f0cc4c4b5607c914ee878d9cacbf0f7363b85f7c92d33497a5e649d0c2b30"
    "nl"
  end
  language "pl" do
    sha256 "5af20a75be252e988260ea1cc71d3cf879eee3948a56efea0ded71bb8a488760"
    "pl"
  end
  language "pt" do
    sha256 "89392793a181b4524e0810bda27fff1497bcb480211506656fce8f06c1dbd323"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "84170bdb24ec40d3f0132744229e2ab45f6a0a7336b601d930b16f696520937d"
    "pt-BR"
  end
  language "ru" do
    sha256 "9e850bbd0f9f2d78f9606036eebba69e757c64beca4fd3bce92a511eed23e755"
    "ru"
  end
  language "uk" do
    sha256 "f44becc3bdfa1a10459a2b54cae9ff008e4ce0540b02cb7c97b164ad73abb3e7"
    "uk"
  end
  language "zh-TW" do
    sha256 "03c58ac1690a563b2e759a8d7d08b1580ed3ba401055376240df6c8d1c25f6b4"
    "zh-TW"
  end
  language "zh" do
    sha256 "6f6b00441626ff159f52a86abb9e85ac8a13e741fb79bea32a4eb295fe7bb71d"
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
