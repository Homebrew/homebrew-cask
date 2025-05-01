cask "firefox@developer-edition" do
  version "139.0b2"

  language "ca" do
    sha256 "9ba34a7ed777ee42f62d8664d1444fe10578eebe7de9097842046b25b8da2bca"
    "ca"
  end
  language "cs" do
    sha256 "4ccb374da4d66371cabf7646eeb9ff97b7134fb793455553b6b99c154e552d70"
    "cs"
  end
  language "de" do
    sha256 "3903c322f3fe21c9ae74fec549e71d4056169083abfbf3c3cae8ed6708597c77"
    "de"
  end
  language "en-CA" do
    sha256 "642d21747992c07bf763680e71765b51212b3ddf34d957f02dff35c615d31667"
    "en-CA"
  end
  language "en-GB" do
    sha256 "5b5911939260f47f357108a0c8d1b775cd027204377729a99fd57876b99a6b12"
    "en-GB"
  end
  language "en", default: true do
    sha256 "b7cb60b4883e858619784da1760fbdda9325eaaa952b9d14df0600ee7e5f3cfe"
    "en-US"
  end
  language "es" do
    sha256 "92b51377f89631ec5ad80d28d070ef764beee752b74cdf78a1ebd14955be0f83"
    "es-ES"
  end
  language "fr" do
    sha256 "6f7f7da83403e7da4d6a81f79be56b64cc2643dd6967389747468be930279cba"
    "fr"
  end
  language "it" do
    sha256 "d3ddab1f77ded9912e67e27afad8792f9c842f1be9ddf201e985360a0ea7c293"
    "it"
  end
  language "ja" do
    sha256 "01119f40680fc05c561b0cd763501bcd9df63be1f694cb774bb6ee86e79e6767"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "d2811029e945127d65a5b7ba87b877a3244754a19761c9e97d640a1347534faa"
    "ko"
  end
  language "nl" do
    sha256 "f48a574423f0e9b880735a4c1f006f39a964777ef298b573e7c54674959f7403"
    "nl"
  end
  language "pt-BR" do
    sha256 "68da3039e0d7c14e8945c346ef189b2c90086cfc6b1b5c4ec51cc55436f1f2e8"
    "pt-BR"
  end
  language "ru" do
    sha256 "d5450bbb6f811756e5ba51db6c3f9474b1ac5fb6f54f8c38181cb9462e15c4b8"
    "ru"
  end
  language "uk" do
    sha256 "97bbf75e45d7d2929401f07c7d317170147094c3a884e7be10e99d725187da40"
    "uk"
  end
  language "zh-TW" do
    sha256 "8bcf2fe90146248286f70fb068fd66571197a86c354332aba9f6937ca58516dd"
    "zh-TW"
  end
  language "zh" do
    sha256 "a4fa98b1f8e4627b31f7dc222ef76eb051eac525ac779426c2d4e76ea206124c"
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
