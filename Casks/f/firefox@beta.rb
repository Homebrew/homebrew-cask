cask "firefox@beta" do
  version "139.0b1"

  language "cs" do
    sha256 "aa10b870c4a2eb254bff3e121b8156a5da633d1df5c07ed10c8c542f3d0f3a05"
    "cs"
  end
  language "de" do
    sha256 "15ce46ca20d1dce89e24b6f21d416f64dd187a973ae11b8b0979a73732ee81b3"
    "de"
  end
  language "en-CA" do
    sha256 "a0de38e119d20eb0ec2eab9b62c8620f056b0f298fd0f94622945a12c9e6f636"
    "en-CA"
  end
  language "en-GB" do
    sha256 "efd1cec54d03bec2a8e58e7a802630a4e384e4f42cf0faa99f463f3d3f07501b"
    "en-GB"
  end
  language "en", default: true do
    sha256 "f2d57e27e636c0b571df98bbf9283d048c58d6adc9dc400d6176f8969eb8ad88"
    "en-US"
  end
  language "es-AR" do
    sha256 "ac1412b8363197f7f42245cecaebf3aec6b8009bf617f0b8067bede285a79a81"
    "es-AR"
  end
  language "es-CL" do
    sha256 "f04c7feadf971cd5669ce0ae6609563e154eeb9e59533a9bdff568d6a1a3b3e2"
    "es-CL"
  end
  language "es-ES" do
    sha256 "b1670b28d50c67fb3d90f018787593b62b2168e3249bdf34ebf5a38f9a09c2f8"
    "es-ES"
  end
  language "fi" do
    sha256 "d0ebcaa6ad65e839b0b103f9c2a5d39573574b5b6300d8e671f8093b5d764c82"
    "fi"
  end
  language "fr" do
    sha256 "104a69f01053587e753832211a24c0cf63a9f8de830937ae85604897ced63195"
    "fr"
  end
  language "gl" do
    sha256 "542e479d95fd58d0a359feb62ee15d55a01d1de41065031b87c2fbaffd566d73"
    "gl"
  end
  language "in" do
    sha256 "9851fcef4c8e1280f5e8334b826ec31ffb35cd68758e2ba851e5988592930ee9"
    "hi-IN"
  end
  language "it" do
    sha256 "0fc843493b2be37633c05cb72ef1ef1c6eb9a06e640d9f2b6f5014244ff658d3"
    "it"
  end
  language "ja" do
    sha256 "b82813d005802c94c350407cdbc4667937b2a5950bda312e585ccef2e034e65f"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "dff8ff47906d8a5ad1dd105a21db4c1bbc4c1d384c140169feaa0d697dc3877d"
    "nl"
  end
  language "pl" do
    sha256 "d399ba420496f61a0f29d5f3d5f9b00b94d64c7055675dac876c7f553323c3ef"
    "pl"
  end
  language "pt-BR" do
    sha256 "98f742f5aa4a12d7ad644c3af6ed1bb3f641e1d9bea2e4547cc9e26cdeeb3ad3"
    "pt-BR"
  end
  language "pt" do
    sha256 "bad08af32edf3fae8645728330200984ff43ec385f9e28b59dfe2457cecf056b"
    "pt-PT"
  end
  language "ru" do
    sha256 "390a0ea4eb3def451cc4955d9eaf0c0dd2edbb2d3ecde4915e8a9fab44832033"
    "ru"
  end
  language "uk" do
    sha256 "a73363e7cdd390f9c98d4d7d9205e8019f7a7fd864167e594b8e107159fcbf3a"
    "uk"
  end
  language "zh-TW" do
    sha256 "a23a538d7a9991b613003597fdf61fd79f4e41d1c3c744249d714487d5ebb5b0"
    "zh-TW"
  end
  language "zh" do
    sha256 "1cb5e7c84cd0762d4467d37151d7ec205143567eb21759f1df1a4d03b76e2c9d"
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
