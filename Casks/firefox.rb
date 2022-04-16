cask "firefox" do
  version "99.0.1"

  language "cs" do
    sha256 "a292fb70e1c24da224b6a7677068e2cb33957f4ee920aaa1e3a94158414e55f0"
    "cs"
  end
  language "de" do
    sha256 "834885852f1a98c3f787b5f235fc80d19fb4dee0bb9c7be8c8cce81b21c9ef90"
    "de"
  end
  language "en-CA" do
    sha256 "02734109e773aa676360d860a876873ff1909d42635b35891f43bd99f68b79c2"
    "en-CA"
  end
  language "en-GB" do
    sha256 "18b8a535b9e22f85987b2eb76da122b746a5d92e913e70ab3a7a7cab7f4f69a0"
    "en-GB"
  end
  language "en", default: true do
    sha256 "be6d89efe9af77a9fb2989d9918f70c1721a8193d208e8e8593e4e50c16813af"
    "en-US"
  end
  language "eo" do
    sha256 "24711b48bed3a9d49a690bb66c21eba1db8ef1f3a0f06c480729aedcadb2cf38"
    "eo"
  end
  language "es-AR" do
    sha256 "9f4677792390d7755c1ce6190cba098fabd07e08ced2073715f54c8af0f33b1c"
    "es-AR"
  end
  language "es-CL" do
    sha256 "8bd5292d8c87d3d8b2e6e74383dc496187b4ab8870f68f69a37140df7dc57e85"
    "es-CL"
  end
  language "es-ES" do
    sha256 "f3e93953edde7a8f4d297b1eacaa93601a6b3c686b98fe04082c55927b5e9625"
    "es-ES"
  end
  language "fi" do
    sha256 "9098638fa395209660bf7c72608232c1c109e5699ba589b6ffcf4f9a91ed59e6"
    "fi"
  end
  language "fr" do
    sha256 "c98906a448e78ffd2b1462449196a3a33c4d01de4c100a015aecc7974b1dabe2"
    "fr"
  end
  language "gl" do
    sha256 "df4d63e7ed164dade73f7172bb9ab05d7e0e5b7af69630ff1cbabbaa64480d40"
    "gl"
  end
  language "in" do
    sha256 "121497e0fb3192b4b21ef66acbec70b297e935f596cbb863847c9235009f162a"
    "hi-IN"
  end
  language "it" do
    sha256 "ed2cdfda53e25d118b5d959899960cad7ff9e7368af32abef349abd6fe9e3b98"
    "it"
  end
  language "ja" do
    sha256 "9e64782bfc05f8452541b089f825b2bded24b9fc49558188c4f33e8862393b63"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "46a88d7584082bbf5c1a87e5a4e37e88538a877a1f7931ae12563503e5db7df3"
    "ko"
  end
  language "nl" do
    sha256 "9536cb1739cc95ca0081c56135bb40bb9fa15296c67529de63df4a0f2197dfe1"
    "nl"
  end
  language "pl" do
    sha256 "3bad4a0b8b8cd8985e309c0030dc795f7a83a94a1e285036d7b88d11a3ef8872"
    "pl"
  end
  language "pt-BR" do
    sha256 "40ae4a27cb36c3007ae69bcb18e5c8c6d8aec16b824d57b4a8628b669b077a1d"
    "pt-BR"
  end
  language "pt" do
    sha256 "3e4dbfdde82c0460dbed39944329b7e438746b9fec75b9ed45550497dc672919"
    "pt-PT"
  end
  language "ru" do
    sha256 "9d5888fe8fb8d1b79daf23c62fcf8595efe24afb9e3c5726c4f8521981cdd264"
    "ru"
  end
  language "sv" do
    sha256 "c5887d3800c23a6a979b184dd5753c6c78a40b90a4718faddeb3c7482aee7ce9"
    "sv-SE"
  end
  language "tr" do
    sha256 "3473af1a0eb916f8680aca51dbf2e2e3107144f8cbf7d12f475b030ff15b447c"
    "tr"
  end
  language "uk" do
    sha256 "f4d0eb6251d7bab52423b1f8d5decf5cae89f457c13cc8adf602480eac913ab7"
    "uk"
  end
  language "zh-TW" do
    sha256 "eb65500492d1040e1d77f0dc2be53cc19ff8473b55b69277de5731586bc80e97"
    "zh-TW"
  end
  language "zh" do
    sha256 "fc403c60f8d58bb2181338555595c1cc3de12715cb4bd6844d9ec12bd7ce5c72"
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

  uninstall quit:   "org.mozilla.firefox",
            delete: "/Library/Logs/DiagnosticReports/firefox_*"

  zap trash: [
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
        "~/Library/Caches/Mozilla/updates/Applications",
        "~/Library/Caches/Mozilla/updates",
        "~/Library/Caches/Mozilla",
      ]
end
