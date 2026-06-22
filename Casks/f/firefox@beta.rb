cask "firefox@beta" do
  version "153.0b2"

  language "cs" do
    sha256 "f8af4f27c2553343b22d8ecfcaf4c1063a4d7c3333277168885767f496a3c5d4"
    "cs"
  end
  language "de" do
    sha256 "cbb04f70a7644204d183672b78ad9eaa65aad05d0eac9c141c36bfe1b80e13f2"
    "de"
  end
  language "en-CA" do
    sha256 "58d4900411112e1bd86d53a4be01e3fbfdf42f35bff3698e4084c4b9b201784a"
    "en-CA"
  end
  language "en-GB" do
    sha256 "45443afd7356c5f63229092956f97fc19c8a3993a1d537b937a4e463760f189f"
    "en-GB"
  end
  language "en", default: true do
    sha256 "f5426233d55781684da4784d8af5ee99c06030a13b0ac733c0b4523a07158944"
    "en-US"
  end
  language "es-AR" do
    sha256 "481422141dfb89e45f34f2b519888a54130ec35304c91b66773493032bf4c1bd"
    "es-AR"
  end
  language "es-CL" do
    sha256 "54de5f02f749313bec72c042d22bd913acdfe53ea9b528a8676593351eba7d93"
    "es-CL"
  end
  language "es-ES" do
    sha256 "2c6b2686784d9f0b2dd4e80dd79e649d46087eb10d880f596b3b0582c762bd2b"
    "es-ES"
  end
  language "fi" do
    sha256 "949433a9071c9465289aeb7dfaccf3cb9a8718a9146cc61b362b4028d70e68f0"
    "fi"
  end
  language "fr" do
    sha256 "3b821da9043acde678ff863f20f1165fcec158e61704bd24f626b61c4161ca0a"
    "fr"
  end
  language "gl" do
    sha256 "20fd2d6ca92c2b5a20f264cb3a3d4edc178e12dfb35e202d2ab0925ccdf777ff"
    "gl"
  end
  language "in" do
    sha256 "96f8520c6be2c2756ee3896362a33d0675dea36f5c469a944340550e9a02b5d9"
    "hi-IN"
  end
  language "it" do
    sha256 "b80f14070644ebd975cce0cd10c0fae9ce50680659d5fa62be2991d822f8f105"
    "it"
  end
  language "ja" do
    sha256 "308abc26fa0383a44564cd629872351152cc020c2c5c78b8d3063ac31ab8808a"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "a946f09e87e8802e951551286ba4f818abfadb978e9be901f21e4a9ee58ad1cf"
    "nl"
  end
  language "pl" do
    sha256 "ff1c1dc30656085999d3a814f0dd6ea4287667fb0e3e4f40c80a91f183493e48"
    "pl"
  end
  language "pt-BR" do
    sha256 "743f39937011a03b0a065aa226b32a566f4ed38153a619790aed2aa351ebee2b"
    "pt-BR"
  end
  language "pt" do
    sha256 "3440c6b17816d7af350e6774482a94c09fdb3ecbd1ffe77a9aa659ba1916c197"
    "pt-PT"
  end
  language "ru" do
    sha256 "ba4cc3841e78e071ccd951f29da1a55016b6bbbce6c78cc8d9e8dc24b65df400"
    "ru"
  end
  language "uk" do
    sha256 "1cd40fe9e78e534b1a93e36d2ef8581eee1cf468d9dd1a6accdc82694bbf71ba"
    "uk"
  end
  language "zh-TW" do
    sha256 "787db7f14dcaa1c76e4c2c52d78e3008a9857e849f11045f35ba6fcf69849e80"
    "zh-TW"
  end
  language "zh" do
    sha256 "c16d14b38cdd3f12052cdca90d4c02acf62c0b350ca5f12b479804b174c65421"
    "zh-CN"
  end

  url "https://download-installer.cdn.mozilla.net/pub/firefox/releases/#{version}/mac/#{language}/Firefox%20#{version}.dmg",
      verified: "download-installer.cdn.mozilla.net/pub/firefox/releases/"
  name "Mozilla Firefox Beta"
  desc "Web browser"
  homepage "https://www.mozilla.org/firefox/channel/desktop/#beta"

  livecheck do
    url "https://product-details.mozilla.org/1.0/firefox_versions.json"
    strategy :json do |json|
      json["LATEST_FIREFOX_RELEASED_DEVEL_VERSION"]
    end
  end

  auto_updates true
  conflicts_with cask: [
    "firefox",
    "firefox@cn",
    "firefox@esr",
  ]
  depends_on :macos

  app "Firefox.app"

  zap trash: [
        "/Library/Logs/DiagnosticReports/firefox_*",
        "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.firefox.sfl*",
        "~/Library/Application Support/CrashReporter/firefox_*",
        "~/Library/Application Support/Firefox",
        "~/Library/Caches/Firefox",
        "~/Library/Caches/Mozilla/updates/Applications/Firefox",
        "~/Library/Caches/org.mozilla.crashreporter",
        "~/Library/Caches/org.mozilla.firefox",
        "~/Library/Preferences/org.mozilla.crashreporter.plist",
        "~/Library/Preferences/org.mozilla.firefox.plist",
        "~/Library/Saved Application State/org.mozilla.firefox.savedState",
        "~/Library/WebKit/org.mozilla.firefox",
      ],
      rmdir: [
        "~/Library/Application Support/Mozilla", #  May also contain non-Firefox data
        "~/Library/Caches/Mozilla",
        "~/Library/Caches/Mozilla/updates",
        "~/Library/Caches/Mozilla/updates/Applications",
      ]
end
