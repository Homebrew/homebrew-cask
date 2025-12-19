cask "firefox@beta" do
  version "147.0b6"

  language "cs" do
    sha256 "3f051061dba7b0da81ec9873217654ad390a397ee6d6818c87bb7d5ee0f1b0bd"
    "cs"
  end
  language "de" do
    sha256 "d2770eba66c05ad0702a52575b0468b64f40673c1e8bb7aa867a73a2f29e92ac"
    "de"
  end
  language "en-CA" do
    sha256 "23601fa56c6e05d6f789d48b9f190f8b650ce0ffa20865f017b24b60f8f7eb6d"
    "en-CA"
  end
  language "en-GB" do
    sha256 "53f71dc1fd1eea3b249b8692ea0acf82324fe2987acf8aa0b181017c507c61db"
    "en-GB"
  end
  language "en", default: true do
    sha256 "63a8cb332ad6209e129b025fb88c9f7e739e58ed031917d94daec80605518e03"
    "en-US"
  end
  language "es-AR" do
    sha256 "e05696fbe95d7cc9747b51e0a27aa0fad0db71c4c6a49169163c47015d9c7b3b"
    "es-AR"
  end
  language "es-CL" do
    sha256 "d753f1d99f75231255f4aa452a61e26b51fc94562f293ae20a127b63d06e012a"
    "es-CL"
  end
  language "es-ES" do
    sha256 "608a6a8832ad14e8b7d33115867201ceccbc0f61a67ef47e654fead5e231ee01"
    "es-ES"
  end
  language "fi" do
    sha256 "bae5a279795c7d5a9809a08587461785c156d3fa6f97d4aead548ddb8730d8ab"
    "fi"
  end
  language "fr" do
    sha256 "ec9da031c3ebce782aa096f152c671793f4ac3873d454b44b42c1fc48ade99f5"
    "fr"
  end
  language "gl" do
    sha256 "858540b91371c84bee47d4c81c8523e527cd7b1066300ad79c12a091dcbb7d35"
    "gl"
  end
  language "in" do
    sha256 "f119efbecfeb4cd873ca41c7742715acf5a7053fe8ce7e2d1b4db5d334ee1858"
    "hi-IN"
  end
  language "it" do
    sha256 "4278fa23fb41685ae230368b35e861651d256394d217b6c24bacb4e0356be9b7"
    "it"
  end
  language "ja" do
    sha256 "ceabdf494729fc610429ecd05c6db26ddb5b30f92401328629ae77a894cfbd72"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "d673a74dcb3adc9de38d486b5013dae3602ae7a5023e72822a100f5797d55764"
    "nl"
  end
  language "pl" do
    sha256 "6ad55cc750e791bf5655f00aaab51a6bf4b5992da7a031f190c7062c52a80a1f"
    "pl"
  end
  language "pt-BR" do
    sha256 "991a3e01674325b0a3d6d7e55a3d2ed477ab931ae28cecce6bf188481ee8c1e1"
    "pt-BR"
  end
  language "pt" do
    sha256 "659efe7be6ec61c32ea7866063bb63bd64fa03037f649030c3dfb85f226ec553"
    "pt-PT"
  end
  language "ru" do
    sha256 "7c268172f97694c8c2e6b52322196cb68be268abcb53cef8f1fe04af07a30c13"
    "ru"
  end
  language "uk" do
    sha256 "84210e6d9224747ca63790aa42932b5c8e37716e79eac45c06ba5fe20fdaeb66"
    "uk"
  end
  language "zh-TW" do
    sha256 "7a0a44f40348c8c1548fbd58f112a9c98dbbb07023ea6dab53739344333b05b0"
    "zh-TW"
  end
  language "zh" do
    sha256 "d7bd9703295ac1c4f073a0d990545039b637b1014a84eec2ff3d0898a2383820"
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
