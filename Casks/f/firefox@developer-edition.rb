cask "firefox@developer-edition" do
  version "153.0b6"

  language "ca" do
    sha256 "ded208c983f6dbaefb46ef5530ae1def1ff34958ca9f410a1970cd8c4d178096"
    "ca"
  end
  language "cs" do
    sha256 "ae90e35a78ed46c4f63190cee1c467320c4da95f53e9b7b118ad8d2e13d140a7"
    "cs"
  end
  language "de" do
    sha256 "558f1c07c8924cd3b06df6675506980ee178a94cc3acbacc9e3d55c88be939c7"
    "de"
  end
  language "en-CA" do
    sha256 "c0092983fa3bffe29312e34cdb8d5a6ea0ba1b59313133adc41f3dc6b542b7a1"
    "en-CA"
  end
  language "en-GB" do
    sha256 "5665cbe5bec1f7607e2b71e5f2c1fbe50d1e21fc98bdab2955f80e57501a72ce"
    "en-GB"
  end
  language "en", default: true do
    sha256 "b2d1c8706aef98294628717342332d9f4227f5ff56642583b81f4f18a7885a1c"
    "en-US"
  end
  language "es" do
    sha256 "8b76f54257c4a5075b388ce2ac75680ada58c5ca93b36ab86d34395479c2c423"
    "es-ES"
  end
  language "fr" do
    sha256 "a064f1192b7cfc2694122e4fe27749a73b143c1b47c16da7b347d20ab46d8267"
    "fr"
  end
  language "it" do
    sha256 "fe0c1e35eb7fde40783fa58091f0b47bd88a09f31a489ab67deb250dc05361d5"
    "it"
  end
  language "ja" do
    sha256 "96d7df3b571c4253dcb98e1dae3a253929cb0b4a3bd1a72579b36c50ab3b9065"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "65b194f2db8160b3dfecafde88cbf3fb2c41d17f728a7f875e209285c472a75f"
    "ko"
  end
  language "nl" do
    sha256 "f5ae262c89e1f8d8259365cbebc375c8801bdf75d9e8bc6127c44fe398eb0fc1"
    "nl"
  end
  language "pt-BR" do
    sha256 "d2b7d4bbe1e44152813ef7c111ae1a7370aa81cdb53d33c7df621a5f79bbba38"
    "pt-BR"
  end
  language "ru" do
    sha256 "08abe72944117c57856679b5331a00ce421270ad4da1c91675debed6c1b74391"
    "ru"
  end
  language "uk" do
    sha256 "deac95f438367df9510e7abbdda99098e705082c95f257081e59bf00c7a416c2"
    "uk"
  end
  language "zh-TW" do
    sha256 "85cf42537a44af4f2a7019cb39a8893671fef37e91311a3ae437a2329c964171"
    "zh-TW"
  end
  language "zh" do
    sha256 "da5d9b505ddf73f704e2d08f9f2536edb2c1273eb3886a4f2690e0e0a1c6d088"
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
  depends_on :macos

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
