cask "firefox@developer-edition" do
  version "133.0b7"

  language "ca" do
    sha256 "b2b5990bb2faf53407699537bfa0582c2ae6864dd28c7503373e37400a711c27"
    "ca"
  end
  language "cs" do
    sha256 "b85d494f570b0a848740948314d464292d551f29658e60ff706c4a3c10bf6aa6"
    "cs"
  end
  language "de" do
    sha256 "93344364919c7116845c73f539374845b28522bc3b2f706bf48963d90b301a02"
    "de"
  end
  language "en-CA" do
    sha256 "9bb8d20be48280038362554c2aeef914e9fa9c231332d2d3cdcd7e2709622872"
    "en-CA"
  end
  language "en-GB" do
    sha256 "ad9f1e5f526a2fecea0874eae6ad6a64d3f020c7b3bbabb8d57ccc554e88194f"
    "en-GB"
  end
  language "en", default: true do
    sha256 "a3347f686931a4dfc642d1f80c68a728c0e821b30238b82adc92269fe4c2a343"
    "en-US"
  end
  language "es" do
    sha256 "65168ae81f985cbe7b00e771e261a9bf007fca558cc35802b2b9f5a03ac189b8"
    "es-ES"
  end
  language "fr" do
    sha256 "b9bc62f5b7c716907b3977e0e6698e080616ef5710022775f5bde6ec64d8e05b"
    "fr"
  end
  language "it" do
    sha256 "fb230657baa5bab3b527bb32f49e68ffbdffa6cf2177c266b1f5a206cb86a371"
    "it"
  end
  language "nl" do
    sha256 "7ad5fd14d590202ffa200dcbf415d176d18a6a2b88f130817c5a3c77f668b934"
    "nl"
  end
  language "ja" do
    sha256 "5b64bf7b5d15143b66275549742b5d7765a910b23c885b03fe1e246d2077d552"
    "ja-JP-mac"
  end
  language "pt-BR" do
    sha256 "d41ad7a0072a7580b51928d755fd382c057ca6035bfd4a8c40544d384325cf9d"
    "pt-BR"
  end
  language "ko" do
    sha256 "b98381d19c14e112cbfb208d2827813df80e595f1e9d0b1eb02f0dcbd09dc0ba"
    "ko"
  end
  language "ru" do
    sha256 "b20fe1b04af11f82c0463e46b9d9d783b6330232154f97d13125fb7d8d2b9746"
    "ru"
  end
  language "uk" do
    sha256 "b5a9433b04859d924422b90f7ea48da6aae43d3f3e085045e30c70ea3fba8443"
    "uk"
  end
  language "zh-TW" do
    sha256 "641faf57e72f47c281fa3cf69fea62e5628993e31b7ea0832af5c7e74de5ccff"
    "zh-TW"
  end
  language "zh" do
    sha256 "dbcd458be7f99b95f4268cd76f731832d6dfaede448cde10cefd79d30fff7da8"
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
