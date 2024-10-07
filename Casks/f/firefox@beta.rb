cask "firefox@beta" do
  version "132.0b4"

  language "cs" do
    sha256 "10903abe64e7a7d6cf47ced3a8a720de5e7fe7f9274a6f3a4e95073400310872"
    "cs"
  end
  language "de" do
    sha256 "8aa9fe63e34549958442498bc8963ca794bca079c7e6c21d4c5480258b04b6bb"
    "de"
  end
  language "en-CA" do
    sha256 "2bf8feaf084af7f87d917e7883128aaf2447b6cbb868d866bf98c5aef8849fcf"
    "en-CA"
  end
  language "en-GB" do
    sha256 "50ed01fc1d0800931c9452df3b02e8eb7bc0fc3b90e745791ce87e12e3e2a64b"
    "en-GB"
  end
  language "en", default: true do
    sha256 "8e0a472e55f246f976112227bc6fd927c36175ed44c94853a98337610999007f"
    "en-US"
  end
  language "es-AR" do
    sha256 "490136d8e15b6d1b9c1b029229274dbf7d060d4475d774a6d8485e1a31f6b9b1"
    "es-AR"
  end
  language "es-CL" do
    sha256 "92e883e9c1eb73c4d04d50733346f4c1e313745fcd166984e6d3d7e23a7ee5f8"
    "es-CL"
  end
  language "es-ES" do
    sha256 "f5c7436cffce51b9504ef2ded524ca0d93156ebdaf84378e5ca7236e09b7fd8c"
    "es-ES"
  end
  language "fi" do
    sha256 "ac8902c9265aa4aa1a1074ee54f83077ec9b6aa2de57289b7ef63d0545922d3d"
    "fi"
  end
  language "fr" do
    sha256 "37769c74ae26acd3dc1190c82b675dfd9c2a05633458f07eb0f8274528fafcf5"
    "fr"
  end
  language "gl" do
    sha256 "1ffc2364f9320ec06826576117c1ef94b6337b2671beb6225f66c2a663c6810e"
    "gl"
  end
  language "in" do
    sha256 "9f9b26bc5c34164e3cfe69f586b34601edab6bfe0ad2b3198ef7f1286ef0bf6b"
    "hi-IN"
  end
  language "it" do
    sha256 "3619ad8a207fae28e032a21663be77afd15e6ecb5ce18741d811118bed327ea7"
    "it"
  end
  language "ja" do
    sha256 "f3083dcf57186b967f64c92f816350c430838b599793007f176a0ee7a9f16dd1"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "42a131737aeb6585a56362d6d33abf9c3452dbca762a344eabbfed42a892fc9e"
    "nl"
  end
  language "pl" do
    sha256 "4bfe1c6f410ffc249663016d6eb359398d255712fba5a942af5661a11ff1b5dc"
    "pl"
  end
  language "pt-BR" do
    sha256 "af5de3e077225e4b6b99bd14a78a5adce3b3f3d02a00d2d50297b04c8c686288"
    "pt-BR"
  end
  language "pt" do
    sha256 "fbcd5b38b7d48acf30b2ccac4bb9382e6853dedd49a99326c623607324682c6a"
    "pt-PT"
  end
  language "ru" do
    sha256 "c4d09f7cb970bed933aed614390f106033f891f3594ce20703f731bdc8e7e7d9"
    "ru"
  end
  language "uk" do
    sha256 "83263824e1c3adcb659993871370d36c8b8cb0851cd701b38829de20e7a0f94d"
    "uk"
  end
  language "zh-TW" do
    sha256 "f726469cc3c6121b1ef78fa3d2477c08c8fa85b16457531bbd6acce4b08877b6"
    "zh-TW"
  end
  language "zh" do
    sha256 "f384970dc662073f7503f0f0309c80b94674cc059b78ddc60d839891958447a0"
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
  depends_on macos: ">= :catalina"

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
