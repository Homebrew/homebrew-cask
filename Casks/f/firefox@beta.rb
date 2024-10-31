cask "firefox@beta" do
  version "133.0b2"

  language "cs" do
    sha256 "e0594c303b5f140d49523f50e1b96c2d8231e8c2aa8ab9a4089f7af0eb989df4"
    "cs"
  end
  language "de" do
    sha256 "94db0068938b0e785e6409adfb4e041c73c52676b701a3b9487b02c839066c6b"
    "de"
  end
  language "en-CA" do
    sha256 "dd1bf4595ca046d3d089b3239b671764f873932fb2e437657ad64f7864a9050c"
    "en-CA"
  end
  language "en-GB" do
    sha256 "80b1a0e93ebe9d434971307b9cb14b2154c828e9e3975b213adf9e515544ced2"
    "en-GB"
  end
  language "en", default: true do
    sha256 "313a31899877a782c74b6f460a544407d828effb779c80c6f5ac8fca8e5cb872"
    "en-US"
  end
  language "es-AR" do
    sha256 "75490ec108740a33b9497d35a1b63a2ec154b4a92b7b2706718ae87553a43cc3"
    "es-AR"
  end
  language "es-CL" do
    sha256 "37cb4f41d90bbf1c848cdf2f4a52a07644712b952f887c0ac9278246edc57443"
    "es-CL"
  end
  language "es-ES" do
    sha256 "20d30282f4d2f36527370878089db731daf28a697416d5be5e35e92c99a9b0bc"
    "es-ES"
  end
  language "fi" do
    sha256 "854df7f88d37140842c34cd9f60d2fda9f4809e2e9aae8d1aee8cfd1acea0d93"
    "fi"
  end
  language "fr" do
    sha256 "f2c34769d00d6f28dcfb3f59e2423bb460a2513c7629d0a9236db86a1d4c8951"
    "fr"
  end
  language "gl" do
    sha256 "d9a925d276bcd7744c6153f8b09dbc6b92ec61bc71da4e66d6b9b77092ee4ff6"
    "gl"
  end
  language "in" do
    sha256 "f9bde2b3a8ebe14bad832b519b24888bd3efa3452beee08900652f3069303434"
    "hi-IN"
  end
  language "it" do
    sha256 "e3651715500ff7d7d9705715f1c3670dd875fd2b1c0f9a58d58bd7fd6c903d32"
    "it"
  end
  language "ja" do
    sha256 "84fa0ccd4a05a41482a3071db1e94233a99326c5fbe9e6b4885b405dfd04d154"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "4700ea180fbe1b14ac5576283411c2e84eb68d8d01a51c298c377dbf37bccac1"
    "nl"
  end
  language "pl" do
    sha256 "7cc9d4e7a7222a7ccda0fc39313d3180155ebc8a297fae096f2d5c6d4dfc89ad"
    "pl"
  end
  language "pt-BR" do
    sha256 "36da5f44214613b30f7b621d76437d569de44bbca4278e3a1c6fdfac241db610"
    "pt-BR"
  end
  language "pt" do
    sha256 "25e678389b58d5c350e514a029cdcc56e6732a04a6274732f64de9b32c2ad225"
    "pt-PT"
  end
  language "ru" do
    sha256 "4d0cd2301c7d32b859daa64da861e89126ebd622dcd411939e16d0ee0a37a497"
    "ru"
  end
  language "uk" do
    sha256 "794719313b187ea01b4ca486eceda77b404d6f536be728e927bcfed4131ca55f"
    "uk"
  end
  language "zh-TW" do
    sha256 "447c18cb41eef40b5225989210d6fa8e7404740f7b041fe0b8df28b5973a4cfb"
    "zh-TW"
  end
  language "zh" do
    sha256 "3c909ba4ca50c7846a99dd9a0e6a16cd9001ff50de534448b2204ebcc824c591"
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
