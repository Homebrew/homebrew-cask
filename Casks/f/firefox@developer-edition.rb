cask "firefox@developer-edition" do
  version "135.0b5"

  language "ca" do
    sha256 "5368fade761a1167ed64640df0a72539b887a6dd8a3c18e4dd8725377c1f0383"
    "ca"
  end
  language "cs" do
    sha256 "b49a1d7de20e99cfbeae1bf1482ee0641406aa0bd92bd7f683518a435e674add"
    "cs"
  end
  language "de" do
    sha256 "9442092ed0c35b50d6194def13321031f288b7d7355c3a693b30afbe0c8808d8"
    "de"
  end
  language "en-CA" do
    sha256 "36dbd99f6ca64203a28e3ca2e771b523104be9bf030e5aaa608a3b4b84bb5497"
    "en-CA"
  end
  language "en-GB" do
    sha256 "d11d70807b1349ff745e69e313e36ea2656ee7a720ba526b4aefc79579fd9198"
    "en-GB"
  end
  language "en", default: true do
    sha256 "4a8f49cbc53584788f7cdc600a86abc2156ac899631bb3a649e42eeda344a5d2"
    "en-US"
  end
  language "es" do
    sha256 "3342db1a97f2a458b34e0a091d0f96d244109a32a337291cd66066bbf8918370"
    "es-ES"
  end
  language "fr" do
    sha256 "71c53f74e6912e9f4c060cf1c85fc3b4f0fa9b4b2daae351a021040d84218b8a"
    "fr"
  end
  language "it" do
    sha256 "89e6cc3e6098321652429d0f0e7fb22fd6b759b7bc8bcd99094f02a1d53b76ea"
    "it"
  end
  language "nl" do
    sha256 "30db6d6e37a70de34539e85147aaa54a4a47edc1562a4615dedc344b203cdddc"
    "nl"
  end
  language "ja" do
    sha256 "f0c2d652a2f1fb12b2baf59777721c9d61512f5b1335d8d84c72c83862a54a65"
    "ja-JP-mac"
  end
  language "pt-BR" do
    sha256 "b68e23b617705909caaea41eefd5705538452bb8a217380c5bdbeef74ccd96e6"
    "pt-BR"
  end
  language "ko" do
    sha256 "1738ccf683df2c47533075151a5b8837c6994f53c9c9fd70a5898bfd39e0b717"
    "ko"
  end
  language "ru" do
    sha256 "bbdc191de3133a23fe7d1f2defe7e294de28b13a625821722ed70b99e15931e5"
    "ru"
  end
  language "uk" do
    sha256 "107f0da6ddd06f8d4d3d3929201d11c014fe9d99ace4211ce9a80a0c44ab9121"
    "uk"
  end
  language "zh-TW" do
    sha256 "d3b08bbdfd5c213db36b967153692d5cb8310dad4c0359bbe064476846dfd445"
    "zh-TW"
  end
  language "zh" do
    sha256 "38a859586aac9bdf1541816869a25e9f84ddeb1e68172f0c362dd2e429f369a2"
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
