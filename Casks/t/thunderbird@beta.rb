cask "thunderbird@beta" do
  version "158.0b5"

  language "cs" do
    sha256 "4ad44d213d65f97c7945b1ff4f1324ee4fb6b1f7a9f220ab9487bf533ff4b765"
    "cs"
  end
  language "de" do
    sha256 "dfa2715516df769108f19bb25e926633d36e13bc152b19053113d6302466756e"
    "de"
  end
  language "en-GB" do
    sha256 "d0057b47cf5b2b5eca36c13cf1667d801b9ff987bcf08c424cd744b398d07911"
    "en-GB"
  end
  language "en", default: true do
    sha256 "e21a90fc03a941dfb6381c15b76fb64e2340212ce6bb18526993d57444971318"
    "en-US"
  end
  language "fr" do
    sha256 "cf580dc290a0357505c09c2ff1ec912a943680b7a1d1b3af1247b9418edcc859"
    "fr"
  end
  language "gl" do
    sha256 "06409f73da2cc36977cbb18c833989407ad01ef74b15b1bca12217876c9cca81"
    "gl"
  end
  language "it" do
    sha256 "26f0ac9d20ea29a86b349d65fbaf88cf8299c66efcc2b6f069f97f7eb0f5a03b"
    "it"
  end
  language "ja" do
    sha256 "b503b63b7ce407801ece26a7c512609c38e88e441058f384a4cf2033a2ed8978"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "777c18b4d02d051333a5ccced6978b42bfd6fd35d48030a6881301c102eb2477"
    "nl"
  end
  language "pl" do
    sha256 "e2b6e261764aab47019a15bf70fff020563087519d0b54956cc38c100afe709a"
    "pl"
  end
  language "pt" do
    sha256 "626e2c8991db9752002c984b4a2082893f6da1cd7912b240788c115965c0d0f1"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "7acc590685b5284aa29e3fae5dfac6272688b08ea47aff74b6836a8970fe33c4"
    "pt-BR"
  end
  language "ru" do
    sha256 "7ac573402f56c40e7cd5008d79039b559d0362b72f32c72c663c3f176e0ece10"
    "ru"
  end
  language "uk" do
    sha256 "783026071819ca2c3e80a0a6029553f8c817985a7f5bd7bfd418663ba220c598"
    "uk"
  end
  language "zh-TW" do
    sha256 "fcf349cb566f04e26538059732b14fcdf1f9c9e72b2dfe9925adcbaeb05dc7bf"
    "zh-TW"
  end
  language "zh" do
    sha256 "4040ede48ab4ccc75cf2bc4a6e63ddf0c2a794d46732ce3b7a7fcf2ec7f32e6b"
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
