cask "firefox@developer-edition" do
  version "142.0b5"

  language "ca" do
    sha256 "2d3fd526bf99d976eb22c44049a064f296faae8e40b632fd9db43b6ed6ae6550"
    "ca"
  end
  language "cs" do
    sha256 "4b6712ca76bf4174130988b277f4fa138d7a7a26692a7e86e68d5a57f44ed40f"
    "cs"
  end
  language "de" do
    sha256 "310d7936041c3c64404ecf3a577d7607a187b373104eba8526ce48bd79f54b72"
    "de"
  end
  language "en-CA" do
    sha256 "7d6e306653b205928819e803e55f64d230330dd7a8284b7276c63bd149459807"
    "en-CA"
  end
  language "en-GB" do
    sha256 "e8cc1bc9c48ef82830a6862d0b2583792cbd23ada60776476cb862aeb5957ea7"
    "en-GB"
  end
  language "en", default: true do
    sha256 "921b55820d0502be709c94c66f9110ea9c3546a248423897a2ce8a259953ffed"
    "en-US"
  end
  language "es" do
    sha256 "ed4689a72683e63c17156691b6c1bd5b4c5b9eaef47a42fb8caea55e0b95e38e"
    "es-ES"
  end
  language "fr" do
    sha256 "ec7bb9f1ddd11d35d83bb2e9a0c56bede3af08f1133d81623de748d7b98ac1d8"
    "fr"
  end
  language "it" do
    sha256 "0286e59f917300da9053f1547baff82dfb5f21ab41f232d18e4473c1400a6886"
    "it"
  end
  language "ja" do
    sha256 "2f20a010844264a281d3f30533741453707ac2072085446aa80aca6755bcf8c4"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "c78900f2f4c5d25d423654395c9f28554ad6ac47791b71c0b73080a8350f6601"
    "ko"
  end
  language "nl" do
    sha256 "5c839ac7c5a3be756762e4f55e987f50a5e04de124df1323b7b299d717e8f6a2"
    "nl"
  end
  language "pt-BR" do
    sha256 "f87d2d68b626df8b1eba1cb7389cb15868348e513622d0635e521b3cfe1ef6f7"
    "pt-BR"
  end
  language "ru" do
    sha256 "a2d85f07cc66f33dd59f1b908a95114490779155ee8cd80fe31f9b358a2c9872"
    "ru"
  end
  language "uk" do
    sha256 "9622b55f3408c57340594ec1d6683f5c4252e736e92be86ade2af3f3f9f722fd"
    "uk"
  end
  language "zh-TW" do
    sha256 "266d2128acce2aafbc923466edc78328f0ad26ac46bad410ac880feb29dd4d43"
    "zh-TW"
  end
  language "zh" do
    sha256 "1e679aa89639de9bf7e8d237daa756c7752620946e2cbdbeca2fe1b41d94d01f"
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
