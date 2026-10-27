cask "firefox@beta" do
  version "160.0b1"

  language "cs" do
    sha256 "e42c4a132860d14353da39455f42bb405f3c71a013fd03306a5996ff3860f1aa"
    "cs"
  end
  language "de" do
    sha256 "af77ca447792e650ed0d7faa1c5f5db3f7b6f532f4883416c43edc48274d52dd"
    "de"
  end
  language "en-CA" do
    sha256 "d6f85f8dadbd259dca01f832428c6883f112d7ecd19f790d8443f176be443d0f"
    "en-CA"
  end
  language "en-GB" do
    sha256 "5c236df532e6ba18225e62dfaeebcc985d30e3582c6e4398931e592eb5aefe10"
    "en-GB"
  end
  language "en", default: true do
    sha256 "f6be29e9027741089082b0dc744599696eebca75e1bc5aec5e54e52c3524441f"
    "en-US"
  end
  language "es-AR" do
    sha256 "41c717d101855a53f8cc1f33200d1955d4019629f66126981822549fd90c13ea"
    "es-AR"
  end
  language "es-CL" do
    sha256 "86d5bd9eae4589a6633ff743c58d8921f9deeebb19e065c7e6f57a484a5e16fd"
    "es-CL"
  end
  language "es-ES" do
    sha256 "69ccf7db58fd9bb9ba4adc967f9d959a97e5378108c148fd730339eaa45056e9"
    "es-ES"
  end
  language "fi" do
    sha256 "c723d069cf175cf633636b10d544529fb852abeed37bb824c8193fd26ed45561"
    "fi"
  end
  language "fr" do
    sha256 "6fa0eae197acccb922bd9ae3d00c069fdad3904604377d447139ba822bde9d46"
    "fr"
  end
  language "gl" do
    sha256 "4a73f431ef8b2f8e627411fe6dfd88ad750eb77362328fc6abd58a878a9e34bb"
    "gl"
  end
  language "in" do
    sha256 "b2989044178f55930c2a58c35857bab4cf351565b148bd36c7f29037f8130103"
    "hi-IN"
  end
  language "it" do
    sha256 "c8e1dd0ac71cd9db88767d0b1070dfc077fbf7017f34a94ba84c838d1e79db7c"
    "it"
  end
  language "ja" do
    sha256 "423af0df909560edda0df86352f2f45b9d9e93d87aa68233ac63369cb3f569cd"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "f538e30f1410fd8fec4fa29abd4fd553f41416f6096489f0681aa7a045bd0dfc"
    "nl"
  end
  language "pl" do
    sha256 "bc4250c32c99d287f37ca1b067e77d1c7c492528eaa87c6f5ec6ffe9e84857fe"
    "pl"
  end
  language "pt-BR" do
    sha256 "cf1f0999cd213d011ff0d27c88567b19b342bbac44861ae8c91818cdd6f422f3"
    "pt-BR"
  end
  language "pt" do
    sha256 "532c570f0363b9c45ea1b46517c8d67b38474cf2edda4f140643ca9b07872377"
    "pt-PT"
  end
  language "ru" do
    sha256 "be9a6de5780ccf5a1774de25e17bb82eb84fe1ab218ecfdef31c8870b8e831f7"
    "ru"
  end
  language "uk" do
    sha256 "59b69ac572a20766b52a62d53e6caf7883f7f48269dfc3286742654c94a65b6f"
    "uk"
  end
  language "zh-TW" do
    sha256 "7f7b29b8243b776a9adc25db0addd34398dbb1f94794e1938dce060a60eb391b"
    "zh-TW"
  end
  language "zh" do
    sha256 "cf40c75db7ef7d7b3a324fb66636c339f46c28cc1f86c7e42bd0ec69ed5d8f8b"
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
