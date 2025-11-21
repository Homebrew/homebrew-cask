cask "firefox@beta" do
  version "146.0b6"

  language "cs" do
    sha256 "1fb0e2c89d840544602bcf0065db46d1306baff73ed8d9da4d5c447db40865a4"
    "cs"
  end
  language "de" do
    sha256 "268dca9b5bb209d6a4d070f3cbd58253575909e8f00fd97926db6ae96b128a4b"
    "de"
  end
  language "en-CA" do
    sha256 "24d2c6a875f1778eb1474cdf1f1f00cade6535332e00dfe65ce79b408c17baca"
    "en-CA"
  end
  language "en-GB" do
    sha256 "2da3a1a384f4781f4d8ea4ffdb0d2506d3ac699bf44736b8ea03ac74e7075904"
    "en-GB"
  end
  language "en", default: true do
    sha256 "7d95ad9cf881c1dbd06d16ce8d23830cc231ecd2c531d210a4ce33126c7571a5"
    "en-US"
  end
  language "es-AR" do
    sha256 "c215378fd929f98660b4575f5e767ed562dae7693c733b4dc0dbd84f9a4d6ccf"
    "es-AR"
  end
  language "es-CL" do
    sha256 "69ccf8120cfaf06a30ed1f186f7e26c878f9c9fb4d082ad253937747f4adc79c"
    "es-CL"
  end
  language "es-ES" do
    sha256 "d2ab8154e724cbdaf08db6648fcfa9730d86d5e5271747c51733e77cd368ef98"
    "es-ES"
  end
  language "fi" do
    sha256 "20f69d1b86472db5baf5d343bb842098601c97b40731ddaaf09759527d5ebac6"
    "fi"
  end
  language "fr" do
    sha256 "75d23500718cf0de55926271c3bfb6ea6ffaad210bca8f70557e07bc018baba6"
    "fr"
  end
  language "gl" do
    sha256 "eb81035a341f5a3b510185ed7c19c7aabb4b155b7c41b276deaab69e2b12a3d7"
    "gl"
  end
  language "in" do
    sha256 "ba302c801840fa0980bbb2114e8e42302aa1ea03ccce53e9aa0b992cee4607ca"
    "hi-IN"
  end
  language "it" do
    sha256 "b149dcf0a0e1a92a76cc7381834aaf6431a642be87b39e8985d5bd1e162c3357"
    "it"
  end
  language "ja" do
    sha256 "90d872c3096c1075632915cacd8d47d0f9783f7f58aca25b6962fc4e280ce9d4"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "9328cd3bf85445c8082f759e482a2670fbfa77924c36d8e4545ceb83175728ee"
    "nl"
  end
  language "pl" do
    sha256 "d35daf96879d223a70db49b0793e4f7861508d0535312f9d4dafc054b9e58a99"
    "pl"
  end
  language "pt-BR" do
    sha256 "6fe5ce481b2fb79e05ebf7d08f38dad824c657907b2e028598ff7ff670ca0625"
    "pt-BR"
  end
  language "pt" do
    sha256 "ac34efc1373ff547790b1f758b935b59d075d21d249e075df3d1c0bf4bc53cc7"
    "pt-PT"
  end
  language "ru" do
    sha256 "cdd632002592ad27fb16634431b4d654bdc3f4c2a61b573226bd4fe95aaf50d1"
    "ru"
  end
  language "uk" do
    sha256 "d0c2fc014b31829743a055d27e98a0bc7872a888d068afed2253704642c87312"
    "uk"
  end
  language "zh-TW" do
    sha256 "4c34fb6a48633983cfb4941752981e110a9f8c676eafdbef939c4896a380f469"
    "zh-TW"
  end
  language "zh" do
    sha256 "2e898c4718a3d890319870210c48f105b11e43158e2b84933432c98639a2ec7f"
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
