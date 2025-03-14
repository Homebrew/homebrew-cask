cask "firefox@beta" do
  version "137.0b6"

  language "cs" do
    sha256 "97ac0e952f4c562c6a0f596d8df1ae413241481e27281c3bd6d594cb9f60d1ea"
    "cs"
  end
  language "de" do
    sha256 "928c65fd066a1eb61c942964a35994450f7246579e9b864f6144a856d37026a6"
    "de"
  end
  language "en-CA" do
    sha256 "f4ca401255231656c57081f6029bdd6075bad337c35199255e41509272c7d197"
    "en-CA"
  end
  language "en-GB" do
    sha256 "04bfc5fdc9761dc1db8a1b587784975c4dff4d5719fee8dde07dfaf35a2c2351"
    "en-GB"
  end
  language "en", default: true do
    sha256 "1bd8bcef306aaa99e7595a9a5a8fb1df4c977fc661c815d33b7636fb48410154"
    "en-US"
  end
  language "es-AR" do
    sha256 "847145f77d23039a6bfe343d7f83d9ed9483e297d7eb722c01a0cd0c7dfbed3f"
    "es-AR"
  end
  language "es-CL" do
    sha256 "65ab7c3509b7182d298406debffb1ed9632bd73b2e48822890a5acc60bdce487"
    "es-CL"
  end
  language "es-ES" do
    sha256 "38a2993a96d523160bfd22db8e7c8850283850626859cb2e03a058acd9566429"
    "es-ES"
  end
  language "fi" do
    sha256 "08ced89440956ea6329fc069214a49f14eaaf3724195de8f90fc665f76347cf8"
    "fi"
  end
  language "fr" do
    sha256 "825764d7186b5033f59155e619b6fbe27edd71ecf89e05c0577016dcef75e8ed"
    "fr"
  end
  language "gl" do
    sha256 "f5c17eb82e6e0d4aa895431b61c13a00424e6c0e4c8ae86b29e66cd029ebde98"
    "gl"
  end
  language "in" do
    sha256 "a63cb1617ec81e7b56b6318e1fdd11015e2ae643b806799a38a75479cc665577"
    "hi-IN"
  end
  language "it" do
    sha256 "cfb6a213d6dca0efad781131c29bb62c6cc95c4ea7aeaed09619147363b1b2f7"
    "it"
  end
  language "ja" do
    sha256 "060e05deb01914d9212712692f1ac534058c5d5a2c2b0f20fb651ce34670464f"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "e6f8f0823bb670d5dc22bb2502813392b0b4e5320b95675549843927f276fe5b"
    "nl"
  end
  language "pl" do
    sha256 "76f88c9a152f65cd37c0c50a4394062fe6924586e637a75cded455a106589d97"
    "pl"
  end
  language "pt-BR" do
    sha256 "eab70792e26c452ed94dbf19b6a9b5eeeb137abfae114b952f86cf5e0306c938"
    "pt-BR"
  end
  language "pt" do
    sha256 "f5ce0f3e91f4c0f9f255fc74d05f2752aaea9f8126ac4099eec85c6f5ab96cc9"
    "pt-PT"
  end
  language "ru" do
    sha256 "25721111c23f2d3399277f1ffad87e7d82c21a1476ed66c3088597dd2a9370cf"
    "ru"
  end
  language "uk" do
    sha256 "905baf376d05f93f68057b9eebb7e160433a4433ab393da6c968486ae9849150"
    "uk"
  end
  language "zh-TW" do
    sha256 "8ec6d6bf67d0ebba38435b2459f93bf0aa716d808435289fa6298e11aa0bb21b"
    "zh-TW"
  end
  language "zh" do
    sha256 "8f7ede8e623b14d8ce7de3f2a30b686523752aea0ae44c8247bc7669dc44a5d4"
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
