cask "firefox@beta" do
  version "158.0b3"

  language "cs" do
    sha256 "a69a112525df128297966af63d1617758a8b118cbe2c34735cc91656f6f47559"
    "cs"
  end
  language "de" do
    sha256 "72aeb30ed9116e0ca7a20532589b42595ccf4649df1c7c230cd0e11b733d75ca"
    "de"
  end
  language "en-CA" do
    sha256 "f91d09c039a6dc88c77616d609ca800368f8414b13534df000b88f2b459fa907"
    "en-CA"
  end
  language "en-GB" do
    sha256 "8729d819a942cbb6066db2af71862a5ece890159f0ef7d75ed2425410e7f16a5"
    "en-GB"
  end
  language "en", default: true do
    sha256 "f4d6efbf252e018c8d2ed36d031e24d03149c39b80ce1c4c3bb84ca4a5a5ee74"
    "en-US"
  end
  language "es-AR" do
    sha256 "6adf94700a30b683f198d2c5fc82ae91ef153bfe15cc022a6bfc372e14c30fb3"
    "es-AR"
  end
  language "es-CL" do
    sha256 "5149d3ac4897c2345ed44daf68ca42026086153d9c4a07057238d09b16785a1c"
    "es-CL"
  end
  language "es-ES" do
    sha256 "75eb4f961769d3e750bc887a72b2fbe3d90fd43fefd26a6bcc580d59be6dfa8e"
    "es-ES"
  end
  language "fi" do
    sha256 "4f47fa6b2777720a158ca2368a6795e69ba118cf440b79d67855f1899188d200"
    "fi"
  end
  language "fr" do
    sha256 "69cb1f914930c91d1d2f0ea5a7adf43c507399da15149f24ebd8822075645b6b"
    "fr"
  end
  language "gl" do
    sha256 "2872f1e52def8b3ceee3d15d20ec2a5db66b53280ca2ea5c3b72e411a6ca8f19"
    "gl"
  end
  language "in" do
    sha256 "d32a16fde9bcac25955315458c85fd04580936febbca2706cc65c621d45f798f"
    "hi-IN"
  end
  language "it" do
    sha256 "8ed0b559aeb0e4fc02b43caad34efc5037cd6c9e26316d0feddc2b88bed6a72c"
    "it"
  end
  language "ja" do
    sha256 "7035b308299657c36a90de60d111a57d59b82acaebf281597a3191382aceca2a"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "b620c9e58f89082dc1a7ebcb8d84773796193ec91f14729b1ec842ffa83a0e84"
    "nl"
  end
  language "pl" do
    sha256 "ebe37d3d7c8d800b56d71531eaf928f53ccdafbd577a4559964a1f47e0736da3"
    "pl"
  end
  language "pt-BR" do
    sha256 "c6a189d1010a836e42755bbca39fd90202c107d2a71b50acb17313879fc72d5e"
    "pt-BR"
  end
  language "pt" do
    sha256 "88ead0a319de268b556733dade379ee64deaf81da79a44193e1c8fb115e4b38e"
    "pt-PT"
  end
  language "ru" do
    sha256 "814bba3b323dd807f321b6179f4888bf03cd2916afc586757bb8252b5a9fdbe1"
    "ru"
  end
  language "uk" do
    sha256 "535e5cbe3144a402cabfd26182717b52c81d35522bb4758e55147355a713963c"
    "uk"
  end
  language "zh-TW" do
    sha256 "2fab0cded2d7f1891948679424d4ef1bb9044a459f3485a3458570cae3133baa"
    "zh-TW"
  end
  language "zh" do
    sha256 "f49b2c6b59d37d281a19e289f2aec8eb895e4200940e9f5f085556b611d7bb19"
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
