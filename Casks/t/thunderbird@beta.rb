cask "thunderbird@beta" do
  version "132.0b4"

  language "cs" do
    sha256 "d685caf1ebb10e49267bc35d701cce64fafb1e1da7f74d05dd067a59ee65714c"
    "cs"
  end
  language "de" do
    sha256 "2436d5f4be89e3d00f6ee9b18ac9084d8767f033b1f4215c2b7284de9b5d58ff"
    "de"
  end
  language "en-GB" do
    sha256 "d962662309f57bb316e2abe007243290c9191f61ee178fdad7f621f5d13516fb"
    "en-GB"
  end
  language "en", default: true do
    sha256 "6c346955ef8e68dd7baea08f619ce5186ba572639f3aff0e0f41f5153c6133c9"
    "en-US"
  end
  language "fr" do
    sha256 "ae7657df350d04533e69b04d4f5ed1a5f28133f9d4a8194c88ecf2f69d24fc32"
    "fr"
  end
  language "gl" do
    sha256 "71e6c6cc3d37e1e5c057e55b4abc84788a5aa4321ae3e9eea60427f42a19b52b"
    "gl"
  end
  language "it" do
    sha256 "97b2c83b0f041d295825281ffb00a0a22d5e842a8f0a90882c8da747139ff582"
    "it"
  end
  language "ja" do
    sha256 "fee45d7fe0645dcf593b702854c9346e9380a69d2ab5fc42c123945589c4e35b"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "b144070af3c5e135a16a0d8ec7a7b5bd82ca095d103cab2cab97c1a4c4ee1292"
    "nl"
  end
  language "pl" do
    sha256 "d04abd0c18ce151bb905277e3968eae8b4c14832f0d3722209507516d5aa8b16"
    "pl"
  end
  language "pt" do
    sha256 "7dfe67b2b260ff5e46a4f933908cb8c42e64bd0b30233922825d0baa18be2d7b"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "e6a90b08a94eb923709fbefbb2a2753f9a5130004767c1a150469e1144750641"
    "pt-BR"
  end
  language "ru" do
    sha256 "192c436a5b67dd4732320492f2c8a32a3186868fce555c530fa0ed9ab1bc39bf"
    "ru"
  end
  language "uk" do
    sha256 "b3f155f67b77d198949b883b6ed944d10507200959d2d54991bea169b9e31704"
    "uk"
  end
  language "zh-TW" do
    sha256 "8cf1cae6ced5ec97f031b2a614f9971923ecfb4bd9ca8b63a8c6caf20d6d1157"
    "zh-TW"
  end
  language "zh" do
    sha256 "34269d220af57bec2e70ae8d57d08417ace990588458219d35054b53e0d858ae"
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
    "~/Library/Caches/Thunderbird",
    "~/Library/Preferences/org.mozilla.thunderbird*.plist",
    "~/Library/Saved Application State/org.mozilla.thunderbird*.savedState",
    "~/Library/Thunderbird",
  ]
end
