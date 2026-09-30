cask "thunderbird@beta" do
  version "158.0b2"

  language "cs" do
    sha256 "aded3f668e1c0c9a6afecde0a5a3607a5413c6dc2d11f97dc124ca420bcfb1de"
    "cs"
  end
  language "de" do
    sha256 "8a4a2ef1d4ca798d6d64c3378a1386f0872e7e2ffea671eabab55fb6d5f4a0ec"
    "de"
  end
  language "en-GB" do
    sha256 "c123f49260467d5ed5d1f5503a82ecd73cf13f92208cea33ffa97d26f56d979d"
    "en-GB"
  end
  language "en", default: true do
    sha256 "6050bda6d82ea5b9f2aa92969fc6a8d966b7d3e906532a241b4483f26c8b5ebd"
    "en-US"
  end
  language "fr" do
    sha256 "c1baa3afd0c0d6aac22a414f3a2911104bd097bb4c0b9ebae99193a1969bc3ff"
    "fr"
  end
  language "gl" do
    sha256 "ef561f833f01fe101b6a5fc6256dfef87d8d25fa6615ed4acd41af5b00e7b80c"
    "gl"
  end
  language "it" do
    sha256 "cb0081a2132ea0b67b5707c9317a63197c591ddd11b8647cecec7b931c65c45e"
    "it"
  end
  language "ja" do
    sha256 "3361df736cd8a1ba8fcc5519003b91b7f1aaee3c2457e816e34bc6074f4a31c7"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "04bfc8e0aa430d3ccdcffcf178e1864a4afa0f8cad5045e8cead0a19c6364077"
    "nl"
  end
  language "pl" do
    sha256 "09138bfc636127f64de5813a0f9a2f3b3e4f6d66b8bf6043101ee21e3f7711c5"
    "pl"
  end
  language "pt" do
    sha256 "dd47181840b658d55d5dc0bc099fa6c971ba302d6460d94fcddc919ea5737918"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "92c119a819bd5e917219801d23cc01d0f4d3b019cb740df213830c3d97fca20b"
    "pt-BR"
  end
  language "ru" do
    sha256 "866dff825bbea442d95dc199c8d879b35257c88900b4437a271c07e0503fd80a"
    "ru"
  end
  language "uk" do
    sha256 "a4bb8eeeb0bc70df4a12abfb1abe8112af86aa1cc9f041c1e6c0d7e15abc3f13"
    "uk"
  end
  language "zh-TW" do
    sha256 "db1978976abe2e183a37bcb077cf044ef08db37f1f52c6b5eac72f692c2bddf8"
    "zh-TW"
  end
  language "zh" do
    sha256 "0c3f834aaaab04fac0720fab11dd98b6a57445ebc8c54aab8f1bcca04288d3b0"
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
