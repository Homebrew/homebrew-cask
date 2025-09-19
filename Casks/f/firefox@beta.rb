cask "firefox@beta" do
  version "144.0b3"

  language "cs" do
    sha256 "53b8c234ed911af449ac4285fd0561858157fd21edda6897d830a62f23b47d1a"
    "cs"
  end
  language "de" do
    sha256 "617bce5fd18c4593dddf7aec6e1c432c54be1021a64ca2cca99ad1f3c5b0f4fb"
    "de"
  end
  language "en-CA" do
    sha256 "9bd1b15ab15d65acab827c9619c03a541a1867deec61348ebc8fbf9f9eb700d5"
    "en-CA"
  end
  language "en-GB" do
    sha256 "1052cd38a5ad32eaf7affdabbb876ce01fe3c6918215982b12a7af12cc4fe50c"
    "en-GB"
  end
  language "en", default: true do
    sha256 "2a4cec948bead6832c21c81ea0dcba8bcf7c47ee24ba7aabd4f6abd1fad97752"
    "en-US"
  end
  language "es-AR" do
    sha256 "2666a833aca703398d300d560d267520753b61ee2ee483544f0f6067f074880d"
    "es-AR"
  end
  language "es-CL" do
    sha256 "c94b49490f31ae36dbeb06c8cbff640c0ac1959201be34a011478dafdccde757"
    "es-CL"
  end
  language "es-ES" do
    sha256 "57c7ea1330a06d1aa6ddfed7ae2eb1799f84e02d99c68d7307c045055ea0f540"
    "es-ES"
  end
  language "fi" do
    sha256 "9dfad49a6341a5131539ad83d5d65f78caa78dc7b21d8030d9671f469a2ff6ce"
    "fi"
  end
  language "fr" do
    sha256 "a984f1ffcd3ba89caa880717e7eea59cebc6fd759ba8a7667004a7849c0ac8d5"
    "fr"
  end
  language "gl" do
    sha256 "68903d63b20841a9b47cca2889419cc8928bbc54a80238b3c44e4eb4d471d61d"
    "gl"
  end
  language "in" do
    sha256 "99a4f28eec415775d65678beafbd93b75cc66fcde4706eaa36e4bc82baaac70f"
    "hi-IN"
  end
  language "it" do
    sha256 "cc47a9b72add390fd1f2cfea6a28fad27b69a9c548d7373d24b40e51b725eda0"
    "it"
  end
  language "ja" do
    sha256 "1fe15806f3ae1cd127c11535f87dbd887bdfe5d0653603acf9c42b62d39d30da"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "089f859beedf0ea4b399ccae90f32eb355255f44a43125317dd5b3bc3cc8cbef"
    "nl"
  end
  language "pl" do
    sha256 "f1cf66a48f8c2469f180a66c504e2ed511da647ab3053745be74e98fd75ebc4e"
    "pl"
  end
  language "pt-BR" do
    sha256 "66dffe416b92bbe46781199c47456ab60e3b3ee38e2790188beba38d0b579315"
    "pt-BR"
  end
  language "pt" do
    sha256 "f993655584a47dea2d69b7d23799213643131d0ef045e7298c3b29361e68324f"
    "pt-PT"
  end
  language "ru" do
    sha256 "b37ebdcce6c7510eade499ed5ae840e12a02bd9a1f3cddb53b28e848fec85687"
    "ru"
  end
  language "uk" do
    sha256 "caa05defda7dd76b2ace048c6f58de0ac615a20d505b6a63b99c4485aad883d1"
    "uk"
  end
  language "zh-TW" do
    sha256 "2340010429a9b79af3bd354fbacb6af2ab8c114fc6416c194bda720ea1e9ff31"
    "zh-TW"
  end
  language "zh" do
    sha256 "02dc504b7a1a222f311647027d8b9b023f47225f3056686cd887c38945b5d44e"
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
