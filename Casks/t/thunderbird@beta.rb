cask "thunderbird@beta" do
  version "155.0b2"

  language "cs" do
    sha256 "72443528267b255c21eac338783d75c2304b77ea5e62ee8ef5990872a520205f"
    "cs"
  end
  language "de" do
    sha256 "2651332b797fad396ea764ae8153298c14ac6fbf30a3b9e1f1714c566c53e852"
    "de"
  end
  language "en-GB" do
    sha256 "e87b7427c9f9fb48289f3f66fa2a531f70257cd547fd7133efee2aa055b0e6ea"
    "en-GB"
  end
  language "en", default: true do
    sha256 "6d6da0f225335b55802d794d5a13ff78c82dc7748dda3c51de6c5c3bc94d26b8"
    "en-US"
  end
  language "fr" do
    sha256 "1d70df0e0b682cddd423b467c1a2de717b75b17a77d82ea65bade164a389d2b0"
    "fr"
  end
  language "gl" do
    sha256 "86e68743db7afaa7c7b5e999f1fc7ff3b35da24666f0e3ffcaec5fa3e247a76a"
    "gl"
  end
  language "it" do
    sha256 "fa7412ee43813d1cc7e41d005503a184f80cefbcadc22ceefc28e64a874ced59"
    "it"
  end
  language "ja" do
    sha256 "4d30fdc4cb467a64e1b01112ee5d7178a69d22fd922eef2ef6e2a36c66fe936b"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "eb8ab22158cd87ae7f1f0e2f575d29be41280488b244ac094eabab578346b5b7"
    "nl"
  end
  language "pl" do
    sha256 "25f1eec4ab46c388790085c7bd84a5108b13ab83224a42c5004d043fd6964ab5"
    "pl"
  end
  language "pt" do
    sha256 "bc6267362d440a4769063bdb426b9af307d2e8f6f9896094c2a014511b77527c"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "7153f7358115b2e43351f405e694605de006fa97711043cf747b6e10abd41541"
    "pt-BR"
  end
  language "ru" do
    sha256 "c55c9cf136beb96e14641fab024c3d8fa35fa76c5bb97650e566124c3ee452f9"
    "ru"
  end
  language "uk" do
    sha256 "8bb7ac507fc62c16a98e7b6f9976dfb1ff39cd96dafc095f763168f20eb4715c"
    "uk"
  end
  language "zh-TW" do
    sha256 "5d39217212043b20bdf9ca7101385b04c620e014fe29b0766c6f585a7747f3b1"
    "zh-TW"
  end
  language "zh" do
    sha256 "7cfc475dd4bf6c345f3735022aec80fc143ef5e2cc76b1a308068020235dc9dc"
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
