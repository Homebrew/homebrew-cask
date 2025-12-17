cask "firefox@beta" do
  version "147.0b5"

  language "cs" do
    sha256 "9a838253a83108bf84f87ac41cb8fed60ec2ebcf877e4b66e9aeaea7e3994f2f"
    "cs"
  end
  language "de" do
    sha256 "92fa09a370628fca705bda06ac18ef8c9329c034a30829737514f44f046cf745"
    "de"
  end
  language "en-CA" do
    sha256 "ca36aefe9255aa65d787503b0fae3537d6b9a005bec79f42180f4e5c5a28f067"
    "en-CA"
  end
  language "en-GB" do
    sha256 "83a510736946b726cb19d89be4f9e3ae6b2cbc1ba29aeca9a8a19756661a38c6"
    "en-GB"
  end
  language "en", default: true do
    sha256 "058cd33bbd6bc95c3e70de3831e814d933391d6e9d6830f4eb15e75ce060be1f"
    "en-US"
  end
  language "es-AR" do
    sha256 "bcbb7fe36e978af360e8fb8a8dd34a52cb6614318eac58a8283ef3f8e3ec61d7"
    "es-AR"
  end
  language "es-CL" do
    sha256 "14409da73b82884d679a43f5c78a0f39af4fcc941865a2601fad2501bfd68f05"
    "es-CL"
  end
  language "es-ES" do
    sha256 "78797589db7d8c2afe23b6039804a6552b026d57dde2ba11d2227caa0286fc3f"
    "es-ES"
  end
  language "fi" do
    sha256 "10478d09d36c2fbbfdc68b21c3b835f230ce2e941d6f4d1dfdf0e9f59c25aabe"
    "fi"
  end
  language "fr" do
    sha256 "4435e81c7b3b469473bcf08e4238abc25cf675d9a8b56c2ecd97c71fdc6aa098"
    "fr"
  end
  language "gl" do
    sha256 "971901988f863cc392f849bede83640e36ac75b5b0daee188a9e1377d8c86d56"
    "gl"
  end
  language "in" do
    sha256 "d4eaa1b9237fefa33cffe7446e1d8bdd8f81159fafdef11063fd71186d40d4ff"
    "hi-IN"
  end
  language "it" do
    sha256 "2b1743a0bd166bfbff800ba47d3ab01901d872547292a1bdf0a9039237861881"
    "it"
  end
  language "ja" do
    sha256 "b39b9441d5e45d8a1869e67d1b477db78c92f2944b6b39f3421e82f408f2661b"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "2fbbb4baadc6d42cce56ee42c0437465f2f4d0b8e975c2e3d5a91bb382a4476c"
    "nl"
  end
  language "pl" do
    sha256 "907877a6c160f34f68d59d5d8966593bdaf586de8e885e9b6649190ceb122273"
    "pl"
  end
  language "pt-BR" do
    sha256 "17ec1cd979a367afc4fe51f3285f0cf14e719b72762f58a4ebcb46e88a13563c"
    "pt-BR"
  end
  language "pt" do
    sha256 "8648fd7071988bd7127546d64115f66ea65f35791eff100d76cb8da6a8eb563d"
    "pt-PT"
  end
  language "ru" do
    sha256 "af6e1bd4ac0464ae1b1565efecdd2ec50ffe5c936c1df879f0763dc1f1eef1df"
    "ru"
  end
  language "uk" do
    sha256 "a07afc8e105ff684c89a17b8dc5ee704ee69a00a5ba63489d99b99a373da1b4d"
    "uk"
  end
  language "zh-TW" do
    sha256 "9bbd425d6c8ff0f4446727955ff0004144bee6bb7fd0838600e03a64ff33a27c"
    "zh-TW"
  end
  language "zh" do
    sha256 "493f40b2da758b58291fd44b7bd934a7df37090d64ef4705f78e8520cef10367"
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
