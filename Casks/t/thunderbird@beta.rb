cask "thunderbird@beta" do
  version "158.0b1"

  language "cs" do
    sha256 "a00d720adf1debfa19445ed7e78b9eac4233ea56cf02de1a6c8118190e15d1b3"
    "cs"
  end
  language "de" do
    sha256 "2bbc9ef8d1ec039533b3ecc7caafcc2ef15df2dda0a23ff5affb7fa51ed85958"
    "de"
  end
  language "en-GB" do
    sha256 "031dc8a8d012f0689c3fe1bae16c15928289536568024e5edf59b7089805ecf6"
    "en-GB"
  end
  language "en", default: true do
    sha256 "624d63bcc32e9306decd65997e66a8dececf219bdf74999c97f26c984e0acf57"
    "en-US"
  end
  language "fr" do
    sha256 "f2c46f4cc72a5d93cdd8669f99ec2b8aa8a16328228c6a1e50ae3e6967d0abcb"
    "fr"
  end
  language "gl" do
    sha256 "3fac590c6cd8fc60f964062d0ae77105ac4b5f380dc94aee93b0386e4f6e3425"
    "gl"
  end
  language "it" do
    sha256 "ebd3c5b830272631f1a06d48ad221b648842cce5333c695fc9e382620f6bba69"
    "it"
  end
  language "ja" do
    sha256 "00e5e7a150907fc3570bfd6087c546304263fe62ee322eb223638b88c1243797"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "007910b604c3feb3a6c030b1cd85586863cb1807ff82cd47cd918b6b5b4a617e"
    "nl"
  end
  language "pl" do
    sha256 "81d62928c51956b870e063277ae9f044f9e2de4a22af3d63362a4bf5ea60f461"
    "pl"
  end
  language "pt" do
    sha256 "15f0c150e3c27f7b0a224e00e4b646428283be9f5958a52fe4f62d22c66df40b"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "e29b14e50819a9864fdea0d0f55e930e63b68b4e41fb87f3992f1bba1fed6d9c"
    "pt-BR"
  end
  language "ru" do
    sha256 "092fccc59173858daffa9953817fd4c2274726f4597596c42170ec078004298d"
    "ru"
  end
  language "uk" do
    sha256 "88d6c917499f81aa9c21174d2f0c21601fd0d0fc25a699e3120b28eac276d1ff"
    "uk"
  end
  language "zh-TW" do
    sha256 "10d869c14a4cc4165106e244e2fa1408e82b446a63d826b33e5d4879ede160b5"
    "zh-TW"
  end
  language "zh" do
    sha256 "d20b420e4054d74a6390d7a8868a5c20cd039f5f40954f995b03e46c9d116042"
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
