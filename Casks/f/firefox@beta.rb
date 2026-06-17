cask "firefox@beta" do
  version "153.0b1"

  language "cs" do
    sha256 "b7e7b5a4c30e38b8573d7c8a96100e9b5958d75e326f5b58a76b824b63e90850"
    "cs"
  end
  language "de" do
    sha256 "088d37fae57f0ba12020847f7292c1d87a54977f346a1db56f4fb75e482d2055"
    "de"
  end
  language "en-CA" do
    sha256 "dd17c95712e97540808e9de47f5256be9041a11caeddf9756cf6fcf6c841a041"
    "en-CA"
  end
  language "en-GB" do
    sha256 "2c46d1f252b5b0266404794b4cf0fd697b8c2c616a4c7fe06315c60830c7612a"
    "en-GB"
  end
  language "en", default: true do
    sha256 "fb14887e4d707d2dab11f2ac025072bed558bd4e4ee7a3f89b229a78d1dce32a"
    "en-US"
  end
  language "es-AR" do
    sha256 "c2f1058a39dbc9c49a3758aed49167ec74c7006ffd98ac630a41308078cc8515"
    "es-AR"
  end
  language "es-CL" do
    sha256 "a92553686dca54086e888c43f0413879996d8a7062b20d3e9a1784dd6af83b37"
    "es-CL"
  end
  language "es-ES" do
    sha256 "9ded7865be6206e8cb4956379c156575a2b3a366d41d687fef11f135287011cc"
    "es-ES"
  end
  language "fi" do
    sha256 "4d724a7fb4c89644f0af01f39facaa407764d81502627b0c7ed4e6b2c1be457c"
    "fi"
  end
  language "fr" do
    sha256 "b328e551aebf6488ff46e7bf06818461d869c9549bac24f5cfdab7b1d006fe17"
    "fr"
  end
  language "gl" do
    sha256 "179c46e4709c6754c43d6e08a1dd1ab03cd63bc8a6086ae503c123769eecb8ab"
    "gl"
  end
  language "in" do
    sha256 "85187900e74b4c33c65da6de4422b6ff1d4f04703f82c7829d98a592868a2897"
    "hi-IN"
  end
  language "it" do
    sha256 "1662a72687f55de83724cee34949e1a017a43587697a95a9b88ef742974fc538"
    "it"
  end
  language "ja" do
    sha256 "54051d6761a629d06bc1da95274bc63aee398bbe2f11f8dabeab27395d73890e"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "c5404f8c6bf5420c5266e7bae5babb2116eda3e5b28fc7307cfe4c5a56533976"
    "nl"
  end
  language "pl" do
    sha256 "f969d045b1b7bf2d94ea6e6c00b7f2504add6b08b286d498d64edd2ca1772280"
    "pl"
  end
  language "pt-BR" do
    sha256 "2830e997c86fc8c6fef317a30361d888b492c7121ab401b628b953493243c51c"
    "pt-BR"
  end
  language "pt" do
    sha256 "ea85ab9e8e391fd7f5dd843fb6641c341369477bff3676ce340032510a043367"
    "pt-PT"
  end
  language "ru" do
    sha256 "9aa830df523dd7ef61ca64b9d1aa99851fb20f931ad39d085efdefa738890008"
    "ru"
  end
  language "uk" do
    sha256 "39092b436273f58a4d3a4b08db719ba17e4ed57b3daac00532458bb405a3e537"
    "uk"
  end
  language "zh-TW" do
    sha256 "99d0b0021aab5cdc674e1fef7d3a067e48d6cbe82df8a8226dcb5740cbb6de39"
    "zh-TW"
  end
  language "zh" do
    sha256 "d016ade9456606593140102a517ac3e1e989d33944a155384ceb2752a88681a4"
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
