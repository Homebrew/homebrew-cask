cask "thunderbird@beta" do
  version "143.0b1"

  language "cs" do
    sha256 "10347a9d000c6195ae1dfb4f8c4fb6e6d54dec811222d76c5b590ddf1ca515b3"
    "cs"
  end
  language "de" do
    sha256 "3916e6e8165f1e89a0d05bf0543ebf02161e7e4d2e1b6ee99396c11abfc2df76"
    "de"
  end
  language "en-GB" do
    sha256 "59559f283c6138c367e7e9c4936e3271b1b1288d5034f78caf665b3f74800652"
    "en-GB"
  end
  language "en", default: true do
    sha256 "9066112dc572aa757a2ce9a44f4814c09b6d4a49c2391d9ae2f2da598174ec4c"
    "en-US"
  end
  language "fr" do
    sha256 "b21a44d6a939213a8d60f14b46c0d10edb476afd5bb25056365c5a6559ebcc35"
    "fr"
  end
  language "gl" do
    sha256 "5214a6460c64b645f2efe5f5eb214bfaf355652886774edc5fdae8f3499a5827"
    "gl"
  end
  language "it" do
    sha256 "c01bf39bb25df23e3c13ea256b5451a39b3a11a7d48614f844f5916f85ba5313"
    "it"
  end
  language "ja" do
    sha256 "e691b6139f3f50a0f06a6f21814d89b969d6a29b83f49a28128857cccd81017e"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "19f62f21383b603d649ac34233dcf1f90b8f7838599aed5e112d4e0f2a6e0dce"
    "nl"
  end
  language "pl" do
    sha256 "fda33c133ebff11207dc0d62b9968f253a0c88b3980ee53f472a2678204539c2"
    "pl"
  end
  language "pt" do
    sha256 "e1a62d41af253d2b33eb19d416b21bfd3bd717124756c47c26da679975ffc87f"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "9aac76132f836e877d1234737a12688f25db9f5d51e29ac36cc80efc3b104c9e"
    "pt-BR"
  end
  language "ru" do
    sha256 "0637f9c26be7f0d1e2d1278b9b7dd2ef7fb51360a720a217bc502f7a568248a3"
    "ru"
  end
  language "uk" do
    sha256 "68289ee68c8bdfa6ea87293106c688938262f71c93130b30e2913d21bae35bd0"
    "uk"
  end
  language "zh-TW" do
    sha256 "0e8738ada642a127ec9942ce288c3b49ebe69c96e862f32dd2315ca2bce3e9c3"
    "zh-TW"
  end
  language "zh" do
    sha256 "5bb2eb824590a7f6e8e7e19b8334b08af04c857384cb4e9010a422cbe84e6796"
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
  depends_on macos: ">= :catalina"

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
