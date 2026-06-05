cask "firefox@beta" do
  version "152.0b8"

  language "cs" do
    sha256 "914e5eabb0e00414151df90b3f1915d632219525a975048301cb3565a694081d"
    "cs"
  end
  language "de" do
    sha256 "0efb381d2731cfd510d134f4395a9baca0d9830803ec988751f134ee32eab5fc"
    "de"
  end
  language "en-CA" do
    sha256 "a41081ac659923238cec6b2d6cc9b2a856715c8fe64f10ac205c7aca5b7ec27f"
    "en-CA"
  end
  language "en-GB" do
    sha256 "5d9d3e21690913d7f2e80824f799b813caf44040e72960da87e8ee1a642938f6"
    "en-GB"
  end
  language "en", default: true do
    sha256 "ac32904e4db06c9476b0fffc54ed86a9415911619b971f3bd9b45c4eab4f4e00"
    "en-US"
  end
  language "es-AR" do
    sha256 "7a3da961feff772d6e8bff1fe97d246622afbc040e7e7537668319e27239c485"
    "es-AR"
  end
  language "es-CL" do
    sha256 "ccef18644f90f7a8f577c23678d409cc000eb3a29250d56fd6d496821cd3f546"
    "es-CL"
  end
  language "es-ES" do
    sha256 "adc669f36594c4378f1d8d9e771a1932cec3e99e191be0ab2cead6f918c4bf93"
    "es-ES"
  end
  language "fi" do
    sha256 "f51f36b3daaa54ee3b68d09167b3f37a485964fc264021926d833f47410a73f6"
    "fi"
  end
  language "fr" do
    sha256 "0b782b6e18233b586e10a5d92d1d3df12349cd92f391fa659fbb714fe051b60d"
    "fr"
  end
  language "gl" do
    sha256 "013114ecc14e4ab6168e4876d1b466cf1cdcded46db92f2bb1ce75580945973b"
    "gl"
  end
  language "in" do
    sha256 "9996b26cecbb35b95b8a6c20e5222bd3d2e046cf42a33d60558188340e2540a9"
    "hi-IN"
  end
  language "it" do
    sha256 "d93bc1c59bfc116f58d6ed3d804565cd0388e7821f040be0c6920305b604cfe3"
    "it"
  end
  language "ja" do
    sha256 "e085e7f9649bbb30ad81195d4a84079f8f3c8cab60d3639829abbbeded11aa39"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "8ad5ea2aa2647d2192813942e0a978c39b7e2a4598b9790debc98b1084951f37"
    "nl"
  end
  language "pl" do
    sha256 "7d9a596406aed3cd9ed57273cd4d138a2d90b70d55650b9d3030f0c65e00dea0"
    "pl"
  end
  language "pt-BR" do
    sha256 "4e74d03dcba01b4c6c9271c3d74a138f05b2d65f1c13d653a3481526f472f6c7"
    "pt-BR"
  end
  language "pt" do
    sha256 "4d479244499cb2d0b0f465a1b8dd2f41a7c910e96f540e28888d734d7f0f4d59"
    "pt-PT"
  end
  language "ru" do
    sha256 "2bf4b932b6428af17ff21762a95134673484df21affe17c377ed8855fb00a920"
    "ru"
  end
  language "uk" do
    sha256 "7a8e49ce4e17b286f5f2def268ccb03a689b73c77702940cae6f60102161901e"
    "uk"
  end
  language "zh-TW" do
    sha256 "443c5e23eeebc66935ec584144c31576ee28f35fcd37572987173f7e86c48917"
    "zh-TW"
  end
  language "zh" do
    sha256 "6977db4aaef22d042fd39bacc2762370e0da5d8f741d34c5e75bbba7efc5d616"
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
