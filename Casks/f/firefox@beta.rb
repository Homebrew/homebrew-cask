cask "firefox@beta" do
  version "142.0b7"

  language "cs" do
    sha256 "d0b4dad109f931370d8b56852f69a2c77909fdf078345857a9b84a23b412b75f"
    "cs"
  end
  language "de" do
    sha256 "1488225709efc4ec68edfe2d2dcfa670a1a5783d01f04a4d2ecba9a990d5f976"
    "de"
  end
  language "en-CA" do
    sha256 "8430a8de1522c73a8516fb85d8d8dcab6e3ad1ace5e2ea8dac2ceae2496f3315"
    "en-CA"
  end
  language "en-GB" do
    sha256 "2e0a30aac71b80825efc250fc91dda5e05609ab5df94f3e87f69d2d0d34ea74f"
    "en-GB"
  end
  language "en", default: true do
    sha256 "f006337387c2de20e5547c97487d0abfc22df52ac8b26433f24c87b882d8f9f6"
    "en-US"
  end
  language "es-AR" do
    sha256 "f01f530d74ad02292d35a3a3924c6d3d922fddd22ff3b631ccdac50880892e72"
    "es-AR"
  end
  language "es-CL" do
    sha256 "db125f0c2bfa4b5639996aa7d79cb2e6ff4bcef4abd79ee78fbf2251f27e29ad"
    "es-CL"
  end
  language "es-ES" do
    sha256 "dc0d961fd34da4c11a04661cb3b99bf93d02c033c5916d314ba848f54ea23231"
    "es-ES"
  end
  language "fi" do
    sha256 "0d3b590c51d0fa55ea268f5e8aaa01b8e4765125b071dd670c1176daa4ff0b75"
    "fi"
  end
  language "fr" do
    sha256 "d25e5dff5e7a0759a451eb367c6f6646e89fc43d3b5aae608b51f0c5c1eedcbc"
    "fr"
  end
  language "gl" do
    sha256 "e715980c75b208ab0dbc20e6c5efcb09f9841d302664ca1d3cb28c2befbf3537"
    "gl"
  end
  language "in" do
    sha256 "92dc81543d43effe1c20231c7e3d89f012cbaea58b11d9179c1d4787d096166c"
    "hi-IN"
  end
  language "it" do
    sha256 "9abc9826ac36d96eeb692ff2189eee59dc2dad6b093fa172716b52f771489caf"
    "it"
  end
  language "ja" do
    sha256 "9c83d6b6563aaea1a989bb8d9ec044449586400fc1e28a695e991fea70c51936"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "bdc7f5d6974d60377a155572e2e838b59e808556ba88b0467342c63c8f689e30"
    "nl"
  end
  language "pl" do
    sha256 "4d96ae7d1140025cd5e358f27bf84575ff6d89e2226c235a7464fe1c5c4e6786"
    "pl"
  end
  language "pt-BR" do
    sha256 "d65c710ad3b291195e673da7454941e57b397c91a4b62234a48e345c331c0d59"
    "pt-BR"
  end
  language "pt" do
    sha256 "232befd40ac24f26446b9e84cb478299c045aa1870d2de7adb1c2591262b70d2"
    "pt-PT"
  end
  language "ru" do
    sha256 "9e4d3a4c7f6679bf63fa6a7215155d6f73ce1dc35eeb630cb4419b0b16f83f8c"
    "ru"
  end
  language "uk" do
    sha256 "79db49812726e874a1e1dd1f83d8b8a290a7654b3e6c778e6e11994440316ad1"
    "uk"
  end
  language "zh-TW" do
    sha256 "2604701bc16eda8f6e35d878222c6c3382b2db51455c5b973ba1acc1d4117c68"
    "zh-TW"
  end
  language "zh" do
    sha256 "4656373064d246997d1f2e380b85720e53fc72d05d8ecc5282dad949010e932c"
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
