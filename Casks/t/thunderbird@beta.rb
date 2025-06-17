cask "thunderbird@beta" do
  version "140.0b3"

  language "cs" do
    sha256 "45a992ff84cf6dd496a1f56dba1a6b369bba55fb883237c50a529c534f9cc2ce"
    "cs"
  end
  language "de" do
    sha256 "442dd5e1d33e18ea16d79a8647654e9c4986abfb1e387b5bd47ffd6d309de814"
    "de"
  end
  language "en-GB" do
    sha256 "1475bd6a1f056396c959cd574b1bb98aa6786da6fde8e00f92d43249ea58cdfe"
    "en-GB"
  end
  language "en", default: true do
    sha256 "16c3b0710ca5f6a6a3ff0ec4da314a626804437902de85742b16f73144969634"
    "en-US"
  end
  language "fr" do
    sha256 "13e96cdecc6dbf0d73de7b76af34f9a4f02dfe996a3381950c1f14d95c92894d"
    "fr"
  end
  language "gl" do
    sha256 "4630ad3385ca20805e3810a8f243cf9443b4d11406da63a4e8d17070bf91478e"
    "gl"
  end
  language "it" do
    sha256 "d0a00df68b512f8e9b898a4978bd3a3786440e82843440a145549eaea34d1e47"
    "it"
  end
  language "ja" do
    sha256 "ad91b348cc4d8c45297d3911b52d498022be8aff16305596082e7c69fc525b54"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "6b9337310e5585b5774579282edde29754fa5e163a765848a49f52e42a79f739"
    "nl"
  end
  language "pl" do
    sha256 "503976d6a9b791e59059d24afe56235cd7aace3be40fae825e0df09abfc75210"
    "pl"
  end
  language "pt" do
    sha256 "05108f45c4fabdeda4238b2ef46831309fdcc3c0af5c1348f5bf119a114be9f1"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "20afd80e782b5c05e2411702d309debbec214064f0d46db668daec48d20d5a04"
    "pt-BR"
  end
  language "ru" do
    sha256 "954203f880f85c964f0ef578c3556106fd6823aafbc022509ad2a426cf4ddb21"
    "ru"
  end
  language "uk" do
    sha256 "d79c91cfec6ff2545cbc935ed8b13ab90d707d1c982f1f961313a30e659c2ae0"
    "uk"
  end
  language "zh-TW" do
    sha256 "35309520ce2a7e4b361e4f9cd468d759d54fc46aac02e3bfabacaef357da1f36"
    "zh-TW"
  end
  language "zh" do
    sha256 "8dc0f4271909c60497ff7021a0f6c5970ab53922b51dd8ef4c3b9dbdf37d92b6"
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
