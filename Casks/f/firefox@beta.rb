cask "firefox@beta" do
  version "136.0b6"

  language "cs" do
    sha256 "d6cb86db43fd9af213c91e6cf6f616c8d60d34cf9c7952de29ac0347bb41dac3"
    "cs"
  end
  language "de" do
    sha256 "9aa8159374aa247b544e92d0ae0e8f4ff00b554a984e2d3bb7c9790574d8af79"
    "de"
  end
  language "en-CA" do
    sha256 "eba76a7c76ef56ece70b1ad2ae63cb84c510ce77ae38e7f28b66ead81f093762"
    "en-CA"
  end
  language "en-GB" do
    sha256 "d19a38c78de1d43e7f2dd7bfc9a08dd61ad03dd29107e98629e95bd85c36e5b7"
    "en-GB"
  end
  language "en", default: true do
    sha256 "eb71ee33566b027a60157b219d357809978a0892629b47c3668f30d94cf8d1c4"
    "en-US"
  end
  language "es-AR" do
    sha256 "4f2ac605e1894d31bf849330c4db073b1a5de89e6e5af06547775d6012442aee"
    "es-AR"
  end
  language "es-CL" do
    sha256 "0ad18026463877fe8a6b9d4b9a2596bce797ab9645718a0681bb8bcfc0d21881"
    "es-CL"
  end
  language "es-ES" do
    sha256 "e93066e0753fccb0065e380d818a631fdb3883c73909407b4e2d9c38653bd546"
    "es-ES"
  end
  language "fi" do
    sha256 "abb915a5a8a4b3155a9fee611dacc5c7d953df99952caf1cc5359b9a31593f79"
    "fi"
  end
  language "fr" do
    sha256 "4d790606d0cc54ff39b50eae7d00b4aab5733142ab00d0b9d555ec96670c43a4"
    "fr"
  end
  language "gl" do
    sha256 "adb540d2ec01ece9676a3b736e8568cb1262e846fcfd5b827a7004d9834eb654"
    "gl"
  end
  language "in" do
    sha256 "4086ba81ef25f5ad949e95d83a11273ab1925b129d9e212f0326cdcd43217567"
    "hi-IN"
  end
  language "it" do
    sha256 "f24fd5a68726fd21439fb7afdd20682305b4f686cb9e21b2fe04f9711abf34df"
    "it"
  end
  language "ja" do
    sha256 "9aef7357d175d2f0dc133cc8e52bffad2436e94e6b52e43bce1d62df7d4345ad"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "cf3d465b77dada1e93d035d878bc8c1f376ce685937f8d8f9cb91ed489a9d0d2"
    "nl"
  end
  language "pl" do
    sha256 "be4737bbe12857b15b38c3e09a0e2db3f40c2f0f9790da5eeabca1edda1fcef7"
    "pl"
  end
  language "pt-BR" do
    sha256 "405dcf6a984bbd74f02339e1b2f2fd3314235a7da7249a69e6b142af1f9b8769"
    "pt-BR"
  end
  language "pt" do
    sha256 "8ae4c26c07dd79df71b01bd11614312a633b6e376d9b930b6facbf0b3d788947"
    "pt-PT"
  end
  language "ru" do
    sha256 "accb83f85b8bf959f1e7a20b6065a0331414cf330dc0d73462def5a8f551caef"
    "ru"
  end
  language "uk" do
    sha256 "6fe16488c2adc82743995721d1cf01fcc48c61c4466318b7398a53c7012b547a"
    "uk"
  end
  language "zh-TW" do
    sha256 "1e41e64f9cb370f00b8e58b5819810cd91d63577ed3645f2ab3c21eba5a4db24"
    "zh-TW"
  end
  language "zh" do
    sha256 "c1b3f6f66e93444a9f61e19e0f592aa4bac1ca93ef06ce61222bc3964bed8b35"
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
