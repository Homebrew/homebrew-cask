cask "firefox@beta" do
  version "146.0b3"

  language "cs" do
    sha256 "bf0e6c01f0dacd3156e5423b4bc0c8bbe1f8c99ff8c88a7891e82a07b3f07ee5"
    "cs"
  end
  language "de" do
    sha256 "503a8af48f128be5301723a4f143d8d92b3f3eb6d0b798b0b168da0ff2bc3959"
    "de"
  end
  language "en-CA" do
    sha256 "017d89efedf6611cb51d0623a7dd0c488a91543d886eb34a12fe7327add6fbdb"
    "en-CA"
  end
  language "en-GB" do
    sha256 "b6a329fb4bc399b3c980c24a8939059140f0f7a4baf9e6346536af3cf8e79987"
    "en-GB"
  end
  language "en", default: true do
    sha256 "a2b84419b1f22964ea4fe355cf2613c5e47da1a67f6df58518b3823091e3557f"
    "en-US"
  end
  language "es-AR" do
    sha256 "e75a1d498670560f3849b1cfdb4565347776d32452cf5b8a4d3deaf927dba666"
    "es-AR"
  end
  language "es-CL" do
    sha256 "00925fc5bdcd4fb96e8825a892012352fc41fb29de58da4f1ad24dec847d1c09"
    "es-CL"
  end
  language "es-ES" do
    sha256 "0d93b4b4744428a2719d1f708634f059558e0e9fe52e79f795cdd77ed8c1518b"
    "es-ES"
  end
  language "fi" do
    sha256 "9d56fe5b2ee982694c666140500d2e46a83fba7674c2d57a410e89d2d25bb84e"
    "fi"
  end
  language "fr" do
    sha256 "0f3610e3e93a5ba1ef7c5a8ea5af57d43be7e625dca6f24f0ef9d113ca7d31eb"
    "fr"
  end
  language "gl" do
    sha256 "8bbd8f1a00ad58c6e9609df0f0c5598a52b758213e407c3e99866fce8944a2b9"
    "gl"
  end
  language "in" do
    sha256 "ebf69abe61404bccb44c7df3e0e0dcdd4ca438033cfd10b206687af3fcc4aa34"
    "hi-IN"
  end
  language "it" do
    sha256 "37b834404c60a3a5690cc7536a909b040a4da89cc4b98b872f5a0762a7c49075"
    "it"
  end
  language "ja" do
    sha256 "6537e0447eace321b276cbcbf5448b1a625598cbf3c9b8163fb3f81d45e580bd"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "e970ef3eeba6b8a0434e1d16cb6154810c4b5f3735a6506a850588c42ccdd45d"
    "nl"
  end
  language "pl" do
    sha256 "bb4b03f8aa6c89f66cf95ca0bf6ea6fa5aa6104abe392604f90b1e4afa1d9f23"
    "pl"
  end
  language "pt-BR" do
    sha256 "eda5ae1a96f673a0edecc66d2eba7c4352ea501ae5734ad6a9ee27115a236d0a"
    "pt-BR"
  end
  language "pt" do
    sha256 "ac6b9f4826c6f9ea7c9860a77aac5e46da570dc19f40484a628106c658adce48"
    "pt-PT"
  end
  language "ru" do
    sha256 "f749e33b258b41710377225720c9d17aee371adbbf5547314ff59d372843ebce"
    "ru"
  end
  language "uk" do
    sha256 "9ff149b30c5eb0f375bccccb7bc03221ff6672c711c0557f794ba34313e3e7ba"
    "uk"
  end
  language "zh-TW" do
    sha256 "590b452672ae2165bfb8afe989202acddb0d7465b19161f92c799cbb2bf7088e"
    "zh-TW"
  end
  language "zh" do
    sha256 "cf88bfb75ffcc50daa8e2668e2ad9887910a3bf45e628bc8e30d57c7dca5b847"
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
