cask "firefox" do
  version "90.0"

  language "cs" do
    sha256 "fe93881a8f8940b0c7de8b488ba624f0fcfa6b4439e503e90c788f8022d43840"
    "cs"
  end
  language "de" do
    sha256 "7847c977d526a467472202ae42f0cd5e8207ee0fa1239a531ff4520d3820465d"
    "de"
  end
  language "en-CA" do
    sha256 "02df3051511ce94c7f710e5070568e02c468a27915b4d2e3efe85a4d15a1dcd2"
    "en-CA"
  end
  language "en-GB" do
    sha256 "2ac442bef94232af243a9c6e7993a67ba72feea714494684d126616971febf42"
    "en-GB"
  end
  language "en", default: true do
    sha256 "dbc08038e2a26017d360bbf366a935084ed0e0914dc50f3e7e419e5b765c8863"
    "en-US"
  end
  language "eo" do
    sha256 "05858a2698bb370949186cafeca644cd607b3a1002b7b4559e5fc1e19375ab2a"
    "eo"
  end
  language "es-AR" do
    sha256 "a5e3bb7f46c6ad935e4c81bc60472a88c71315e7d23f2f8f6f750f961f43158f"
    "es-AR"
  end
  language "es-CL" do
    sha256 "23e7edf8f0b44adbc75470d4017f4d7b135484e646bf3cae5c94d67b53859ad9"
    "es-CL"
  end
  language "es-ES" do
    sha256 "1bac52887379fe967a342f6286b4f7154a6ceef9d2bb2224595df5898948b540"
    "es-ES"
  end
  language "fi" do
    sha256 "1cd4650e9fa230c058c65daae02b6cb684993bff66f58f196b39cca1bc72027c"
    "fi"
  end
  language "fr" do
    sha256 "129b1a366656dae24d2b9abc5201a77664cec562f57d8c4b34ee92cfc79d8db2"
    "fr"
  end
  language "gl" do
    sha256 "541a86c83f2ffba701d3a64c4cf15556d36c2b331fcd7ded73f104f0ed795865"
    "gl"
  end
  language "in" do
    sha256 "17607fa931e949f7c1e8bbcb2d290cad951e49aa52516f08b07e4180eb9ffaeb"
    "hi-IN"
  end
  language "it" do
    sha256 "fe244912a4337cda32e6b79f9e57c205e3890fd3dca72b32e668f601bf75d863"
    "it"
  end
  language "ja" do
    sha256 "706f47695796aec8a764b0389c00ead6600c5f41aa61ad79d81da0917795937a"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "a22224ec5ad0094276429fbe91bf484edfaf51ea22ac3397a361d09c3b8f77b5"
    "ko"
  end
  language "nl" do
    sha256 "5d6f781c9e77b7b9e6d6731162a4d293099212bf21cb52c01c02191f267d9469"
    "nl"
  end
  language "pl" do
    sha256 "080c2439bf50f2d3b8e936575c3a17138a2917d4a051f8d77f6ff9d468ed928a"
    "pl"
  end
  language "pt-BR" do
    sha256 "0f230c84775b015c862b2c93b9dcebf58ca3a62ee124cce70a168b60605be7c4"
    "pt-BR"
  end
  language "pt" do
    sha256 "ed4202dbd484b052eec813157d22f50d08a5ab179a3f8aaa87773ade146361f8"
    "pt-PT"
  end
  language "ru" do
    sha256 "cac04889d35328449a1005d19541f641a07e10162df61d5f80c735b42f8d92d1"
    "ru"
  end
  language "sv" do
    sha256 "9eed35674acbecb4ee08b6efe8744f43d2ef795328847d3c912aa7dd0b14ab7a"
    "sv-SE"
  end
  language "tr" do
    sha256 "c632d1b93e8fce2d79fd33bafcdf3e6e99c2cd91e453196c64b83931b00fd550"
    "tr"
  end
  language "uk" do
    sha256 "fc42f808007c20a8307d4241e3aa4f0a38a07a6a224cc7ed6af6fc2f3f4ee20e"
    "uk"
  end
  language "zh-TW" do
    sha256 "4cd0d4ca919458fbbd470562713c68a7c6c693b7d857cc6ae696e3937e4db48b"
    "zh-TW"
  end
  language "zh" do
    sha256 "ce02df62fa8776ed9caa2fc65d99bd907fc4720aaf385e8d40af6f20119e34cb"
    "zh-CN"
  end

  url "https://download-installer.cdn.mozilla.net/pub/firefox/releases/#{version}/mac/#{language}/Firefox%20#{version}.dmg",
      verified: "download-installer.cdn.mozilla.net/pub/firefox/releases/"
  name "Mozilla Firefox"
  desc "Web browser"
  homepage "https://www.mozilla.org/firefox/"

  livecheck do
    url "https://download.mozilla.org/?product=firefox-latest-ssl&os=osx"
    strategy :header_match
  end

  auto_updates true
  conflicts_with cask: [
    "homebrew/cask-versions/firefox-beta",
    "homebrew/cask-versions/firefox-esr",
  ]
  depends_on macos: ">= :sierra"

  app "Firefox.app"

  zap trash: [
    "/Library/Logs/DiagnosticReports/firefox_*",
    "~/Library/Application Support/Firefox",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.firefox.sfl*",
    "~/Library/Application Support/CrashReporter/firefox_*",
    "~/Library/Caches/Firefox",
    "~/Library/Caches/Mozilla/updates/Applications/Firefox",
    "~/Library/Caches/org.mozilla.firefox",
    "~/Library/Caches/org.mozilla.crashreporter",
    "~/Library/Preferences/org.mozilla.firefox.plist",
    "~/Library/Preferences/org.mozilla.crashreporter.plist",
    "~/Library/Saved Application State/org.mozilla.firefox.savedState",
    "~/Library/WebKit/org.mozilla.firefox",
  ],
      rmdir: [
        "~/Library/Application Support/Mozilla", #  May also contain non-Firefox data
        "~/Library/Caches/Mozilla/updates/Applications",
        "~/Library/Caches/Mozilla/updates",
        "~/Library/Caches/Mozilla",
      ]
end
