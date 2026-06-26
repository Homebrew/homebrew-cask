cask "firefox@beta" do
  version "153.0b5"

  language "cs" do
    sha256 "ad6af84fe437fed2c5986a79b8e5e4cdc6980bc3adbc273147dafcb8509e841f"
    "cs"
  end
  language "de" do
    sha256 "f4dd9b3dec795d6ddd48834fec50687df79c12dc097162e3ae17b56e5a8aab4b"
    "de"
  end
  language "en-CA" do
    sha256 "8d9220d906e688ce791bbd6cda9cbb3262e3b0a2707937229bed57253fc8019b"
    "en-CA"
  end
  language "en-GB" do
    sha256 "37d3cbe78825760096f30d526085067367ea7f9c3e78fbb1d8a0afdc0aa70f7b"
    "en-GB"
  end
  language "en", default: true do
    sha256 "21623ec2066a747498776c39392769260c3e7e0e474d8e5c1c9ac46a950823c7"
    "en-US"
  end
  language "es-AR" do
    sha256 "8e3dfa48d68c62752704921c7cd3f7836a731c87309c5ab397c06e9f3fb8abfb"
    "es-AR"
  end
  language "es-CL" do
    sha256 "c134cf13ef0caeaf58c1dda783864b84a150263c4411050bdd154869f5e2ff4e"
    "es-CL"
  end
  language "es-ES" do
    sha256 "488fda0640faa28e2b907e9acceddbed3a4794b5db99831578488223dd592d0a"
    "es-ES"
  end
  language "fi" do
    sha256 "c1c0224f8e4dd502f2bad15d60d8ea368bd7b0bb77678602ac3dc4efff22e4ea"
    "fi"
  end
  language "fr" do
    sha256 "f34975e4f196f5c07ee7f145256f57ae042b2e6e429a47c133d2f277052ad17a"
    "fr"
  end
  language "gl" do
    sha256 "0b8f6a0746f302ed69b4a9ca64959bdf5c96801b5c0ca6fdecba17508b443f89"
    "gl"
  end
  language "in" do
    sha256 "597842e39c464b2e7c62451de33585ad79343181771bf05bd72d52eca7a3837a"
    "hi-IN"
  end
  language "it" do
    sha256 "0728f0b32c3a63cf09b1ea258177e3dfe4e79ea1a18e36fd8c9d4474568a7803"
    "it"
  end
  language "ja" do
    sha256 "45a4ee8d234a0f54781b6af86a27ee91048bc860ffcc2109422f461501e1364e"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "18cbb12ad87860a7971ac46d739798c11531160a6fdc3939ad1d6078886a34c4"
    "nl"
  end
  language "pl" do
    sha256 "945b28bd6725959eef2458b3edfc67d357f6c38224f9091348100f54e7f50731"
    "pl"
  end
  language "pt-BR" do
    sha256 "81fbfc21c351f485f3f873b3685c1185f599b60ab34d7e81cf6ac0af857fe848"
    "pt-BR"
  end
  language "pt" do
    sha256 "812aee1010e016679a8899094c8c1750d0f9f540f877bc7c8b19b16a3b50be4f"
    "pt-PT"
  end
  language "ru" do
    sha256 "0cfa674b0264ab8cffb62e2bbc6d0fffcdb5eb2a82b62cab6c53c7ca96860f06"
    "ru"
  end
  language "uk" do
    sha256 "68af4b427dfcad451af5bba5ed692a5e1c4e6f1d23ba9d52bf0ede450373ee2a"
    "uk"
  end
  language "zh-TW" do
    sha256 "268342c6ce1ceab8cef54624d6e85d156a7bf125f07c5b12a5f9f7ba3cf482a9"
    "zh-TW"
  end
  language "zh" do
    sha256 "2db4d24299337eccc2317a0e9d923eacd1ff938750f4e534aea7d412b937a859"
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
