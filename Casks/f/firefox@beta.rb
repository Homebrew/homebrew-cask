cask "firefox@beta" do
  version "139.0b9"

  language "cs" do
    sha256 "c266900a458c01b545169363c3317a778db07eff3ed5133a4b06ca9b358f517a"
    "cs"
  end
  language "de" do
    sha256 "bc2587f6d88c710fb1351f58df82d75a1c52b1ce74f646941a0f755f98b93724"
    "de"
  end
  language "en-CA" do
    sha256 "24f684f3d7d0d062a9f8686888e197f1782b70ed369a357ebb0603cfef229c54"
    "en-CA"
  end
  language "en-GB" do
    sha256 "836e7ddfeb01b958c47b8b9bb88c3ac6d89473e675d60a7a2c9d8faea36a7efe"
    "en-GB"
  end
  language "en", default: true do
    sha256 "599190ac643e7918219c3ed04cd1b191ec5492073794dabf22a73b29ae635807"
    "en-US"
  end
  language "es-AR" do
    sha256 "ee54e07579c27ec614751d4096365df237e2d225b221ed9be4b88bfe3e891d9c"
    "es-AR"
  end
  language "es-CL" do
    sha256 "2495c64364082c13f0bd991ad62b64f64ab9d3f07b88c445a25e79b6f66c1d10"
    "es-CL"
  end
  language "es-ES" do
    sha256 "7fb9a5f785766472417fa945f699ffa7553fcf7cf9d8ced8916c0479e02d7a93"
    "es-ES"
  end
  language "fi" do
    sha256 "8e4b46300c0d2fc078ee4e810a04417439e3fe6796a0e1704cec285c9db5990a"
    "fi"
  end
  language "fr" do
    sha256 "78daeb3bef7f4ee3d28e3fea0ad876c520e0fe5172cf8e1085f93b9d33198062"
    "fr"
  end
  language "gl" do
    sha256 "df88ba75abac0c74d5b243630e408a64e03adfff05fd5abbee01ee7140c29b6d"
    "gl"
  end
  language "in" do
    sha256 "70d740bdec6ebff303691f8ebf992a9a1097c234da4a5d55fe033c53e44cd905"
    "hi-IN"
  end
  language "it" do
    sha256 "388d6996b9c227ddf58f95da9781548652ddcaca2b217659288a20ed3b8da0d4"
    "it"
  end
  language "ja" do
    sha256 "daf6132af9e1f18c05b8f8d16819b2bf131eac8938431ad91522c60f6eb10eac"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "f8c1e3245cfcaa4f37085c6894d3f09b736ff34d2309161991efd336e2316e31"
    "nl"
  end
  language "pl" do
    sha256 "07c424aa1f83a64cd5051b184c349a6b421b9f0631e08bb38038114642a72ac2"
    "pl"
  end
  language "pt-BR" do
    sha256 "767514fb84497c93d46d550ce37c08630ab49447af9da1580134cb753473bdcc"
    "pt-BR"
  end
  language "pt" do
    sha256 "d7ffc49f784722f4fe55713740027ff0ed1da75e0c3a8fbf0f887a16578ecba8"
    "pt-PT"
  end
  language "ru" do
    sha256 "e2beb748a54521798aa05ef6d4b0f6fef6cd7c20f2d3dc9c0c566dd55fee9363"
    "ru"
  end
  language "uk" do
    sha256 "f1ea38664e2bc92d02e8639c298cfd0e15a54fe9dc25f5ecef11999aec1150d2"
    "uk"
  end
  language "zh-TW" do
    sha256 "6bf040fcc8639206aa9bdceb534cee744600d801121aed49a7a60e4f157dbc38"
    "zh-TW"
  end
  language "zh" do
    sha256 "08f8caf981b9ec654b063139ff1fe5a10fbb26718184e0ca9594801eaf4703ae"
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
