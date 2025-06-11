cask "thunderbird@beta" do
  version "140.0b2"

  language "cs" do
    sha256 "4764c29535de921a3a4d5b0553da4207fb93876ae9c52603554e48867f427c20"
    "cs"
  end
  language "de" do
    sha256 "35a2098912343150109e640a7c39e465a9803422e065c7b3a5b97de24f8f8b89"
    "de"
  end
  language "en-GB" do
    sha256 "661e4c32e52aaa5959472240a814c379eaa34005c3bdbe8452c1aa0e09f7f752"
    "en-GB"
  end
  language "en", default: true do
    sha256 "07dd9e3bc89823e0be67dd131f0c47ea043c9de212c90f31f8fa015a8c81bf26"
    "en-US"
  end
  language "fr" do
    sha256 "2316c1499eb1758b59a2cae7080af2686d38d7287246960de229d633dd117b85"
    "fr"
  end
  language "gl" do
    sha256 "40232d913340f2c7ff4a6a14c74209121d707988c4d2001f0928225d0eef1a83"
    "gl"
  end
  language "it" do
    sha256 "25438ee3388686a76b6da1b2b4f483a2077b69a0333308404a237d3923d1ebfc"
    "it"
  end
  language "ja" do
    sha256 "918f480cde41f07ca5dcd3aed8bb717cfdfca25de14fb7f306b8b3832936c877"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "7ec6be03c50bf117ba1ac92f20375f6df3c1faae7d78d9c14c7f6245965c5011"
    "nl"
  end
  language "pl" do
    sha256 "a6b8bb566de146fddfb1aae40568c5897f0fffe3f5f8af58c6ec0c2dc0bc0475"
    "pl"
  end
  language "pt" do
    sha256 "10dad227a8e3cbaa012581a871a1c24aacaefe7b9d1eb7f015efcaf5923415e2"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "8cf21aba1a015ff0d62fbc34a9ac31b655bd44c94b1a200f02410c1399918761"
    "pt-BR"
  end
  language "ru" do
    sha256 "688de133708f1a2f6ac67c49496830da89669e5786bfb85b9f3e35a7f1f70286"
    "ru"
  end
  language "uk" do
    sha256 "27f2745d9278cd20e15fe56631e4d505cfe0992016d852b36aef196b3bcd6ffd"
    "uk"
  end
  language "zh-TW" do
    sha256 "7dd307085211b56e29a38e184913b5e49581f99f2da029044e093e2f66c8014f"
    "zh-TW"
  end
  language "zh" do
    sha256 "22d7b248104163d254624d817dc712ed7db3e94ca523a29d394033be8aa033b9"
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
