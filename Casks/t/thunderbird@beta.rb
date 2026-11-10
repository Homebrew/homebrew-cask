cask "thunderbird@beta" do
  version "161.0b1"

  language "cs" do
    sha256 "be2f17733dece61b804e85561a20021ddace0ad30a95fad3b43c24e038f0be71"
    "cs"
  end
  language "de" do
    sha256 "2f7fca9ca7cb7d420769e21ada49e622c9b6881dc484a2d9da77913a9f52e303"
    "de"
  end
  language "en-GB" do
    sha256 "45b3cdff49f392f71502a65dcf9f5de0fc627bacd628d772abf558457fdf438c"
    "en-GB"
  end
  language "en", default: true do
    sha256 "8ca81097691b79b4b43e420e131d3a1f042c34e3ba0ca7163a6c099719b75521"
    "en-US"
  end
  language "fr" do
    sha256 "2d6cccd803f4b54bb1790fb20fb74b7bea1d00ebfcf6f1edceeaec379b789121"
    "fr"
  end
  language "gl" do
    sha256 "32e279ac49a1b85704352b36e15b2ef91bf69f52506a298d400184135bf877e6"
    "gl"
  end
  language "it" do
    sha256 "bbfdb7393bc9e5f6fd4a24ab1547a9ca38e8167353fd61d04e4a1cb02823b881"
    "it"
  end
  language "ja" do
    sha256 "be2aeb139fe8b70cf06d236a676110faa125c61807c917635ec5140f8ae4881c"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "7770feb8b3c27564878f19e50345aa0c961a6ee6fdd1b4bdd4a473e5e36dadbc"
    "nl"
  end
  language "pl" do
    sha256 "6dee8d9da4efabf5b09ac3468c5548661a5c6f51407fa79ef596592d18da4876"
    "pl"
  end
  language "pt" do
    sha256 "de9e4b3290190123774081789e8704e638d3215df2a7b813e12685ffd56eb9af"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "64ec774405712bc3682b2813231afba07b215ca6cca330da6bad381e9ee054f7"
    "pt-BR"
  end
  language "ru" do
    sha256 "fe2fbd365bfa1d7ab42ac07f46372d68c4171d62e3aaaa2502d505e83fd98dce"
    "ru"
  end
  language "uk" do
    sha256 "581cf61ae904cfb26289731af53126f5c324fde788b8f483b6533f50b3142a52"
    "uk"
  end
  language "zh-TW" do
    sha256 "7011f912c704a9df048f62c73afe4d48144281f34c436d745a719f7a3fe88f1b"
    "zh-TW"
  end
  language "zh" do
    sha256 "b8e404dadb817e3734ad62b0cd2de7eaa8c8e80b924283c7c6bfb438b6e0cd6f"
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
