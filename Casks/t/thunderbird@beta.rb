cask "thunderbird@beta" do
  version "148.0b6"

  language "cs" do
    sha256 "47c12ebca57c5f40580f348c329675648b55174a1ecc20ea701bf38d1f0e6209"
    "cs"
  end
  language "de" do
    sha256 "1b88348f626af73b5c63d21d4ab8f73ce35df90205133388b0830a6e79d7f7b7"
    "de"
  end
  language "en-GB" do
    sha256 "46c8f4f084d5b440f45dd4420ee4f91b4055a5f744e15885279aff3c660f1c35"
    "en-GB"
  end
  language "en", default: true do
    sha256 "315a69cf4fb32799bd9adacacab32493037840f1788848e6e7689411d24ee8b7"
    "en-US"
  end
  language "fr" do
    sha256 "b2b1e70032db68870af86155e2917c6e59993c4e3ad8ce2991c73ddb1310ecd4"
    "fr"
  end
  language "gl" do
    sha256 "502152437760826f13e96b989e6e4d1eb8073b7884fda315259d1a853827c07b"
    "gl"
  end
  language "it" do
    sha256 "8f6eca5083aad52d6c2a3d33a5d507166d16e43484984d3956d63441af5265f2"
    "it"
  end
  language "ja" do
    sha256 "65e0ea6cc8a6e39e3705665f72ba8d5f87404419c2c87c4fd753ff2599920944"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "2d62f8b8ce12e6711ac9f75b320d4fb891cd76102fdc84056e61fcc8d0a42891"
    "nl"
  end
  language "pl" do
    sha256 "07c7650493f703f042680e45b0eb3c209f1329e0f10723be83cb8726342e1457"
    "pl"
  end
  language "pt" do
    sha256 "7b7993f14e4dd0481c521389e9515a5932e59393aa50e31e333e550835fbab49"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "14244ff7561b6e7cb5ed8e42ab5dc85a08774e2434bf511b1c4b80a9ac4a1926"
    "pt-BR"
  end
  language "ru" do
    sha256 "246ea4e18529fb6ad3897d9c16a07be987a4e8f9500cb058e2ad9ef23dc1a860"
    "ru"
  end
  language "uk" do
    sha256 "843d3fc9a1144e5b481ff5825ea89689b3c9fd0f8e892f38ac167764fd93e63c"
    "uk"
  end
  language "zh-TW" do
    sha256 "3475b631f99ef49c5ad4ff55086c078169944ea8eb951c8f234667b08644ef97"
    "zh-TW"
  end
  language "zh" do
    sha256 "dc46f5a65c2ff0bb223207f728eabf8eac1a6a032bf6583aec59d4971408f04c"
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
