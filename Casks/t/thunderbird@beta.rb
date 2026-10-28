cask "thunderbird@beta" do
  version "160.0b2"

  language "cs" do
    sha256 "d2468074cec483a7a6a7e1e69640691e580f42a1406c82b19c881e2de258209a"
    "cs"
  end
  language "de" do
    sha256 "bbcad96f28b529e9e9e59d165a990299a5e92bdc815c9803a475fb36046e99a6"
    "de"
  end
  language "en-GB" do
    sha256 "83d8261c774c1263899cda745e7d835e3c1bcfb3209a9682b19eba6201dac028"
    "en-GB"
  end
  language "en", default: true do
    sha256 "1fe763e3a9531b7ea2a125ba76191d443839aa96b2674a046c4c7747dd4117a6"
    "en-US"
  end
  language "fr" do
    sha256 "541e851e3d68110defe64840a939ede609d51908e0359b79670ee78f36c51410"
    "fr"
  end
  language "gl" do
    sha256 "c5d67c645323454b658409b49714193e618dba4fa13a77c7e546a16f1027c66d"
    "gl"
  end
  language "it" do
    sha256 "c71921a93969a22ce17564391795b78596a19791b846c30a162b4790a1e73cb3"
    "it"
  end
  language "ja" do
    sha256 "5ffa700b921e762eb685f0679c8a2899ffafd4f4a2a91b39480b4112f5956362"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "75af82d5a5e171832a24a64b5a1d8e34c307ed82bd267f316da83aca72cb3955"
    "nl"
  end
  language "pl" do
    sha256 "d06096b9d200df3645214ce0ee0b9f94bfb1bfb83fcd3349857f9092b461f407"
    "pl"
  end
  language "pt" do
    sha256 "dec2db68abbf17fd2314d7138375d59aa350fe84b04cd27814610b5e5d46da6c"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "b30f83d483340260fb8b719600b3d45f642c82013dc918819d820b847c20ad1c"
    "pt-BR"
  end
  language "ru" do
    sha256 "62840af5f518b9b1f295947ec65cebfb214eea083aed39be735f9d2d16a9f594"
    "ru"
  end
  language "uk" do
    sha256 "25b6af2976b5c3e9eee6a2d9f387e3cf14148840956608a3dc427e6649c06651"
    "uk"
  end
  language "zh-TW" do
    sha256 "9aa6cfcf8002b5e214e736f64b2e0b10ba143f1ccbeff134d975ae0aa06aa903"
    "zh-TW"
  end
  language "zh" do
    sha256 "ae816491e5003445c6d10f65ee755e6958630a9e57a470a6ca74dac13a67895e"
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
