cask "firefox@beta" do
  version "161.0b4"

  language "cs" do
    sha256 "58c176f56efc52597f530869f12c59245968509577c58049c00a3ecace4f92a3"
    "cs"
  end
  language "de" do
    sha256 "15b56b9c109fce483de703f9ffe6c13f067fc968338447924dbe8f4de2279278"
    "de"
  end
  language "en-CA" do
    sha256 "1cab298cc3995531906df8576754bcd7aa038fc67d954278dc12196f00c14d51"
    "en-CA"
  end
  language "en-GB" do
    sha256 "0da5741eec3077a9db2091a71e9b03f4d76514ed6d40c640281b12fd37034142"
    "en-GB"
  end
  language "en", default: true do
    sha256 "f1d5a4db4d325022d746edafa767af171496ffdd26af1e45de8e3bb24784fb3d"
    "en-US"
  end
  language "es-AR" do
    sha256 "b15227ad18e55e3cbb6698281fddcda00047ed4499c4611bfff0a150c5cb1dff"
    "es-AR"
  end
  language "es-CL" do
    sha256 "743440a4820b1f6937f04163210649a5b6eade9070d12ef6e00f72e3679ced4b"
    "es-CL"
  end
  language "es-ES" do
    sha256 "3626ed0e6298f2c15cccb603bc7b2bcbbc531be69d29c1231ac46203988691c1"
    "es-ES"
  end
  language "fi" do
    sha256 "5b26651be40a9f3683c2cbb2f88316170603ed7b7b3c1ae2254c3a0bc00e966f"
    "fi"
  end
  language "fr" do
    sha256 "c2b6673eaafd0d5d6598d4fc58f1c742b7ee7c1db28ef6b35b3fedd67e438153"
    "fr"
  end
  language "gl" do
    sha256 "df241c52567367067793be9791e8cdeaf59c03b55b14f8e89578a2842ae03de3"
    "gl"
  end
  language "in" do
    sha256 "ab27c7734f6284dafefbcdb2e422ecd3c48920e25e39e0f2173d6dd3a5d6fa92"
    "hi-IN"
  end
  language "it" do
    sha256 "6ada1bf76be688b1706e75af08fa31470b0c4e2e5d37c11b38b8ba66e718387e"
    "it"
  end
  language "ja" do
    sha256 "6f7399919ca3710c7e964415706728ca864f4e41b0cab6e4168f975fcd160ef0"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "ab80f909e36ce263ae236c0e238e2ab068ce86a4999992b95f56b7de0ac40b05"
    "nl"
  end
  language "pl" do
    sha256 "9a1ba479fe23891a075cc1297880e2ba48985080e5d022e31a35b094b6d25342"
    "pl"
  end
  language "pt-BR" do
    sha256 "6a00e0d0df695a0a0c08ab660bac4091a7c7eb8b545abeb67b4d67039a5620df"
    "pt-BR"
  end
  language "pt" do
    sha256 "456dd955ff01d70f1338332be56e86b445f92066a89813df2be551ec759868d0"
    "pt-PT"
  end
  language "ru" do
    sha256 "841eedd804d916e07437e0df6a1a9ea57acfe6f64971ab3dbc2723482cf8f43c"
    "ru"
  end
  language "uk" do
    sha256 "99b5683ba4f949f98a86f9f0a6494551f8c0e1bafc480dda569a3773c200b9c6"
    "uk"
  end
  language "zh-TW" do
    sha256 "bc81d8d1d8567c2b2904dac71d911713067212f3ce36fc6239b86e4f07649c4c"
    "zh-TW"
  end
  language "zh" do
    sha256 "4714c0966f26fbceb281be593fe37281ae25a3946e5731ba5bf08a2a5da4f0b3"
    "zh-CN"
  end

  url "https://download-installer.cdn.mozilla.net/pub/firefox/releases/#{version}/mac/#{language}/Firefox%20#{version}.dmg"
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
