cask "firefox@beta" do
  version "141.0b4"

  language "cs" do
    sha256 "5ac762dce5b201f9da27b015e6501fe661e7f0bfe748567e50036379fcf5d6bf"
    "cs"
  end
  language "de" do
    sha256 "7981f9ba1c0c601ff33f60e2cf4a5a349bf5c2e41fe58027870e764ee3d1095c"
    "de"
  end
  language "en-CA" do
    sha256 "83cd19879dc61f9d6c3612842ee6d20abd048272aab5e75e6eda12ec40d3a3bf"
    "en-CA"
  end
  language "en-GB" do
    sha256 "09293b665e3b0af9623b792ad1b80f0e5985ccb99e1e6e951c0c767dababfaf3"
    "en-GB"
  end
  language "en", default: true do
    sha256 "edcd3074f81a3e318aa672db0ec48f2c57c9eebbe9275e22fd64a42c9eb8d29b"
    "en-US"
  end
  language "es-AR" do
    sha256 "36cba62cefdfab88d7cbe169240ad8db0d534a28c108ce60c1a272cf14b917fe"
    "es-AR"
  end
  language "es-CL" do
    sha256 "220e50f8dffba1b15ae36ad659fa6f47759a996412398fac4d70b82a2e66a469"
    "es-CL"
  end
  language "es-ES" do
    sha256 "34924c7b2c7a21985b3c4428ec6f09a8c389425ee05e40b243c18bc31a0edc5b"
    "es-ES"
  end
  language "fi" do
    sha256 "f95793b67bc27bf87323b11863a562d208847d7ae8d0199e297e2d1dd167b998"
    "fi"
  end
  language "fr" do
    sha256 "8a7b6e7d12d80735d5053ce4a0cfa624c5229c07366240b1fe9748cbdbe56e73"
    "fr"
  end
  language "gl" do
    sha256 "cef41048ea32170f6df79f224f80f61c0f9f12087f4640fee2a9d116529f99eb"
    "gl"
  end
  language "in" do
    sha256 "4398b5eb18f17ff6e997f20f53090d038e1f51d7259a5ead7ee7455ebf36d6f9"
    "hi-IN"
  end
  language "it" do
    sha256 "88df1e0d04db618d9cc6f9516f5f2910811560e7a840ee393e2ed2113d1816e4"
    "it"
  end
  language "ja" do
    sha256 "2cec76f6698dfbc0bda62781b28223ae3146ba64eb8c47594e2cb482057cb770"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "f22214ac6818346eb01b15b318d731220d7c6d8644aa76aed3dfb62cc81ad77b"
    "nl"
  end
  language "pl" do
    sha256 "4e9a7b5e9ea3dc57882408921cf52e6714a0a2d76eae8acdc8d2c7f091fbd542"
    "pl"
  end
  language "pt-BR" do
    sha256 "2a17e605539f8c08d0cac735c7bc106c0450c95fc1d5c9de5370808d5d1a9366"
    "pt-BR"
  end
  language "pt" do
    sha256 "71edefd7bb7eba10521acfa7b5727a58082bdd3c74750cf6a6f0b17e4bb65224"
    "pt-PT"
  end
  language "ru" do
    sha256 "1b6dbf0367ff76a6daa90d192722f582ba90e98c27de1750f44491642a6117e4"
    "ru"
  end
  language "uk" do
    sha256 "bd655e44b64426bcaf61a08a2c413fe4dd6734553219cfd3f51a79b2949e3022"
    "uk"
  end
  language "zh-TW" do
    sha256 "0ed8c5adbbe086b6471c835a7e395dedff6d3e8792056fc94f8ef838b92c2b8c"
    "zh-TW"
  end
  language "zh" do
    sha256 "1a8e249eaa6a88ada96c7c356042aded9d7ef95a8b5af217a599fd588b795717"
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
