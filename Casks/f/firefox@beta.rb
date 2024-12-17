cask "firefox@beta" do
  version "134.0b10"

  language "cs" do
    sha256 "cc7d4b9fc61605a8fab251dafc738231bd6a4169fb52255880913be294f0630a"
    "cs"
  end
  language "de" do
    sha256 "f624e82e7984532d10435bfe9644f410b485557427c5fafc241ae200b8c8d7c7"
    "de"
  end
  language "en-CA" do
    sha256 "578cacc58540e18bf7e434d2c5434d10f5859e9001b735d41a4a8d94822fcf00"
    "en-CA"
  end
  language "en-GB" do
    sha256 "0e01e255ffaedaf7a3e4f19f7b5cae83f368aff95c0a74f359dfdabd32ff6fcb"
    "en-GB"
  end
  language "en", default: true do
    sha256 "d6e74c4f89b4a6d2c0cd81f322ffc45c1e8b391d646fbc61533fc618b8f12ead"
    "en-US"
  end
  language "es-AR" do
    sha256 "12743ebd2d12023738f8adbb7d055e069c7bd4fbb82bbaae43b5ad79f61ed869"
    "es-AR"
  end
  language "es-CL" do
    sha256 "a40c04d98b8dcec8ebef64e49cdc42c40cf2e21f402b1e04bb6ff00029f7aa3c"
    "es-CL"
  end
  language "es-ES" do
    sha256 "b6ed8b7891f0077fb93da6c99b0e3811f7a23e60fff352c2bc0e1cc51b30d98d"
    "es-ES"
  end
  language "fi" do
    sha256 "84d111cbafbe1dc9342bc56600cf3079741372fd08b99ae5ed3a89f63166c087"
    "fi"
  end
  language "fr" do
    sha256 "841c5c8610788150fa66f67fb948f4f0a656e8418d60872b5e7fcee250b1cf57"
    "fr"
  end
  language "gl" do
    sha256 "717dfeb17509720c0a9e3ffe765028cf3823d4a731688ccae403c8570d22e9cc"
    "gl"
  end
  language "in" do
    sha256 "b61fe87159cd575337818dc6895841d53384736d4125f43d3a47efb8e5b6b14c"
    "hi-IN"
  end
  language "it" do
    sha256 "eb4bbb3421ef59c8e88dfea4fd1d4aa8991e08d8b109fd1916400bd4342c928b"
    "it"
  end
  language "ja" do
    sha256 "8b496cb4498ac7e79d4cc47965697fe50507399b983059d5be67cdd75f447e12"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "006680536520a1baaa762e5edfa87d0178f27c9c27124009f710d84c91356dec"
    "nl"
  end
  language "pl" do
    sha256 "27190fbf7fda8b5b8f692a33c6a0ea237bcfc9a142279428a8b86ef9f8031cd4"
    "pl"
  end
  language "pt-BR" do
    sha256 "dcf1e0eb7cffe531a2c4525891d760466f34a90142612cda098be67cbee126f1"
    "pt-BR"
  end
  language "pt" do
    sha256 "ed75627d165432e5c9c91110e8d106e450b8e04167525a3df801b771c8b76b6c"
    "pt-PT"
  end
  language "ru" do
    sha256 "d8866850e0b0aac36b6a14c1b1fc98f375a0c4e36c629df8f4217477f91b572b"
    "ru"
  end
  language "uk" do
    sha256 "e121ccf975f7837e7cbb7887c0022f4781c45d80ae45aa600f02c3323401b5bb"
    "uk"
  end
  language "zh-TW" do
    sha256 "fb71497fc6f3c161afcc002f4b600648c6ba63fb1abe0f0207eff4549c882fc2"
    "zh-TW"
  end
  language "zh" do
    sha256 "74bb8b06e31b432207de271bf0029803be2c501d36aab81788c3de2b27e75fd4"
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
