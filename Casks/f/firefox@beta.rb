cask "firefox@beta" do
  version "156.0b3"

  language "cs" do
    sha256 "4037df5202b3c8b20fad09fd98d03260c00d6491c7f8d51e64789a779f963fc2"
    "cs"
  end
  language "de" do
    sha256 "a9aedde4a77faf0b7659e43b6a947c44c397d2bb82ed0680ec812c95f95cc09e"
    "de"
  end
  language "en-CA" do
    sha256 "0d2aaa0354556f739f8e2e79eb88987b507fae68c73ba1b7eb5276731c9eb0e3"
    "en-CA"
  end
  language "en-GB" do
    sha256 "e58baf4bd2f6737bcee53d3598bedffcfed9d3611a59c7eaa8fc26dbac870d3c"
    "en-GB"
  end
  language "en", default: true do
    sha256 "b3baa8d04828622d1d25ff1b7bcdb24da8ae72a7502f7ff2a075a18a200bb855"
    "en-US"
  end
  language "es-AR" do
    sha256 "97fb73a8098cb2a101ab6aba3afcd9c513019fb575a78c1cbcf29949bab5c4ba"
    "es-AR"
  end
  language "es-CL" do
    sha256 "40d901c0405847496ae93068a13fe0941fb34e034a7102dec4caa83c941d1c03"
    "es-CL"
  end
  language "es-ES" do
    sha256 "b4aa650c0208da0231bb9f46d6f966ff437cb3fd2808c40ab8dcbab177885e55"
    "es-ES"
  end
  language "fi" do
    sha256 "e3afe6337998807d2e9c312e8df880463314692fdd60a6dd4979689046d9fab7"
    "fi"
  end
  language "fr" do
    sha256 "c04ffa7050eecdf65c89d4fb76a9706b8c98ae4949c12d8c7b3bbc13bee0e1d7"
    "fr"
  end
  language "gl" do
    sha256 "6b24eb2707a701ef7a193f46161c6bd53501ad99a048c082b3fc1c309c429d64"
    "gl"
  end
  language "in" do
    sha256 "3173eea6bc98d8905f699cd7322b9cf74384466745f09bd7fc6b1978b8a9ef01"
    "hi-IN"
  end
  language "it" do
    sha256 "7975a18b9f563dc588bbbc3f2a88d36d609f6ed44bdc31e0139115aa64b88542"
    "it"
  end
  language "ja" do
    sha256 "a1a9e34b5d44c077ba4de4a1bcfb007f86578fbc5863b32b2a58aa41476501b3"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "1bce96ad44fc40ed15d16ab4a8523f599466090cc0326e70d4ce0e0826f551a0"
    "nl"
  end
  language "pl" do
    sha256 "cae8d0f8ec3fd53cdfcfd4fac1bb10ac58c1950213b478f5b829a558079e631b"
    "pl"
  end
  language "pt-BR" do
    sha256 "9b48db183bdfc338eaff43f404e28a499c129c96e2679ac89d21aca1569c68ea"
    "pt-BR"
  end
  language "pt" do
    sha256 "7f2329dd790bc3473e4ee88ea241bff15c8bcdbc8396e151878c996f7515154f"
    "pt-PT"
  end
  language "ru" do
    sha256 "cda1bf17167548423d1c88324f8941d97d663a3b1629dfafe4532f5abce6e66f"
    "ru"
  end
  language "uk" do
    sha256 "4686227aa3ab28e604d073b191e34ba4a659f2209943a0d3e54877ec93fffc7f"
    "uk"
  end
  language "zh-TW" do
    sha256 "b0a5b2bd015cb39a80b9fab1446c12ea0d54ed778e70d94a9ff292df06ab0107"
    "zh-TW"
  end
  language "zh" do
    sha256 "7714a50004646117369ed241cf37e8e346f6d5454c0e4facbeab2b8e2eb7730e"
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
