cask "firefox@developer-edition" do
  version "148.0b13"

  language "ca" do
    sha256 "337095c56b81a57643c7c02dbe56d0b671396c2bfd71581efb4bdb106392620d"
    "ca"
  end
  language "cs" do
    sha256 "0eacd20d95ba2b7982c5e7a30372f898680a08ac6fc855a07c830788f93095ce"
    "cs"
  end
  language "de" do
    sha256 "756d9a383fc3a79368c0fb5bfc817ada801948eba173e226a2b9044972cfd3fc"
    "de"
  end
  language "en-CA" do
    sha256 "677f060a36858fd9aa7324a091fe8e5c41c8ff50c13c7f68efe39c40febd9b19"
    "en-CA"
  end
  language "en-GB" do
    sha256 "c61f2bc89b5b069eed4dd3d69c70565367958f4f2737f313c968032c42503525"
    "en-GB"
  end
  language "en", default: true do
    sha256 "b3c44c88b787d6064e985bdd4a34103b5c8cb10803cbaebda211e431a0d5140d"
    "en-US"
  end
  language "es" do
    sha256 "ff2aadcc6784b4b934d21ab1c357ac3cac4bfe763adb34b74f89237a8453bdc7"
    "es-ES"
  end
  language "fr" do
    sha256 "b69c43706aaa13a1f7d954d8f4a12474f03e39e3b16f7fae4f70efee205eb4e0"
    "fr"
  end
  language "it" do
    sha256 "75cf0dd7b185a80282ff888da9e849900a254e5333ee962eed5cb1eb1e72b979"
    "it"
  end
  language "ja" do
    sha256 "46012099262d00fa40c26bda96dcc733af05e56a744b21f2a42df13e859981af"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "96a0da3828362857b205d5ccbf5723bb4ada6a348dc2e31c8527c725b9479e4e"
    "ko"
  end
  language "nl" do
    sha256 "04bbb0de167609360123690d49deb370c94512fa40635e8fda0e98d0044ae983"
    "nl"
  end
  language "pt-BR" do
    sha256 "a0f71311b38879fe1cd1a939427c2f8399268a37458f2693527d32b1ac08317a"
    "pt-BR"
  end
  language "ru" do
    sha256 "410c726c825b1adf18b093a5a49223f6c0d620bb3bd8a9c10e252a064a542bcc"
    "ru"
  end
  language "uk" do
    sha256 "83e6daf80714f1e95f1a0ccb394546c53ddc9e2de8960768ea0bed918ee9aa3f"
    "uk"
  end
  language "zh-TW" do
    sha256 "cb01f38f8db27b802c23441ff9495e5c3d7b8d8bfe73e3e68f72851bbd4f4ea9"
    "zh-TW"
  end
  language "zh" do
    sha256 "976ce09964a917239e45de94fd840119dc65963c9019ada21d79cf88387e32a5"
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
