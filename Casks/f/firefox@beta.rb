cask "firefox@beta" do
  version "138.0b3"

  language "cs" do
    sha256 "8eb97298a4aa8d50212c49bfd81146a386d43632df8f3ae3a0ecc4fa88059504"
    "cs"
  end
  language "de" do
    sha256 "63ca5c8194dc14a6e58d2714c57978ee21ec39e355f33fb0cefe43636343bcd5"
    "de"
  end
  language "en-CA" do
    sha256 "21f8979525cc0d27ec4d49f3c3a81f7f2e2c956739e4d3484c70f9af0b610cfd"
    "en-CA"
  end
  language "en-GB" do
    sha256 "7166c6352122ebc2975cf0e3c640b91920754224539fc04c563b9054d818c335"
    "en-GB"
  end
  language "en", default: true do
    sha256 "1ee265b475aa1b9a04d560aac7b5fdfb12eb00f3265db9b05e98df4c894aad1f"
    "en-US"
  end
  language "es-AR" do
    sha256 "b8deec5033b9dd5e175cb57d07e8e7bbf79af14beeb3161dc4ba478931ce3dc5"
    "es-AR"
  end
  language "es-CL" do
    sha256 "b6b33a8eeb1302425e0dea7923df6afa2af0ee8ef02770eca4de56a06e1b5941"
    "es-CL"
  end
  language "es-ES" do
    sha256 "1dca2083aea6a00c7898f0ca25609e5b258cd6d931a9d64f0efed22e64c02e1a"
    "es-ES"
  end
  language "fi" do
    sha256 "fc8017c7dcef9a8779443fa6a726a44eb02c4b9f9e24c8885fad3caf8031f39b"
    "fi"
  end
  language "fr" do
    sha256 "c112f0d8971a1f0abcdb175497803370741582a1778939d27e98b846650bc5f0"
    "fr"
  end
  language "gl" do
    sha256 "118f8fa1654ec0aa7254c2ac0c0c77a350c23d5c2f3ff22ee052b71bded0039c"
    "gl"
  end
  language "in" do
    sha256 "e56d0945d2108d57b0aad3eb7dd244f1ff5f6818a50a64fcc769d340e5763dc5"
    "hi-IN"
  end
  language "it" do
    sha256 "633d629f393bf0b6e16df82f3c88e3d9e92a7755b520c0b9e064b3cc0a0f1fc0"
    "it"
  end
  language "ja" do
    sha256 "75906efde70a54c3ddd4f465146f81d219cee75eb519e69748f87780b9561d35"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "8a83cebb8396630035899f905b324c3a4e43998917bd23294b2f81d72ffde6d4"
    "nl"
  end
  language "pl" do
    sha256 "333f8163a9aa0a7a5ae7984872ebd07dca8ab1d6f0a456608962cefb9df5b303"
    "pl"
  end
  language "pt-BR" do
    sha256 "3a1d9022a7778d4d33d6dc17976dfb88815584e072a40e3a9d046029f2db9776"
    "pt-BR"
  end
  language "pt" do
    sha256 "4746cedf149d0d46fc529e4f3a79460bf3a4cf542113797d92f6171f638bf0cf"
    "pt-PT"
  end
  language "ru" do
    sha256 "2c1df75146990480d90b08f542bdf404a69ad99b26e4d7694c66c0abc074b9be"
    "ru"
  end
  language "uk" do
    sha256 "a5ce0e9e69f5203dcf276a154870703f6fe702ac9bd47a1a898933628674a9ec"
    "uk"
  end
  language "zh-TW" do
    sha256 "c60cd5c960b665e076cf0030fb8298d16d2d969a44435ce08194ea12b462cc0c"
    "zh-TW"
  end
  language "zh" do
    sha256 "02dc63d0af1bbe767da0f14ee6f3c2c3403b039e280feb05a1388d2907255fd7"
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
