cask "firefox@beta" do
  version "154.0b6"

  language "cs" do
    sha256 "fb90cefd8a3462c89cfc887e784d679680f9b326f3b60b9cd6e968104a82d790"
    "cs"
  end
  language "de" do
    sha256 "b057d9d5571914880291e6f768ff1bebd855b8ac58c303873cf8d06347817517"
    "de"
  end
  language "en-CA" do
    sha256 "ff34c2ca886503a11c7147a0cdcb877647512ec96126b1fd6185bfaf1be3eab4"
    "en-CA"
  end
  language "en-GB" do
    sha256 "83650992086b57044cc28fc4136e8248b3ac0546f8097e9743fcd045602a4c7c"
    "en-GB"
  end
  language "en", default: true do
    sha256 "d2a0f37a8c12c8deb8363b1d6262a55bd107f89a29198152edd104e06d38ba74"
    "en-US"
  end
  language "es-AR" do
    sha256 "43a05e0c283630f99f6d0a9e2c49af6adbc5b7145c2e6c6870e4ce71a5833461"
    "es-AR"
  end
  language "es-CL" do
    sha256 "ee77689fa04fc166d2572c27f39b37697995afed8b421d46842f39f04dd921a3"
    "es-CL"
  end
  language "es-ES" do
    sha256 "3b351d9eb2b41ec42013c77c5819ae788b5f6df15caab1a419923def77f56809"
    "es-ES"
  end
  language "fi" do
    sha256 "920d345607c46e615a838e57f598186c1f966664e55b35379006716a77eedbee"
    "fi"
  end
  language "fr" do
    sha256 "60d47cc1a17477bf77053ee32db84cfd750734ad4311d540e2d3324d1d2017f7"
    "fr"
  end
  language "gl" do
    sha256 "36ebf8b20669c4ef86d35b44a29cea536af1853a34e1d056247081bbdc541c7b"
    "gl"
  end
  language "in" do
    sha256 "5f2e5f10a49b9211e904f43a80f72ce16765755303184bb5a061b150a46c9929"
    "hi-IN"
  end
  language "it" do
    sha256 "2910e47cf353cf26c6b33da374894486b07503940b5537ba2742e6c1c8253c71"
    "it"
  end
  language "ja" do
    sha256 "7d9ac461f8356409be46b08ebb2efa6ca8a89a19ed393db1d88ad1e7c7c9870e"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "fa0f247ed531025a11f3c3f2b39c001995e42aa1f6ace7e41c348a16e13d42b3"
    "nl"
  end
  language "pl" do
    sha256 "508eb53d7d81a12937888ec2089068a6d220ec71095844d08d004e03608422db"
    "pl"
  end
  language "pt-BR" do
    sha256 "b64ba90ab39a2020a3fcd5a99300a3770df9fe0eceffed82703181f78e6505bc"
    "pt-BR"
  end
  language "pt" do
    sha256 "3afa76190e64e570f3b7a04514a10053447ed829da2f70d5899b121b7c266388"
    "pt-PT"
  end
  language "ru" do
    sha256 "1c0ea1bce140a2298a626999636151c208f28209b1ea1199ae968729369d4442"
    "ru"
  end
  language "uk" do
    sha256 "cf2424bfbdbb489b3f70e12c403730b786f0575c43b8302ed3100d71fd77c659"
    "uk"
  end
  language "zh-TW" do
    sha256 "c29a902dd22af75fdcd76eb039faf44a29e203112e60c0b3c35aba6cd0303cd3"
    "zh-TW"
  end
  language "zh" do
    sha256 "eab7f8c73f7523bea15db055471917801d822fb877e7ace69405839433ef1ec9"
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
