cask "thunderbird@beta" do
  version "154.0b3"

  language "cs" do
    sha256 "44e5397e26592c92f5f2487d5c72043dd2c89be0066226234326507ecf400601"
    "cs"
  end
  language "de" do
    sha256 "af1cdc8bb79c1a61fcb32eb6c3ea054a959928b9ac9add5b406485de184df030"
    "de"
  end
  language "en-GB" do
    sha256 "195c6c3ff32ea01190cc65a94df35f51145a187af1e411675b564c7eb1f56ce6"
    "en-GB"
  end
  language "en", default: true do
    sha256 "41c7ea6cf16b97b530600fce31d3af68408fb7ed192e50265932c629c24a5bcf"
    "en-US"
  end
  language "fr" do
    sha256 "767e793e28e178983d5211c21e2836891708f0c1f053392ab5241b152421cc81"
    "fr"
  end
  language "gl" do
    sha256 "b6bdb88764347a19ae60b0d1c39f332b9c510b28ae5afa7e0856ea5af8e044b6"
    "gl"
  end
  language "it" do
    sha256 "ee4689d7ae597fd5ef12aa40829bfafdeef7435adda8f3c6296d69e25f9fa7a5"
    "it"
  end
  language "ja" do
    sha256 "cd815286f003b93e0085549f0e5e328104af4f2abd2dbb27e03c33887bb4986c"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "592e7bd77a20e72df62af38e08bd0de6c4f4d00ce657141d1c6897ffcb1825cd"
    "nl"
  end
  language "pl" do
    sha256 "cba1a7d7a1584625bf1dc45671bf7ded24a6e7bc9af82ee9fb9b09712f6ae6c9"
    "pl"
  end
  language "pt" do
    sha256 "ac712b497335a3130a5e76e551ee99c82feeb39dace58c41d029db71143b4566"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "8ec524facae628c2afa081a77b7689a60282098c95b9457dfb4eaff3dbb5fccc"
    "pt-BR"
  end
  language "ru" do
    sha256 "f4d8069632c885b472564d15e084cc4e0c7fba75ae4f7ff6da5f6c1cf9b5cbc6"
    "ru"
  end
  language "uk" do
    sha256 "8c59854e7246d15b695f8ed441be32919f5688a6160684ef77f964423747967f"
    "uk"
  end
  language "zh-TW" do
    sha256 "31c067a294d46e16111e6c3274cac5212ecad0c8fba6de3ba889c9855765340b"
    "zh-TW"
  end
  language "zh" do
    sha256 "a1953dc3ef84da5d4b399ec5597e616097c99cb7f8b08109c9d1927975cb002f"
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
