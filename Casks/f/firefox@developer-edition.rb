cask "firefox@developer-edition" do
  version "138.0b1"

  language "ca" do
    sha256 "afb0b5c92bbe4bd11371b94a0fd10e46082aefd8f053c0a83ad6c76d50b1e012"
    "ca"
  end
  language "cs" do
    sha256 "23a52d84d531d15fdb606ddd7a79f7aea2b437e40c531023113a90a88c89c4cc"
    "cs"
  end
  language "de" do
    sha256 "a81998ca050e2877975cdf9e41a29522905895a384c379937b52fe1a27006fd2"
    "de"
  end
  language "en-CA" do
    sha256 "1335fc9f92dd7f9037388f57c3c2907fe957852ef99d5312a66c970b6be7e1b2"
    "en-CA"
  end
  language "en-GB" do
    sha256 "0274bf8ea77f60df37baa7a2eb968f0ee8cd4658ca5f00de8dc0a04e617b1d81"
    "en-GB"
  end
  language "en", default: true do
    sha256 "44280ba2041b4d83669498d574953f82a1a94f3d737712780ace31305813333b"
    "en-US"
  end
  language "es" do
    sha256 "b962fbdafba2ccd474f11a36b601001956b5e75202cc522d94577b5a35520a95"
    "es-ES"
  end
  language "fr" do
    sha256 "c64433f9ef3d0ef629f2a9ae4149d51cef3560643f65ef0727d67f2fbdbd0cf3"
    "fr"
  end
  language "it" do
    sha256 "e430a23bc64417341edfb51e1bd0f50397c285f6562361a1ed93916111e74acf"
    "it"
  end
  language "nl" do
    sha256 "7f53775f3531c2cfce2fb6057165f877cd5832454bb19ee091ede695f8086ec4"
    "nl"
  end
  language "ja" do
    sha256 "3c3a778e0dc07a6afaeaf277de25fda94f6df3a5a0a2b60f78bc8172bccf8b5c"
    "ja-JP-mac"
  end
  language "pt-BR" do
    sha256 "a80583b9df24eb8adb39aaab4a3b666678c7c84a1b0797d16c82d7d74eed722f"
    "pt-BR"
  end
  language "ko" do
    sha256 "6c2e8f3ceb895eca9e47b51a7b142b4bb39810516dd6011fb6ebab2078ffb381"
    "ko"
  end
  language "ru" do
    sha256 "9b7bf02a7ac796adfb63aff7f61d56c3c327af68a550f7468d9c799c758fa940"
    "ru"
  end
  language "uk" do
    sha256 "8b410a4b20a6092ef811803f0585a96ccb9cfd8f88a1256c488bbe76805ad7ae"
    "uk"
  end
  language "zh-TW" do
    sha256 "a5afd6208e233ff15ed1f832d7c20daab8478ccfdbf689368f50f3fa9e466137"
    "zh-TW"
  end
  language "zh" do
    sha256 "451f96ebb0f103110922ea1420794e95af0ae1abc30113dd5d2e6098a8487dc6"
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
