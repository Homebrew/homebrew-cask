cask "thunderbird@beta" do
  version "150.0b3"

  language "cs" do
    sha256 "5fd3fd06f6c9a239df8d37e26950ce828234e67135e23af6d21c97c60f9f0008"
    "cs"
  end
  language "de" do
    sha256 "43fffde8b0d3b1402c701a0100c385fc758131db904596a76c98a1c27f2bdbbd"
    "de"
  end
  language "en-GB" do
    sha256 "f16edb81b44bd40a41226beeb808b5ae863722a43cd6e8c77802aed6f2a4f66b"
    "en-GB"
  end
  language "en", default: true do
    sha256 "03269e4c175de21abb08a05d4a806c9fa85255448c6bc392e58d46ed0c68ea7f"
    "en-US"
  end
  language "fr" do
    sha256 "4ef551877c37b820831e89a4ada51b2b535dfa2a991b24aa0c3d64b6bc5e1f5c"
    "fr"
  end
  language "gl" do
    sha256 "9ec59de054ef27995f6b9e221e6100d6129a6bcac5a7cfaa8e6340dfe3e58f69"
    "gl"
  end
  language "it" do
    sha256 "6415d6972b65230b785c28a67e919aef4814ab23681480a1cd19cc83756530a8"
    "it"
  end
  language "ja" do
    sha256 "c4a4e9530b7d7eb044bd3ceb0122e62ef685e86c6de8ee8342e7541e5063ace7"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "e5331425abf90b61dbe8dd557ae140d1d260a153eaef70e1da345be05b848975"
    "nl"
  end
  language "pl" do
    sha256 "52c122a14cf91e86ea897a0dc84e1c374415d3c45b9d614599b10b5664ff845b"
    "pl"
  end
  language "pt" do
    sha256 "d94bdea0f8f689e2a7d45816d46c6f3efcc127b32a68b1bfc9f6a60014c2839c"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "0da00784bc2677326ccccb4abe91e76dc49f92378f21cd026b8df43b72082566"
    "pt-BR"
  end
  language "ru" do
    sha256 "2c0e595cfdbe4d7cae374e5109cbd69c82c675118b878c3c81630e5185362ffb"
    "ru"
  end
  language "uk" do
    sha256 "f0cf9095fa9e40928b3dc041ee0c6349a45d25bb731e9d72549b852dc9c050bc"
    "uk"
  end
  language "zh-TW" do
    sha256 "eae41f3269265b80be95d785bac1629af75fecf164f012866d68b6b10a6ff9a9"
    "zh-TW"
  end
  language "zh" do
    sha256 "97a007e1a84825d33a9759d8b5d11ab27ff75bc93494bc2aa77af13402add920"
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
