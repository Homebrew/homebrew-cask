cask "firefox" do
  version "92.0"

  language "cs" do
    sha256 "70eb7c3f91e4a5e5d0a92da1137d7b818e7de0790448a3a5d202e37e9a31d907"
    "cs"
  end
  language "de" do
    sha256 "5dcf7bc6a67ad50aaea39f8e5ca0d66b10c3486a7c8c4bd3e4352fefd4c7a8f2"
    "de"
  end
  language "en-CA" do
    sha256 "df8507a9c9a2c9f6ce9e9fbfa7871fba33fda528dae9d23482af6c778de42ff2"
    "en-CA"
  end
  language "en-GB" do
    sha256 "66620aa66e36ee2cebb0b3a5482b6c7e2f069aac76d7a820cfd019168bd264b6"
    "en-GB"
  end
  language "en", default: true do
    sha256 "68978c990d06ab94364a36c49d220aeb4e07a8c5d9eaa677bb154a300612964e"
    "en-US"
  end
  language "eo" do
    sha256 "5906bbdf8c3c3c5d6a8c8c718ccf78060722404fa33ec5681ba7671b63ced800"
    "eo"
  end
  language "es-AR" do
    sha256 "4197d1d2e4413e57f9b1ea76a202ef3cb2d479a38f838320f49e48fe711b7216"
    "es-AR"
  end
  language "es-CL" do
    sha256 "0894623d960fdd1540534aa04f337ccfc520b0e58f643a32cb8e108801d6c1f4"
    "es-CL"
  end
  language "es-ES" do
    sha256 "e5b3ed53def8edad5a0ac99ca0a7451e1fb540131a27318a7dbd264e5003413e"
    "es-ES"
  end
  language "fi" do
    sha256 "aa0ce740be11a84697e7568c65b14314efea68129ae862386efb34fc93d64b9d"
    "fi"
  end
  language "fr" do
    sha256 "14bba70705e8e7931bd220e5066831960fa8413d6c39c753a15a691fde0cf4a8"
    "fr"
  end
  language "gl" do
    sha256 "277a0ade2e37e09f4ecdb0d5ec931668535258dc9bcd930424d8e37827a2b1f3"
    "gl"
  end
  language "in" do
    sha256 "404fa7ab864756ebb3dd3d38b86daa80d5e0a70fe7286bb017e47716a768f13c"
    "hi-IN"
  end
  language "it" do
    sha256 "ec08818a7ee4c7b53ccd3202cf2d57274e4a24b1a84899ebb9274ce9194730ae"
    "it"
  end
  language "ja" do
    sha256 "3d3af9e10d20930963b816823a551d1d3ae61a0717fcf2b93cf5418cb3308d6f"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "6b900170e6f680a21404611b6ae268db23fa1b5200940e6991b3feaf4a48cbe8"
    "ko"
  end
  language "nl" do
    sha256 "8e870b403e73bee8b202f16252c38c391a958b7698523e4efc3275279e310d5a"
    "nl"
  end
  language "pl" do
    sha256 "e01569deb08ba5076e2eef86f1e026a4942a71e2316594d58ff1c320272ebf96"
    "pl"
  end
  language "pt-BR" do
    sha256 "da6d87f4ecd03c1a6e7aefc1abe08dd4fb764b9a148267c9c44811199df5ac4f"
    "pt-BR"
  end
  language "pt" do
    sha256 "25b6e23bf70ef8f0b8dcf6be68cf1b9d3ee7c16fb63b0ac996aa6b560522f7a3"
    "pt-PT"
  end
  language "ru" do
    sha256 "67807d2ca640dcab38181ab73d06e0ae5bd8270b9a29ebfc12c979353612abca"
    "ru"
  end
  language "sv" do
    sha256 "918db8cad41f683de055259d3c9f8f4080d99b83a09dece2a66b5b2a0a51d87c"
    "sv-SE"
  end
  language "tr" do
    sha256 "3f6d4adaed690904585ec9d9d2dbb00b95d1e84b0722d23b6b04db7085e832a8"
    "tr"
  end
  language "uk" do
    sha256 "0bb692910704d6c772a0b8f6da4a6ab42346e342c1dac86d8784692f16fadefd"
    "uk"
  end
  language "zh-TW" do
    sha256 "1bbcef90d1fa927f24285f6e063639b34faa1ecebf0bfaf7b6206e488645f202"
    "zh-TW"
  end
  language "zh" do
    sha256 "cd1232425d83e83eb994004440b126764710350a43b3333e9c6038d3bd27262f"
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
