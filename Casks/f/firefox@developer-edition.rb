cask "firefox@developer-edition" do
  version "135.0b6"

  language "ca" do
    sha256 "428cfd535b983aa80c5a350e79d6742907ff289a5671309587c7075cc5d35501"
    "ca"
  end
  language "cs" do
    sha256 "bb82779bf2be32e7c08a6728ac481dbd9681b537dc9b41bcaf517c7992605656"
    "cs"
  end
  language "de" do
    sha256 "33a4703ccccdd595e29e943b01903ca5b963c27c48c6a320e11a38a784c97141"
    "de"
  end
  language "en-CA" do
    sha256 "41f72b07d94397d43aecaab23a143283d600dbe277ee25ac71435fbbc901c191"
    "en-CA"
  end
  language "en-GB" do
    sha256 "3a5b44c772fea19526acae0e81e04cdf831f44e5f9bb62c509ddb80dbb693746"
    "en-GB"
  end
  language "en", default: true do
    sha256 "22e1c3a1ba0ad452294c11701ff0e7b9ee3387420822dad343953face3abc90c"
    "en-US"
  end
  language "es" do
    sha256 "8cee35042ab4e14097e56083ef215cfd54d5f103a36acd0a1a162e242578f004"
    "es-ES"
  end
  language "fr" do
    sha256 "dd5a25e5d0d249649124773115e8e1bba67cb4ca91a601daa00a71f54293f9e0"
    "fr"
  end
  language "it" do
    sha256 "b19ed4b4d57f7b1650c4a2d7448efc7ae86c88e31d048a131275e3885ed31b38"
    "it"
  end
  language "nl" do
    sha256 "ff39eabe09744b3eb2a39c22fdc42164f84b8004b949820e29b7f20e5105769d"
    "nl"
  end
  language "ja" do
    sha256 "a807191efceceab0a86dbeffcdc134d9eb0592eb0a54d21429cc104855ebf341"
    "ja-JP-mac"
  end
  language "pt-BR" do
    sha256 "69a0d337194e38c24ad1cf4406225a1deeed63e02be0f4d92e05a112c041c785"
    "pt-BR"
  end
  language "ko" do
    sha256 "f74984097413bc9f3cab1bfa8588bb7a230f742bee2ff4395fb75466228f2bfb"
    "ko"
  end
  language "ru" do
    sha256 "e100062914dc2c7222ce60548cdcef5e132c462614b73c17311e5cf9ca7580fe"
    "ru"
  end
  language "uk" do
    sha256 "757eaa2e7e1ea0afae0eda095f2292d9ea67d241536111f2ca08c3587f1601a2"
    "uk"
  end
  language "zh-TW" do
    sha256 "47288708a85fc632e9a6e6d6ef6d01fa02da6388d01857db0fb085576871f4c4"
    "zh-TW"
  end
  language "zh" do
    sha256 "e553eb6e2eb40a85d64f858e17d14850dfc833c3376f36a865e7e7f3d53a0127"
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
