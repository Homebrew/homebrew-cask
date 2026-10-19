cask "firefox@developer-edition" do
  version "159.0b4"

  language "ca" do
    sha256 "654b600fcd8344ea0e9519ee637b4f23f736b06765cc49a99d00c74cc6a22135"
    "ca"
  end
  language "cs" do
    sha256 "eb3621a84f3bd1227f869b07caf3a28aa477949b07a80f1276c0a9554c78db23"
    "cs"
  end
  language "de" do
    sha256 "645df90b2b726763a4ab77e93839fcb5734f10c627cdfce0542da572e6900380"
    "de"
  end
  language "en-CA" do
    sha256 "1388dfa3c44812e1a34aff7e3969aeb607422de9bc1d3aab616244c659485322"
    "en-CA"
  end
  language "en-GB" do
    sha256 "b6857aa898859890e156c8ce007ac7448ef90350d160cae3679d1945e1bda5a0"
    "en-GB"
  end
  language "en", default: true do
    sha256 "562c6bf7f0c9c9396ec9a04ba2162a5c37d76cfe3d26bb3064971be59ff5c23f"
    "en-US"
  end
  language "es" do
    sha256 "1139f14e644b4ef06a5f34958b6823df9dc56a3ea4de3a41a8f85b4d007375b2"
    "es-ES"
  end
  language "fr" do
    sha256 "bc2bd3eba7e7b5885e82cb70952ffb578f2869fc6bb698697edb5695712b935d"
    "fr"
  end
  language "it" do
    sha256 "1230f0ce357d5bccab42996ee534f63a0468cb4a9b88077e50024773767e755a"
    "it"
  end
  language "ja" do
    sha256 "9fe59f1139f866978f941fd78efc4be05701f06c21b6299dd6d80eb3229c1cb2"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "9e266496aead2999fcfe527c05e43c8d413f32d755feafb82c139c7a518d5fb9"
    "ko"
  end
  language "nl" do
    sha256 "a915233a70e7f7b1b331514672cc143c0f68e31ba9b9d116f7cb592d85b5bd09"
    "nl"
  end
  language "pt-BR" do
    sha256 "c5e4c3628eb323ae6503c1f37ed7267f58f6a6a05857e1a286b1143a8753849b"
    "pt-BR"
  end
  language "ru" do
    sha256 "e29d0f294a23553cb3ca0b6a3a384ba9b4017297c68eb7166a6cbbfc3070af3e"
    "ru"
  end
  language "uk" do
    sha256 "05db1dd99b14112038c1d2c8caaef071e881bc45da2778ab5b6f386fddf367f4"
    "uk"
  end
  language "zh-TW" do
    sha256 "203c19ae6df37fc202532967a4c6db6e5e8a424dce8a996a565ed58875f7d8fb"
    "zh-TW"
  end
  language "zh" do
    sha256 "824144a10ab56f079c36cc300bdd5f91c0c163e352920ba226f248a0f982b9eb"
    "zh-CN"
  end

  url "https://download-installer.cdn.mozilla.net/pub/devedition/releases/#{version}/mac/#{language}/Firefox%20#{version}.dmg"
  name "Mozilla Firefox Developer Edition"
  desc "Web browser"
  homepage "https://www.mozilla.org/firefox/developer/"

  livecheck do
    url "https://product-details.mozilla.org/1.0/firefox_versions.json"
    strategy :json do |json|
      json["FIREFOX_DEVEDITION"]
    end
  end

  auto_updates true
  depends_on :macos

  app "Firefox Developer Edition.app"

  zap trash: [
        "/Library/Logs/DiagnosticReports/firefox_*",
        "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.firefox.sfl*",
        "~/Library/Application Support/CrashReporter/firefox_*",
        "~/Library/Application Support/Firefox",
        "~/Library/Caches/Firefox",
        "~/Library/Caches/Mozilla/updates/Applications/Firefox",
        "~/Library/Caches/org.mozilla.firefox",
        "~/Library/Preferences/org.mozilla.firefox.plist",
        "~/Library/Preferences/org.mozilla.firefoxdeveloperedition.plist",
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
