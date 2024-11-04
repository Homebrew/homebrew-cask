cask "firefox@developer-edition" do
  version "133.0b4"

  language "ca" do
    sha256 "c45c1b45753864efe822225b05d653d474d67f904f23eb6fa69178a9c577e1b5"
    "ca"
  end
  language "cs" do
    sha256 "eae962051448e79559b0a61d2b117cf7553e0cc80740d38f4b6e9b6a581accaa"
    "cs"
  end
  language "de" do
    sha256 "31d9a19fc33da24b7ec8c17267b5882e1ac91b4c2c51ea3872fcf7240bd8736c"
    "de"
  end
  language "en-CA" do
    sha256 "137bb10b23ce251c6836b484fffed1dbaaad2dbbe6861bf87e59491f10fec44f"
    "en-CA"
  end
  language "en-GB" do
    sha256 "536383ea0cba7da2a2744f699813a5dd1e3dcda34212b0d1bf6c158c24d7464f"
    "en-GB"
  end
  language "en", default: true do
    sha256 "118981dc91298f7ff33cd22c3a7979c454126cd2bb191c7005e1ed6bfef9d20f"
    "en-US"
  end
  language "es" do
    sha256 "7ef51d591bf3d7050986227150df666f4f659089f4ec351b0977d83474e67242"
    "es-ES"
  end
  language "fr" do
    sha256 "7b91b2899dafd0a582aa376d3de534775d6cc775aed3b33fbe84ac459012e2d5"
    "fr"
  end
  language "it" do
    sha256 "6c5d38fcc44602cb08d09c6a94eb702489279b6955cebb061f5f3d93f64959c3"
    "it"
  end
  language "nl" do
    sha256 "873ec80a55180545b87a98e03bbab12e22f81964534f312f89a1cbec3c329013"
    "nl"
  end
  language "ja" do
    sha256 "040b66978c1eadc83874cf537d080608562115c012154476d104ea0f11f21ebe"
    "ja-JP-mac"
  end
  language "pt-BR" do
    sha256 "45865a9adb12619267d49c81a4f4c2f41394938d37e2fd365f4e1ae336744253"
    "pt-BR"
  end
  language "ko" do
    sha256 "c4fda7ac4d0cbcd0e56bad4110bf4de24d6f48638c2f4265442345abfaae402d"
    "ko"
  end
  language "ru" do
    sha256 "ac791fd7c8b96a45254a3398ffbd199a6af7deeaf4438eba7d1b0c8269379548"
    "ru"
  end
  language "uk" do
    sha256 "3a6496fc96e78005d49e571d7070ec5df63ffcfbb8fec8214082f21f016f82f1"
    "uk"
  end
  language "zh-TW" do
    sha256 "b292dc1a42f633f88f3f0c69e3c9787378e924a3bf364b4867736673500c82b1"
    "zh-TW"
  end
  language "zh" do
    sha256 "d741fdead554fa722f31122ccde9a2d84cc27eef04523fe5dc9649f54f174728"
    "zh-CN"
  end

  url "https://download-installer.cdn.mozilla.net/pub/devedition/releases/#{version}/mac/#{language}/Firefox%20#{version}.dmg",
      verified: "download-installer.cdn.mozilla.net/pub/devedition/releases/"
  name "Mozilla Firefox Developer Edition"
  desc "Web browser"
  homepage "https://www.mozilla.org/firefox/developer/"

  livecheck do
    url "https://product-details.mozilla.org/1.0/firefox_versions.json"
    strategy :json do |json|
      json["FIREFOX_DEVEDITION"]
    end
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Firefox Developer Edition.app"

  zap trash: [
        "/Library/Logs/DiagnosticReports/firefox_*",
        "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.firefox.sfl*",
        "~/Library/Application Support/CrashReporter/firefox_*",
        "~/Library/Application Support/Firefox",
        "~/Library/Caches/Firefox",
        "~/Library/Caches/Mozilla/updates/Applications/Firefox",
        "~/Library/Caches/org.mozilla.firefox",
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
