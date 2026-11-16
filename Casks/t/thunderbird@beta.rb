cask "thunderbird@beta" do
  version "161.0b3"

  language "cs" do
    sha256 "43faef894f5ddd3a58ba7ad4953955667885b7d02ea04ca533ed7bce61bbebb9"
    "cs"
  end
  language "de" do
    sha256 "0439d6093a3e3941bdfc3d36d59d7fb6de0233f0f653a553ad0e0a113e0602dd"
    "de"
  end
  language "en-GB" do
    sha256 "6e73731e14647cc1a55dbfad0f9bb3857edd1e43d4a063c24937363bf00e7cb0"
    "en-GB"
  end
  language "en", default: true do
    sha256 "171f013fc275b85fa5f7229321b94ede6ff52ac330d55e32cc77ca0e8753cd1f"
    "en-US"
  end
  language "fr" do
    sha256 "0f190308e7b5d5102f4e112f63c801e8e5db1f96e2bfcca266d6912e67d4dfcf"
    "fr"
  end
  language "gl" do
    sha256 "332625138933464a1bc77f2f17aee21f45c509e5d0eafe440863922c69abadca"
    "gl"
  end
  language "it" do
    sha256 "8e41f730a45c20e389147f39bb8d00ccad66d7856ae091672d17a5da22de5ff8"
    "it"
  end
  language "ja" do
    sha256 "49336c538a6cc2dc918223190e2818065ed41007a3b3613de6e909e71bd366d2"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "ae6bed38722da27982843c29a0b3e16556c013d3bc4da3aec971c2a124fdbdd5"
    "nl"
  end
  language "pl" do
    sha256 "2fb6502d9b5caae28a073690d6a232fb5da43904efa9b64b60747c4bf4864812"
    "pl"
  end
  language "pt" do
    sha256 "a2d6ed38bd19d131fa31c17b03547cc2d779330318410a4691a3df3ed28a0999"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "059b451897a753ee3c18db6469ab03d7f66dd4aebed868d21fbe43e0bcfee012"
    "pt-BR"
  end
  language "ru" do
    sha256 "1ab68cdfe48c7b4f3beca034826af0d5d3df7d8f928bc1c910f550fe21ff6a1c"
    "ru"
  end
  language "uk" do
    sha256 "99ce704b818f0476a571f974f1204ee0b93a65a8eafcc6ce0f464e6a8e60135e"
    "uk"
  end
  language "zh-TW" do
    sha256 "ffc3661778f9dadd3d192abb340bf15ee64f0c38b1ca38303612a7e6184f0e9a"
    "zh-TW"
  end
  language "zh" do
    sha256 "bf723c0cc49c42e99cb55cc7815fcac3d0c4d8b19311c9d1f1aaa09ad970bda4"
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
