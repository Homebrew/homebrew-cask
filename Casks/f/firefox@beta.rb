cask "firefox@beta" do
  version "149.0b5"

  language "cs" do
    sha256 "e67d9f60f36f0cce1307596aa41c36299999524068eb23c582494a52d28d96c6"
    "cs"
  end
  language "de" do
    sha256 "52d6dbf6440afceaa7869c9ec6c31dfdcd784aef54eb5d317dd8a47e472e89d7"
    "de"
  end
  language "en-CA" do
    sha256 "6ccc950147fbf82a1b1d2a1076f8f0706f6af1c0ab73e5ce8ba141ae9159cd53"
    "en-CA"
  end
  language "en-GB" do
    sha256 "ec40db1a43203648f9692e0d784443493219180bb383f6b9cfa6f5f78308a088"
    "en-GB"
  end
  language "en", default: true do
    sha256 "7bca909999df7ce1a6d6b8a1ebcf121f9f85a2f20dc0205d70362b9de813df51"
    "en-US"
  end
  language "es-AR" do
    sha256 "2e20b84fbe7cafb64fd6b3f8766bb6ee0181c3df3cf0d1b93a8c99120ae68d9d"
    "es-AR"
  end
  language "es-CL" do
    sha256 "1def32a4f9ead93fac178965376063b571537fa080f4e53e349104f07526f662"
    "es-CL"
  end
  language "es-ES" do
    sha256 "82426ca509cb425600ec607ce835eba627c1d4559e57714dffbd2e9944f8a43a"
    "es-ES"
  end
  language "fi" do
    sha256 "2f3879a58a4f952f537b250a993836738e6cb4c0e7b495e38c3100f6220bf715"
    "fi"
  end
  language "fr" do
    sha256 "2652e9fc521f29d36f68bc249fc7d16cdecbc669ce70621719b0ed36b08ca30b"
    "fr"
  end
  language "gl" do
    sha256 "1ac965b21cfccd8a0fc0e1a62a7018a3558b16134df27dd54cfcf446407fd2f1"
    "gl"
  end
  language "in" do
    sha256 "d5fc3b0f0ed47852105c9429357358563ffa87cc60146b610e96b933ab171aad"
    "hi-IN"
  end
  language "it" do
    sha256 "76f4f1f98baaa6dcb814d7b452f360dba08fd11cfc9e612bd4ee6d20e5e89659"
    "it"
  end
  language "ja" do
    sha256 "b0e50ea206c561a9b440687b51c147e8eb5249ec2a8669e73da2eb4bb9b1abe8"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "facde5626c7ba588245496d0865ea61fef28d3891a31f1e9cc9efef3ba4b1a75"
    "nl"
  end
  language "pl" do
    sha256 "393d5907fa78d0f4f5df9432f1219509dc9114ad06b506f565995cabad503df4"
    "pl"
  end
  language "pt-BR" do
    sha256 "b2de00ac9b405adaf3ebb5ad53f85f162582192c8c22329b16dd3629e8458ad7"
    "pt-BR"
  end
  language "pt" do
    sha256 "06cf27367939ecec273ee57e922140f7c2ba8805062c1178e520bf5f97fb25e8"
    "pt-PT"
  end
  language "ru" do
    sha256 "3882c92802b9b7b130ec962714e8881d2e6c0109ecb780cc7a956865e9551e57"
    "ru"
  end
  language "uk" do
    sha256 "d95a1be045cd7e68320fe6e3d3c916de886b43d7efda93ae6e5ff37e188bc5ff"
    "uk"
  end
  language "zh-TW" do
    sha256 "623c6a8802c204d1d623e9a54f7287a6fdef16514cd26ccb99435807de910a7d"
    "zh-TW"
  end
  language "zh" do
    sha256 "e6295fb2d2b06dd293c83c49e833aae35565fe4bfb8e516dcdeda95f66369a09"
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
