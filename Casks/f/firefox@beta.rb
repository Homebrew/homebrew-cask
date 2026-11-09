cask "firefox@beta" do
  version "161.0b1"

  language "cs" do
    sha256 "8c3b5118cc7ec51a111eb8bf95b9f60001d34cd4e82ba4191401e0e9f7e21252"
    "cs"
  end
  language "de" do
    sha256 "bf4f72ef246eb52418b69d951f7d9a5ddccc585dc4bb17abb7c04aac6a3a0579"
    "de"
  end
  language "en-CA" do
    sha256 "2ca53eda4b7b83ee36715500cb9642764ffec4ae2ff5f5f160dc07dfa676d2e4"
    "en-CA"
  end
  language "en-GB" do
    sha256 "66854abe1b64e6ae065f53c45addf9a8e24d593147f1aee9a8fcd78fda0ab529"
    "en-GB"
  end
  language "en", default: true do
    sha256 "79e3c58ba7d942136c14123bb97466a0f2e63436337605f91e01a38c8ecf070b"
    "en-US"
  end
  language "es-AR" do
    sha256 "b6afdf2f844b928b91dbf2fdf8807d2a0262c1e20f8a67bcde94e1ee276a207b"
    "es-AR"
  end
  language "es-CL" do
    sha256 "19930d70c4ab3d5dd8b57fd655b15353fa4dbe3be31cb44944cf2b2b87c7e386"
    "es-CL"
  end
  language "es-ES" do
    sha256 "a3596a6d691b23cd2adcf6ccd5dfbd2b08bcb6ad9a4b95aa23f63cff6f945832"
    "es-ES"
  end
  language "fi" do
    sha256 "d14bf4c614c386a290a72ab986b342568e6089fee2a9f6ea7a1c8ef856bb826f"
    "fi"
  end
  language "fr" do
    sha256 "9131c2b502c83ab60cbcb2de433c05ed41b66098f2d43674ba3648f462c70294"
    "fr"
  end
  language "gl" do
    sha256 "8ae5d8b5065f0e383cef365083797044ff3f30b1d5437b27bd4d787666b8797c"
    "gl"
  end
  language "in" do
    sha256 "7f988177e92bead944bcf0bf8076904fb8362685080f0ebff258395ef6e70e74"
    "hi-IN"
  end
  language "it" do
    sha256 "e9b50b8f204c578112e8153e60d3d8d11e23529351f47008b87aaf791a204167"
    "it"
  end
  language "ja" do
    sha256 "a3203d17b4be77e3e654f428e520e783abbacc29dbdfd806de3aa281da32cc1f"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "e56a9af2411dd463835bb7013b43f017c8846163c7152112488ffa13cabbb1ca"
    "nl"
  end
  language "pl" do
    sha256 "ba52321b8390a0b5e0fa403b6bc38248faa2a4fa33c5eaf336cb1457b3a21160"
    "pl"
  end
  language "pt-BR" do
    sha256 "8554a53501fa3327915087c586d6f156ee434b789ce8788697715ebcd4d3fc9b"
    "pt-BR"
  end
  language "pt" do
    sha256 "2d98af0b2e7710b58c55d685ece45b8e121e91da73523aa6cbd7b6d2458c7fa1"
    "pt-PT"
  end
  language "ru" do
    sha256 "42f29f76735f76cb52cd7ac1d1ff37776c81b0d067dc41bfab024b5c81f967b4"
    "ru"
  end
  language "uk" do
    sha256 "f23a63f1069e768552f9680f9f86ff1caf30c83bcccfcfb4c25efc902c16f6c6"
    "uk"
  end
  language "zh-TW" do
    sha256 "e28af4991feea085f2add8a2430a2987262540ede7c5947291aea4d068fce71c"
    "zh-TW"
  end
  language "zh" do
    sha256 "d94b94422744f7fd45c7158e388180fa776e2c1f0ced4687121fd544fc2d5c6a"
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
