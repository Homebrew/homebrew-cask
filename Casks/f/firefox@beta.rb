cask "firefox@beta" do
  version "157.0b5"

  language "cs" do
    sha256 "69a9259f44ebfea00da7b39f32c34907f3bd414f8ce91ae7fc89548538e91aa2"
    "cs"
  end
  language "de" do
    sha256 "e7938b2dc4d877cf0299a498a6f3ffe486a820490058e4f55fed3134b88568b5"
    "de"
  end
  language "en-CA" do
    sha256 "a25c89429239105d68ab5b4f708349d1c224c03e9dbbea3175ed935d612abce6"
    "en-CA"
  end
  language "en-GB" do
    sha256 "e09db30a96e68574cdcbe3f551a9177fdf4b8b845cf58a8e68a9ebe6ef83db81"
    "en-GB"
  end
  language "en", default: true do
    sha256 "c4b9186a30854f299cdd146d5d4cb5837443741a0ab12f096c80965f10570e63"
    "en-US"
  end
  language "es-AR" do
    sha256 "5d33148df11c43f86507cf6382e1acd93d8a5c5159dfdf831201987f97009e8d"
    "es-AR"
  end
  language "es-CL" do
    sha256 "5504c90bbb94f9dcc36a8dfb8e0845cfe8f65f2f8bce6aadab800c2ad44637cd"
    "es-CL"
  end
  language "es-ES" do
    sha256 "557d872929fd7ecdf18bb319fb3f306bfe72d4b39f7dbc2f51ef79c374d0ed59"
    "es-ES"
  end
  language "fi" do
    sha256 "ba09219e3e742db74c4e11e0b4884c41d1764fdd6c8dd270bee06d7f4f6af4dd"
    "fi"
  end
  language "fr" do
    sha256 "aa964b95df04da767884fe88ea6561364af8f99f0316d3cb3b40aaeb872a5bcf"
    "fr"
  end
  language "gl" do
    sha256 "46f781ec7b49baf50c4ed9ee7413c26073ec32071578a0da6fbdbeda91f42453"
    "gl"
  end
  language "in" do
    sha256 "0ec9c40f4e7d96d3146cdd5743c54ab544b5547722f55e4d40a653a4027b6876"
    "hi-IN"
  end
  language "it" do
    sha256 "77e6fd49d0a08be37545ed8acd5f4f38cb141d6e01097d03d369af41ead61ed6"
    "it"
  end
  language "ja" do
    sha256 "18b1f49c47e4ce7d4f0afc6c711039b027d36ed117ca5f5f9782c6bf8a6c1981"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "723c240a987be826db01d253538e943bcdf11696fd014f5395b1ff1e9e645ecd"
    "nl"
  end
  language "pl" do
    sha256 "36bc71aaca780d55494705d3fa38de8bd5ca6e9e1c58a0b45d155400fdc21bc3"
    "pl"
  end
  language "pt-BR" do
    sha256 "dfe3e3d207e3452bd13319552ce0d37a49767ebf2dfd95febaecfacf4aba869a"
    "pt-BR"
  end
  language "pt" do
    sha256 "a18b2ab8127690400f01c22181522c85286d8166541f3cc0aa8b76242b47bc7d"
    "pt-PT"
  end
  language "ru" do
    sha256 "325b198f64cb1a571a38e7a364af31c1f28563c4089b509e701eee4a57f7fd4e"
    "ru"
  end
  language "uk" do
    sha256 "138b3793f2de3b285d69a722de86d06ec2b2b638a0a44291b4ded5eaafb7b654"
    "uk"
  end
  language "zh-TW" do
    sha256 "3b8b7adebad5b7d2cd21f368a3bf5f6cd3f662d589353c0f75a4aed8ea908cf4"
    "zh-TW"
  end
  language "zh" do
    sha256 "21ac9beda45bc6dd1f22e90b788914445bd6258f9cb1194cc84790036db89b2b"
    "zh-CN"
  end

  url "https://download-installer.cdn.mozilla.net/pub/firefox/releases/#{version}/mac/#{language}/Firefox%20#{version}.dmg"
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
