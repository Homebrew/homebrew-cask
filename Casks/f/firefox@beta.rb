cask "firefox@beta" do
  version "139.0b7"

  language "cs" do
    sha256 "7277608f6fe505fb0a5a1da78382707fdb73bf8760e65a3d0edb4192b481b99f"
    "cs"
  end
  language "de" do
    sha256 "7dcc9e855044d670a0f3d9d9cd9be8e260877271eb3a32c297a26438effd9193"
    "de"
  end
  language "en-CA" do
    sha256 "3207f75cad069cab65b2cf5b210aa7922a51523940eafcebed1b74f508fbd1b2"
    "en-CA"
  end
  language "en-GB" do
    sha256 "5ebbf4a1654239213e0ffde5dfd56dd25a4f477a7281dd96788b43fd5b05b15b"
    "en-GB"
  end
  language "en", default: true do
    sha256 "8aa485c0133aa2281c727ccd42d162ba70239d1bd7389ada145018f8a7b58c76"
    "en-US"
  end
  language "es-AR" do
    sha256 "edff877553584adb8d4a831a7cf8544b05d5a58f60cad1bb8322fe42dac201a3"
    "es-AR"
  end
  language "es-CL" do
    sha256 "3bdcc7d23900afb586202ffb1cb6682706aa3c122e82364684367ae19d1b6b58"
    "es-CL"
  end
  language "es-ES" do
    sha256 "9642bf2b1c1307d809c68fe084fcc248464abe620da8f9d06de9a878cb5e64fe"
    "es-ES"
  end
  language "fi" do
    sha256 "790bd2f06f5bd1f69d2362d7048869024094657a2bdccfd8f17933f325d4c026"
    "fi"
  end
  language "fr" do
    sha256 "aa6ef2114f515198110a63381d534a83dc2855d225994936570e8e84ddf5082c"
    "fr"
  end
  language "gl" do
    sha256 "b8cfccf32b4255d11657c7eafcf3a3e245b749b9df2cff7ebe85a86873ead793"
    "gl"
  end
  language "in" do
    sha256 "a22c3b72a6d258855a35f00b3200fc7db545c2ae496e6bf367e00f062fbe77af"
    "hi-IN"
  end
  language "it" do
    sha256 "41dacfe667c55ab364331c26826dd2e253e8d9c89c1e8b333db40592917a00dd"
    "it"
  end
  language "ja" do
    sha256 "ee6579188ef587e49c876ac0c8dd74664458a681943979bed9792bae22a630f1"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "7f96403ce019d3964a2810162073038b24542c6bb63b61facd928fef5a452144"
    "nl"
  end
  language "pl" do
    sha256 "2095d9529600481c7e5d6a84a56ec48d79eaa465b3cb0742a04261ce008142b2"
    "pl"
  end
  language "pt-BR" do
    sha256 "36c932f621b28707f19839e22cf0ae2fcf4df54fd312acd04100293160f28b7f"
    "pt-BR"
  end
  language "pt" do
    sha256 "7be692dd2d18bdc54a67ab7dda48ff33255718009210ed9820c6c3dd756ef641"
    "pt-PT"
  end
  language "ru" do
    sha256 "1bda0206c7edb53bfbf8ff2e73436ed2b183ccaa5c67dbebf421bc7470820969"
    "ru"
  end
  language "uk" do
    sha256 "4b5c1bb446da6516a921a53be629818e5bdf2c7a79d74744c985f055a0723049"
    "uk"
  end
  language "zh-TW" do
    sha256 "d72d29a36299a5c9854807cff635fc5c94ebb87c0714cd8844910aa73fd5c77f"
    "zh-TW"
  end
  language "zh" do
    sha256 "2335e3c6a6e5247fcb582e6393551d6adc596613a089ab0244a495cad578c4b0"
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
