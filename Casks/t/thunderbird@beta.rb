cask "thunderbird@beta" do
  version "159.0b4"

  language "cs" do
    sha256 "52026aae6b0c22a48a74c9163309ba49f162ebac449747d77b642737be1a1a86"
    "cs"
  end
  language "de" do
    sha256 "65ef70302f5f4175da1cecc9ad7f86124716ef5d9e949e6d0b0a7b60b185c29f"
    "de"
  end
  language "en-GB" do
    sha256 "a882111f5aebd43a04af3c28a8e1112e28ec4d64245303e30c6fa24df9d7bf40"
    "en-GB"
  end
  language "en", default: true do
    sha256 "f8eccb91f561492c789e302a810feebea301135a4a0ff5507572ad57a30ad3b8"
    "en-US"
  end
  language "fr" do
    sha256 "ac4d48d47c72d02f09f41905b4545fd6a70a88268adf247697437415628d1f59"
    "fr"
  end
  language "gl" do
    sha256 "ced690826e5d8f9e2c97eaee1218a7bc850a373db319db37059aeb61d725a6f8"
    "gl"
  end
  language "it" do
    sha256 "d9c4047757c9b9c7f4321d021416660ac1c282ad0ce08f5d2209fa4d0da8dda1"
    "it"
  end
  language "ja" do
    sha256 "80672db62455657d533da0421b32589f9d25b33ff76391b21bc77ac6baa12e8c"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "3f0c53cffbed11343ca1769b2e3a2570fddc97088e7f3734f970c806fb267db9"
    "nl"
  end
  language "pl" do
    sha256 "089bc0b5ceb9ec3bd4e2734a2d3d12d65e45c6ae8dc0ed25176177d9a62b3483"
    "pl"
  end
  language "pt" do
    sha256 "42c1f4780397af5e0580a45af105234dd93a47ec8075504af21876d06892a478"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "733dda048e8fdf7b7953d16bd0dd82403b7c69a45927849834788f09d5207945"
    "pt-BR"
  end
  language "ru" do
    sha256 "ba1be804e61eb54fdc93476a7cb358afb43d61a6d490088f73e1379ddd8af3f9"
    "ru"
  end
  language "uk" do
    sha256 "fc40d1337b6bdf8b05f025677c42b9cc7d679ad6398ba292a0e7caed3651ffcc"
    "uk"
  end
  language "zh-TW" do
    sha256 "96eaf95077e06b6ca9943fb1b061e2d81f87b90bd9ecfe46415eec64999612fe"
    "zh-TW"
  end
  language "zh" do
    sha256 "2d9ff2dc8d53fd28677e219e7dcfce4f489a590e839a57b6d967bf22118caea5"
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
