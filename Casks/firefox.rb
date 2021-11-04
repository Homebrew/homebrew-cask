cask "firefox" do
  version "94.0.1"

  language "cs" do
    sha256 "94cfd91c27228556885eade22d0785d50fc21b4d69ab7510b4f8d1a08a5ec9d2"
    "cs"
  end
  language "de" do
    sha256 "5b8de30b760af0a26626f80f54623272bcae600f3e96892bc153542e69faec6f"
    "de"
  end
  language "en-CA" do
    sha256 "cbeff29537b94b86715e9394795cf40a41526f8cf9482905314e8ab8b8228298"
    "en-CA"
  end
  language "en-GB" do
    sha256 "35b5111185064dba50549431083aa44b4345aeb20351b48badc6ead1264e5ce4"
    "en-GB"
  end
  language "en", default: true do
    sha256 "e49efcf2295fc0ca3b912355c12cb2a2118c67cf654ad2f4527e67632aaa4ee7"
    "en-US"
  end
  language "eo" do
    sha256 "4d16413b02c744645806a9b3a24cfd614bc6ddedbaf53771ce5584398470501a"
    "eo"
  end
  language "es-AR" do
    sha256 "6aea0a77d95fd2472816e8dd63e020f9e2a69cdc4abc79efe20913272498ebb1"
    "es-AR"
  end
  language "es-CL" do
    sha256 "0450b64ced4d5bb902ab77d3ec410651d9dfaaeea733653c09706bd8b38e3edc"
    "es-CL"
  end
  language "es-ES" do
    sha256 "2de6c021f2c3c3e9b0f1d6d37c3ff6d51bd1d8a9f59ab4de6967a33df31ef41d"
    "es-ES"
  end
  language "fi" do
    sha256 "dd40c5f3b0f0694801500c2c8a3624d1dee336030b38c33520ef49d6ade251b8"
    "fi"
  end
  language "fr" do
    sha256 "ab8260fcb00bb6c5f37bd2326e7a75f97525789e9bd57cbec4dd18fcb7f09689"
    "fr"
  end
  language "gl" do
    sha256 "00e91e87689c44a1f961428b71ffdca66a2f77ca396b8060715063826445238d"
    "gl"
  end
  language "in" do
    sha256 "ddc512ed956b689921fe7113d77ec81132f4961beb07849c792f3615fbceee3f"
    "hi-IN"
  end
  language "it" do
    sha256 "dad9df5f26bad17b405fa74cf0acf09efe0305723b3adafe314d922e69aad887"
    "it"
  end
  language "ja" do
    sha256 "15b40c9cbfde967c5d89aa8d73c6744a786d35e64d7fa386784a6dd8503f6a33"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "41b0a5389ded86a1326c0be58c413e0104e4c73cb3032abc5c9f88b64a7a3b63"
    "ko"
  end
  language "nl" do
    sha256 "8f50aa36a23a5d12d2cd61dbf9336f68ce1de3d2c7585ef88272e6eb9384b0fc"
    "nl"
  end
  language "pl" do
    sha256 "098de0dfc2e20d7e03f42b8e27e8024980308e945063dbf87c5c1e086e57efae"
    "pl"
  end
  language "pt-BR" do
    sha256 "1836034eb243b9bafa0df1a3859768f9b471a602827f7ffb3bda93e31dcde35e"
    "pt-BR"
  end
  language "pt" do
    sha256 "1aabe6dffedfd504ad58e6b4dc093b7e6687cffe4fad2d4133be6b4f2919216a"
    "pt-PT"
  end
  language "ru" do
    sha256 "ca46a5e18a2d7023ecab75d86c15d43ce4e10547d6323d739cd5d727fb704c6c"
    "ru"
  end
  language "sv" do
    sha256 "6a3212ea4f44faa67caf48a80fe265bd3092d8a4ef90c0a483e0ee8bc123d5e3"
    "sv-SE"
  end
  language "tr" do
    sha256 "ac810926ee39bb5e00748aa8513d8bcc85e397e62580e6ddfd3ff45728b197d5"
    "tr"
  end
  language "uk" do
    sha256 "27ca224a62a41965146b51e6f02fd48fd3efcfdb94d16bc6d8e88e481d6180bb"
    "uk"
  end
  language "zh-TW" do
    sha256 "bf141fc6d4b69267743eedf284ae2ea085933bc42a7128ae96f43d3620b1f7be"
    "zh-TW"
  end
  language "zh" do
    sha256 "6cbf9bf0c313c1ba7d78d2863ae9e7cd3eb95992b0fb8647260e0b527b4ff205"
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
