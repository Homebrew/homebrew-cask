cask "firefox@developer-edition" do
  version "143.0b7"

  language "ca" do
    sha256 "daa7136c832a2c83fadc3f43113ea5470d459db586739c0c32ee3ca507f73676"
    "ca"
  end
  language "cs" do
    sha256 "1e9ceedd5c4e297ef0db9fe81d932c90657eb6e6bb11e42565cd7740954d66bd"
    "cs"
  end
  language "de" do
    sha256 "a03365dc1894db0d18122d64dd74225e6fa7220901188c56cbf96346bed76d67"
    "de"
  end
  language "en-CA" do
    sha256 "316b263306966ac77fc8b0f81e170d46107344085faea72a4de8ef23426d9e7f"
    "en-CA"
  end
  language "en-GB" do
    sha256 "3008ae8b0980a332f309192eb00216c3bcbb48543e3f38912389b822c5d0cd4d"
    "en-GB"
  end
  language "en", default: true do
    sha256 "3c720bd71ef89baf0beca934d65f6ed4af8861c290ecc3be038fe8ad5518bfc1"
    "en-US"
  end
  language "es" do
    sha256 "4d6d295ba5fa09dff87f2c886da84eec8706dcc4b6eb08312aaa33bafe096d66"
    "es-ES"
  end
  language "fr" do
    sha256 "12e2542cb0790d426d8e8c76c56e78db8d93b248e5af264a3bb7687eef103c63"
    "fr"
  end
  language "it" do
    sha256 "a97ac6e8b24312ab0960d61751539301eda1febe9362a63e92b3bdbd7e1962f9"
    "it"
  end
  language "ja" do
    sha256 "a1b03fe2269baa9219ac9d8cea5a265f981f0d118f19b8a043a06cac84986fe8"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "cf1be3829b1635fb05500daa7a2ee1c22b6d0f78637a9caebf2198ebf5d012db"
    "ko"
  end
  language "nl" do
    sha256 "a26d7ed9529d52c4a8de1d55e12186e0b0c70dfb9bf45cd38465eb668197fa2b"
    "nl"
  end
  language "pt-BR" do
    sha256 "f35d8c0d37dd4f0f7f63d059c1099759c1560a3ddc87897954cd25db621aafd9"
    "pt-BR"
  end
  language "ru" do
    sha256 "4943f06879255e2540f1ba00e1b7101a901929ff0db52d359b57a14d598f96f5"
    "ru"
  end
  language "uk" do
    sha256 "dc11ee489477b355dba2fbd2c3d4a9110927689c0d07eaf422dcce4e8c7a002b"
    "uk"
  end
  language "zh-TW" do
    sha256 "12ab6262a746b1641e4b3e88145de16b728963fb574d16b9b727a8a5a4d9c0df"
    "zh-TW"
  end
  language "zh" do
    sha256 "5a6985c6b0b52e83c4288c5509d8dd618078374489601a4d478d70036313e7c2"
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
