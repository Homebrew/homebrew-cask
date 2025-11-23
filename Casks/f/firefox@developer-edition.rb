cask "firefox@developer-edition" do
  version "146.0b6"

  language "ca" do
    sha256 "20da0ff37fdf386b8909c58963614839bffc017b7345dd64890cdabf61a03f72"
    "ca"
  end
  language "cs" do
    sha256 "69a554278b0d568fcbd54c063491f1fc976d94eea673404ebca24e98b3fe1743"
    "cs"
  end
  language "de" do
    sha256 "e2f8f0a5d511599930132f564dc79b24046ea8dcf9b633dfe1d4ec5ff53cbc57"
    "de"
  end
  language "en-CA" do
    sha256 "fbe20d8e8e51b274a020fda28884805d315a6146ff30541e91a61dad2e012c33"
    "en-CA"
  end
  language "en-GB" do
    sha256 "63703d97710f8ca415d4c38700f02f24ecf711d236c763466428b04dba51cf65"
    "en-GB"
  end
  language "en", default: true do
    sha256 "792def0f445460024d6e72e7e5b6691e6187484f460da499ea56963517f2445d"
    "en-US"
  end
  language "es" do
    sha256 "c7d51dc6fa480cf4499fed9f6abd5e0afef52fd68f12bf7a2274d0d8f5e0a3ef"
    "es-ES"
  end
  language "fr" do
    sha256 "9ad880bf24a1a9e3e2241f6126937a6a2a2a958f36464a4b34312ee4aeabb152"
    "fr"
  end
  language "it" do
    sha256 "f7db031fe152d57ce086cb5297b20f086a5c39540596c27587029a63accb9f56"
    "it"
  end
  language "ja" do
    sha256 "4ede13d27a051adef01c7edd6e26013e3d7a3e2c021732608eb4d6e34d7f137f"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "95735e7fbac6a0a17b3c05c87798c7d4b8226ee05780019be209e1ffc482807b"
    "ko"
  end
  language "nl" do
    sha256 "70f3653dd88ef49e812482cdc980d5f2c8d948da7f35c23ffb2ea9998ed7bdcc"
    "nl"
  end
  language "pt-BR" do
    sha256 "c0505c81cfc8680d72ed7879336812726c6c986b3b25e954d2c6778ce69a5ca7"
    "pt-BR"
  end
  language "ru" do
    sha256 "ed57d68316ea29b09f571d1dea83474f2725910a93c2275f553a3ac85a32b9c4"
    "ru"
  end
  language "uk" do
    sha256 "6291ab872749607e5af22513d24179e51db2567244ef19325ed886c5550300fc"
    "uk"
  end
  language "zh-TW" do
    sha256 "e99f99951f7cb49b0021d93318626b6f00bebabf3bd16fbc7f66d68ffb76e21c"
    "zh-TW"
  end
  language "zh" do
    sha256 "587e2f60844a511623a5c094ca41c801625177ae2e06d925062516580389de09"
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
