cask "thunderbird@beta" do
  version "141.0b1"

  language "cs" do
    sha256 "ad28533367d5e5ff6acbf0a2ea3271d96c8a6dec4370a5ba23877b940a50acb7"
    "cs"
  end
  language "de" do
    sha256 "e39a3ab05201a9c022f6d177f0a911b07f00e1832a50f771651f497a0a3175de"
    "de"
  end
  language "en-GB" do
    sha256 "7b71c10a3b3b89478366734e730450fbeebee34f4983c127fd576bca67e01119"
    "en-GB"
  end
  language "en", default: true do
    sha256 "fd6f1dd3904e6e84bd0b615695c55a7341e1b4e33c2cfd49b48b051e570357e0"
    "en-US"
  end
  language "fr" do
    sha256 "eab5d835e3c0ddbb938b4c92a84c1dfb1ff30647db6b8e301ff73eb4dfd1a42f"
    "fr"
  end
  language "gl" do
    sha256 "bf1dae4ccdefbf88a1b2e5e221825bca62a4a98d424b11799be18752bfc76375"
    "gl"
  end
  language "it" do
    sha256 "718246d0a03d3dda0c1adb2adc0a672802a48e2611495e33cf89160ee1811f97"
    "it"
  end
  language "ja" do
    sha256 "545d7068c3e1450a37ece090c9ed2af091c8022348ca88e7f9470123def8d224"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "a7b9de30d44074990fdcb5169fb572f0859d6d82bbc706e90c1b1fe0dd7520b1"
    "nl"
  end
  language "pl" do
    sha256 "b2e92c1387f6077c5e42dfa3f6ebd8edcbbf4018e1683bdbb1c727bba29bc938"
    "pl"
  end
  language "pt" do
    sha256 "75ece2ea866f5db861c048501b358bc2fc687d7ae4ec996cdadb1fd2ad37a2b1"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "b584a44f0092ff87607bf879cb2dcfd02e1b52568598eed2706fed2337726f2e"
    "pt-BR"
  end
  language "ru" do
    sha256 "e56d82208120064d6734a2e4cd48d32ceb3ff86fc85820283c851321737597e4"
    "ru"
  end
  language "uk" do
    sha256 "f783b2df26eb7adc1e1341dd8e3cc64aa1b25a3358c6ae322b907ee91b76ff42"
    "uk"
  end
  language "zh-TW" do
    sha256 "b5f0cc57ab29b73a57e794ee3c71d2156d951b9b97330d4634966b4fcf861847"
    "zh-TW"
  end
  language "zh" do
    sha256 "c88c25c0ddbe41dcedb8cca9b2875a134fe10c253964f7014ea3cebc95a6d8ae"
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
