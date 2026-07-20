cask "thunderbird@beta" do
  version "153.0b10"

  language "cs" do
    sha256 "1c0ac343796507ab4403b90b10640ea50eaf68a7b910b7f4e6f7c815d365db47"
    "cs"
  end
  language "de" do
    sha256 "86e3f44ceba2acc4a020757fdb1852e4c8d334f534e115404623b0d3d830d03a"
    "de"
  end
  language "en-GB" do
    sha256 "cb9fb109d968f744d56eaa96e2ec8d37bfcc988fbf21fccf90041f794f56979a"
    "en-GB"
  end
  language "en", default: true do
    sha256 "d49c928b99cb9890e346a7baa9fe5da807dbc9be5e71ac860bb24b5a14e068eb"
    "en-US"
  end
  language "fr" do
    sha256 "bf28c48d426dfa09d9ef3b47c9efd0409a61a879ac08e76026bf7e7f3cd71a9f"
    "fr"
  end
  language "gl" do
    sha256 "ffcbbed683a8e9ffd8f9338992c9cd4a4930a3002ec56b47858a1818667f4334"
    "gl"
  end
  language "it" do
    sha256 "14d627f6f20049cd9c17678537b8e527ed98b9cb1c9c684c79ccd8caccfcac48"
    "it"
  end
  language "ja" do
    sha256 "43a210e6358b49c422e0d47328ae8180f1fb93377da8ecdd4e34a89909a99c04"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "3fde4447f3d8ffcc66f959d24e69fcda20bcaa0fdbea875e412f36e6ae6beb8e"
    "nl"
  end
  language "pl" do
    sha256 "d57150f08da0c8909ca1685740455437b199e4211b441c2aab7f42098f284c7b"
    "pl"
  end
  language "pt" do
    sha256 "7621f3a5eb18e4ac04d22a9b4c191e847b36d993f0c1bab40c0e5dc36d3e733e"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "8d672345374bc12f810f8e365380074af7ebc6d502cd8a70a37a7fcc83bcc855"
    "pt-BR"
  end
  language "ru" do
    sha256 "fa333b64aace413944721717c61d69aa872617ab5595e5e87a90502c44f8a135"
    "ru"
  end
  language "uk" do
    sha256 "ee1256e9660d39d9afbdf63d8ef368ffef81f2be0e9836b412ea3816788f6dc1"
    "uk"
  end
  language "zh-TW" do
    sha256 "b19bc7b880a52674edcd2357265698005909c953a324e8084549ff89ad89e28d"
    "zh-TW"
  end
  language "zh" do
    sha256 "fdb21338a3bf1499bc9f6df1cb2b59c0ceed4ddadc7c8717566d87383ee51372"
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
