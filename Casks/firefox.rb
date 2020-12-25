cask "firefox" do
  version "84.0.1"

  language "cs" do
    sha256 "845d3870757edf0a85324dc71e9b3d47116a179780036556e7b7df816682108f"
    "cs"
  end
  language "de" do
    sha256 "ba267425dab193d565ab4202e014c083d685b4d6577e93b59578c7d08b48c3fc"
    "de"
  end
  language "en-CA" do
    sha256 "6ef2ecb61b4d1feca105f128d84e6969496c455981a1598f8f666e8ab55af2df"
    "en-CA"
  end
  language "en-GB" do
    sha256 "f7df2e111735f71acd5578756eec8282b56b3e8b22a5e4d65342a82a8bc62c3f"
    "en-GB"
  end
  language "en", default: true do
    sha256 "9e8fc4c8c3e4645424ce1bc2ded1838a0f80d5f620e0ed0033066bf8fd9c3295"
    "en-US"
  end
  language "eo" do
    sha256 "e1e861e075908b91008c4bd7bcaf87d587647c8335a72f2e57c5541de2ec6b46"
    "eo"
  end
  language "es-AR" do
    sha256 "1f134bdbc4086726be53210cc1de0b3cbe319b358dd8f4807c174978883f8649"
    "es-AR"
  end
  language "es-CL" do
    sha256 "b8e12a61b22a27a12f4a97aae50c3d887dc00460b51fb0aef87a05670222418e"
    "es-CL"
  end
  language "es-ES" do
    sha256 "06d74a29c58a501d4217ac5e9145980228c373090cd8d0e31cf09d9b2f8894dc"
    "es-ES"
  end
  language "fi" do
    sha256 "2e9a40228f9b00d61d72ed9aa10c1b3c9fc1a9ba8ee98482583b9b19a318f17d"
    "fi"
  end
  language "fr" do
    sha256 "508e911078567a399435338071ac8f19c33d1a215ff6a5cc8192b7a9861beb84"
    "fr"
  end
  language "gl" do
    sha256 "5e0003e5fb460fe83df790baaf1587208f203289f2349af530ddadd5f5d8d016"
    "gl"
  end
  language "in" do
    sha256 "65c53fe03c45e6dec20d04ae3f7d73eec53569d7a5b0ebc5a19cdecfecb6898f"
    "hi-IN"
  end
  language "it" do
    sha256 "b358d31205727251745d6e49d78314bb6533e7292fa154bef8a0422f729cc0f1"
    "it"
  end
  language "ja" do
    sha256 "e4cf699cd6cf27322cb41c06c944525542deed790c40eb95fc227627ad5b4a1c"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "6032ae8cb8841439fe91e32d316a30c1028a1fd13f118aa47e9c064d379281d6"
    "ko"
  end
  language "nl" do
    sha256 "2bcddce39b62a3292271b7372b1cbcbad8e1ab9ceba564d2358f974bad7d2304"
    "nl"
  end
  language "pl" do
    sha256 "b0bbee2b2c33aa3bbef0277fff7db6c8d735ab5dd12ad2aa57b03abd9a7755b9"
    "pl"
  end
  language "pt-BR" do
    sha256 "ad6720f8e5da310efa38602379456d02165146440555278fea3b46b0b5f7e749"
    "pt-BR"
  end
  language "pt" do
    sha256 "6d32ff32d2f2e76a751c827d9f284ef38a268b59975d6f46dda0cbb31247b172"
    "pt-PT"
  end
  language "ru" do
    sha256 "2122d54953b66b2c2ede886e872d6c00dc2530fda4114bef46583f4e9548cc70"
    "ru"
  end
  language "sv" do
    sha256 "4e34d80200415c6da1d151b4ad093535a865c5297eff32dedd6ab178aad26fe8"
    "sv-SE"
  end
  language "tr" do
    sha256 "5db47ba2d6f33696c09b2da1eba2ded12f13942b5d37855fad98811e41621b76"
    "tr"
  end
  language "uk" do
    sha256 "2fd9128bff18ac8cd248a24724f9f0d19f282ed8c9437e154be928cef895a0bb"
    "uk"
  end
  language "zh-TW" do
    sha256 "18195abcc7d728f8cbbc60617ea10b06a8ce60fce1d8ebb8f56c7889ed2765cb"
    "zh-TW"
  end
  language "zh" do
    sha256 "a42d7b851976f212fa8927c6f8719079ef4e622f23d7afd1853c7a1f0c164413"
    "zh-CN"
  end

  url "https://download-installer.cdn.mozilla.net/pub/firefox/releases/#{version}/mac/#{language}/Firefox%20#{version}.dmg",
      verified: "download-installer.cdn.mozilla.net/pub/firefox/releases/"
  name "Mozilla Firefox"
  desc "Web browser"
  homepage "https://www.mozilla.org/firefox/"

  livecheck do
    url "https://download.mozilla.org/?product=firefox-latest-ssl&os=osx"
    strategy :header_match
  end

  auto_updates true
  conflicts_with cask: [
    "firefox-beta",
    "firefox-esr",
  ]
  depends_on macos: ">= :sierra"

  app "Firefox.app"

  zap trash: [
    "/Library/Logs/DiagnosticReports/firefox_*",
    "~/Library/Application Support/Firefox",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.firefox.sfl*",
    "~/Library/Application Support/CrashReporter/firefox_*",
    "~/Library/Caches/Firefox",
    "~/Library/Caches/Mozilla/updates/Applications/Firefox",
    "~/Library/Caches/org.mozilla.firefox",
    "~/Library/Caches/org.mozilla.crashreporter",
    "~/Library/Preferences/org.mozilla.firefox.plist",
    "~/Library/Preferences/org.mozilla.crashreporter.plist",
    "~/Library/Saved Application State/org.mozilla.firefox.savedState",
    "~/Library/WebKit/org.mozilla.firefox",
  ],
      rmdir: [
        "~/Library/Application Support/Mozilla", #  May also contain non-Firefox data
        "~/Library/Caches/Mozilla/updates/Applications",
        "~/Library/Caches/Mozilla/updates",
        "~/Library/Caches/Mozilla",
      ]
end
