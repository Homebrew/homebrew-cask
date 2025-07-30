cask "firefox@beta" do
  version "142.0b5"

  language "cs" do
    sha256 "0f78d2db1bb614dc8f72c0b352b5182eb95d4dc6359997a871b8c5f4c542f9a9"
    "cs"
  end
  language "de" do
    sha256 "956114b2b5f855766d6a6081dd259af4e9c7ae45300b41ab8181dc2ecb527b7c"
    "de"
  end
  language "en-CA" do
    sha256 "6991ea7bf184bbc6f425b8bbe8494e970cd31f8ae247f8902bdd24acb7145aba"
    "en-CA"
  end
  language "en-GB" do
    sha256 "9de22bc96776a26304a1250adbd435d6f86efd04065522fce1a09bb437841122"
    "en-GB"
  end
  language "en", default: true do
    sha256 "1be5337ee084e9f9c957b08178be69e881886554d29f91487ab41e92632d3c4e"
    "en-US"
  end
  language "es-AR" do
    sha256 "40bf807603b396b6227bb64c1e6fbee8ae6d765ec892bc6c419ed9849831a8a3"
    "es-AR"
  end
  language "es-CL" do
    sha256 "3d598d43069a754aa3c5cb90edfd44ea6cd71d6ed078adc58e046aca108b5ecd"
    "es-CL"
  end
  language "es-ES" do
    sha256 "106dbf7e92d050c43edfdb7c4a5f0d523e978ea453bbd085998b560a98fc45d9"
    "es-ES"
  end
  language "fi" do
    sha256 "8ef8baedd0079192dfe85a1ee06b9d0c2d372973ae3f5bf346b1b2ffa45306e3"
    "fi"
  end
  language "fr" do
    sha256 "2f431240ea3a654dd0f3d277e950551cde0eaf545a55465f78b7f6615ac55b68"
    "fr"
  end
  language "gl" do
    sha256 "67f38b73bdd924335a037306444e5fcac7a0f9916ef56d79a3fc17953a293fb5"
    "gl"
  end
  language "in" do
    sha256 "982288cf490f2215f58076a3a17e2f0e754b7131ddf50e7613d80c1099cc6189"
    "hi-IN"
  end
  language "it" do
    sha256 "cde92ec8efda965c230f4250db3c1a002d4ca19e61ded8bd90f3139ea7764074"
    "it"
  end
  language "ja" do
    sha256 "65ce13fdeb675d05e5aba5225a58967e19efbfa8d4cfe726747f35fdf254d574"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "f6deedbf0618c11cc4e03c1dd505796c50dd349057765522ae38bfaac120fd98"
    "nl"
  end
  language "pl" do
    sha256 "5cf8f543a7f25a5068dd5a3672efd0db95d43a1a61e17e774ffeb633419a2c5e"
    "pl"
  end
  language "pt-BR" do
    sha256 "4ead92db4dbe21a6c33db001c11e499034032a49b866c8d14ec459bc3df2f5f9"
    "pt-BR"
  end
  language "pt" do
    sha256 "b6e15df3abe6f19a8bbab450ce65fdf8005339b528c43a5e98fe8aad9c48100b"
    "pt-PT"
  end
  language "ru" do
    sha256 "2d2ff16dc9077f34361fd25db10ca1f1b58b8da73b9e2e027036e11b87742cf1"
    "ru"
  end
  language "uk" do
    sha256 "f77a637d16183aaf8512d7549559ef8034059d7ebe9d277d37fb1a949492febd"
    "uk"
  end
  language "zh-TW" do
    sha256 "db788dcb337c25dd493113009366668ee828c4f14ee002630252e5d2f35d931a"
    "zh-TW"
  end
  language "zh" do
    sha256 "f16bdec234630f3f7da053f6169c6a2aac0b9a47df6cb5043136a65e54ad05ab"
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
