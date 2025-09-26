cask "thunderbird@beta" do
  version "144.0b2"

  language "cs" do
    sha256 "ce1830479cc0f60c9fc24b7cba29e0bf1279cdd2cb0ec8c3741010d3c43c1003"
    "cs"
  end
  language "de" do
    sha256 "59615b38c393122b7435d3946f7804cbd13c8d2a61311c01ce2f3b439183cd73"
    "de"
  end
  language "en-GB" do
    sha256 "a84d34bb676dd69b3143614e7e1d914cc6f252588c2e8122c528cd96a5d28222"
    "en-GB"
  end
  language "en", default: true do
    sha256 "f80ecfb986c67a0a34facbfbbf36a226a008655151a2cc686be0163da51cb0d3"
    "en-US"
  end
  language "fr" do
    sha256 "310cc002aab77351813744af15c69803c5a73848e95553ab1ed051c9afb5c10d"
    "fr"
  end
  language "gl" do
    sha256 "2d30de25350c4711598179f3d2a1fd84eb7aa9e1e9cace8aef48c0a504a4c2b8"
    "gl"
  end
  language "it" do
    sha256 "17f9c3cbdf306d3ead34d969caa7af55fabce5efc6998e8da361ff808bafa265"
    "it"
  end
  language "ja" do
    sha256 "c862ef26e8e852243d119467715c74f7120254b4b28268cdc8930ee1f42584b1"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "beff4ff3baa94957fc85f1ba41b3262982b517e5dde36ef4c545b049649adc84"
    "nl"
  end
  language "pl" do
    sha256 "090695691faf5c0eb03885ff6042103895692fdba88fd8d0c0a5c14ecd51eba5"
    "pl"
  end
  language "pt" do
    sha256 "ef46ef6f76d05a28f2f81de21a5462983450b1d404747328e4c20654b156fd66"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "126b8ddf6c43e8e70bdb19ce03f42cbe59b07beb9aafa36f7d48e065266c7e9a"
    "pt-BR"
  end
  language "ru" do
    sha256 "cd8c2c6fffa1b151986063951124487336ceea088bd77327515dd0ae78fb3257"
    "ru"
  end
  language "uk" do
    sha256 "9ce280b1d2404db6c700571b58cef685647393b11beacf851a4f70be21ec482b"
    "uk"
  end
  language "zh-TW" do
    sha256 "d15a2c83c1df7816864eeafe98a9190d9aa8e357f9d2f0f70c1b4048f295abea"
    "zh-TW"
  end
  language "zh" do
    sha256 "1beebc55501952cfa9ab9b4cf4357f6c58aa16b587d446085aea49687443e597"
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
