cask "firefox@beta" do
  version "150.0b5"

  language "cs" do
    sha256 "ebfe7238b08a873f87cd910ff699948f9975f765717ab32b7aac1755264ab2a3"
    "cs"
  end
  language "de" do
    sha256 "1659631b6f46997e6ce1321d10fdb37846e275b90aa558215b8266381b524d79"
    "de"
  end
  language "en-CA" do
    sha256 "af353382b1759e50bd9d1aae255d779cc34c7a8263ddf7dbcf7c615e12bd2f63"
    "en-CA"
  end
  language "en-GB" do
    sha256 "3f0d1cc3ff2c15a2368cc1493e4c220b56bc397bdb3280f0694fe935fae70ba1"
    "en-GB"
  end
  language "en", default: true do
    sha256 "2cb3e0868179c7c264979c4db1120853da5c3ab3996b2ae4900da8cee4048de6"
    "en-US"
  end
  language "es-AR" do
    sha256 "a4b606597de1362c6566488237e12b631b2b675628fda4a38f5d8714a69c1adc"
    "es-AR"
  end
  language "es-CL" do
    sha256 "da0ab15e31c481c982dfebd8c008c977903baaabfae126bb1bc82b627a9bd070"
    "es-CL"
  end
  language "es-ES" do
    sha256 "6f14fd3320beb3d497135e695a6f30f8cb0023c5c3d1843057fbb111f8227b1e"
    "es-ES"
  end
  language "fi" do
    sha256 "9aa9992d845f0c7ab01d0c7b8e671f741c03b4636b8a9362161282e810062577"
    "fi"
  end
  language "fr" do
    sha256 "30ec3ba1c4301cf3da8ba60adad2c9e468cb3ae336bd377dfa66bd221ec945a5"
    "fr"
  end
  language "gl" do
    sha256 "f4f66bb834ee1f9d34a2bf65b3ef7be65fce39e2ce2b022647c3d2c4ac3daf49"
    "gl"
  end
  language "in" do
    sha256 "77bfd6be87b23d4a2d08656fbed2be499238b202cddcb67f937d5e9455358db0"
    "hi-IN"
  end
  language "it" do
    sha256 "34e2a7c5672611bda1cecb4b10dd1baf2b25f57aa23052b4b9040886c18b9a06"
    "it"
  end
  language "ja" do
    sha256 "2a8af01474503dd38e225620497998ca2ca8f8ccfdc1a6b3d6565ec2607ea239"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "7f5ef83c7e686d572ae5d5e8375ff088555f2f006a550d655ba9d75203b113fe"
    "nl"
  end
  language "pl" do
    sha256 "2b828f3f5461b713b7a85cfd77d943bf52f9b9abdb98d0f99e79140632b5e4be"
    "pl"
  end
  language "pt-BR" do
    sha256 "52639a40e2c4b712d8288f8d4d4ef52b128414cdc90d90b7c6b10ab58f3a141a"
    "pt-BR"
  end
  language "pt" do
    sha256 "8d923119f6d52746470c28dfb8ff107a334d140f27119529109a118cc581ff5f"
    "pt-PT"
  end
  language "ru" do
    sha256 "1a6af805b24a93a817d3f309dcfb1ac5d7593f7886179a9c49918882c64b854a"
    "ru"
  end
  language "uk" do
    sha256 "d225969e31078545eef7bf252e917aaf4046014410194b42758a09085254e1b9"
    "uk"
  end
  language "zh-TW" do
    sha256 "225919ea2f6af9f0c00a844c48fc006d2334155f9e8a806ad3a1c784cec8c035"
    "zh-TW"
  end
  language "zh" do
    sha256 "90469b8919af02ecc84f16442a3a22da02ca1b18a336a4ffe18ccd3778ea0afb"
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
