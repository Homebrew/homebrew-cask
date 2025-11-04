cask "thunderbird@beta" do
  version "145.0b4"

  language "cs" do
    sha256 "3921cf37eb5a8cab833a875b6e94950f25e214ad3832b6ece001031df017b9e1"
    "cs"
  end
  language "de" do
    sha256 "993367cfb4ea111ccad2c9167c105d9142cb0cbed9efd718d0076184b613605b"
    "de"
  end
  language "en-GB" do
    sha256 "6b59895f26a4eef6087329d08d70d17357da55ae03f664ad0e8570d0b328d73e"
    "en-GB"
  end
  language "en", default: true do
    sha256 "4db84c3f173092a7b99b731f6fb3e72dfc7cb6ada8eaf736113d35a8a787c6cd"
    "en-US"
  end
  language "fr" do
    sha256 "f8f4e81b905df538ed3e4fa42d32b26d2c5fa3b564cc8634fb078f53af3f680b"
    "fr"
  end
  language "gl" do
    sha256 "9a9ea4fde79d55b9c75e26ab4dae5e9a21e2382ed2478b6a267e18735b41b77a"
    "gl"
  end
  language "it" do
    sha256 "d82446adffb9878fb7e1ff590151a624b0360c24ce3b053097ef813f43a58344"
    "it"
  end
  language "ja" do
    sha256 "ba7f62cb7b0ae86ded8c77612426e5e9e30b1b95e07b35d6de8f94f89d621f1a"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "d15ab55859e0aa95329f6635884d9f073b4d0695b9a9947a4e1322e1796fa37d"
    "nl"
  end
  language "pl" do
    sha256 "343d9db2ed4286640656809d9fd8ad5d3a938da781c89526a262c6b1a18b4ed0"
    "pl"
  end
  language "pt" do
    sha256 "2f9d0dfd828ad1462b0b73a0be3fb3a4dc617fe1c965595c39d16047e6221919"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "7316d791545f2f1e6beb1bd91c77754cfbfe2ba49ba1970067812dba8435d684"
    "pt-BR"
  end
  language "ru" do
    sha256 "5a6125ef443690cfa9625b470a99afcc749826614a0c979ef52f84c0291c3082"
    "ru"
  end
  language "uk" do
    sha256 "ab61fc91839f783b830b6a67e6194a3b10904c3d134e655476c84c633d55c04b"
    "uk"
  end
  language "zh-TW" do
    sha256 "d6dbc4a1329003bfe7d47cf8c609b21637dea8b13c15395e9ad9a88f94ae6a09"
    "zh-TW"
  end
  language "zh" do
    sha256 "69dd7ad1032f296e15cc4da8dec2370c0ea4496029c9feadc391e4fc7a4615d3"
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
