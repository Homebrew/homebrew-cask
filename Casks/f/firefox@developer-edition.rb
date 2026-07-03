cask "firefox@developer-edition" do
  version "153.0b7"

  language "ca" do
    sha256 "307762d5137090997c09b4e9ff4e799c322b380721403e1115b19e1dac2da792"
    "ca"
  end
  language "cs" do
    sha256 "69fb4bbbb32186a424012626c7979d5b3459a6ae9197d76bd8d4155f159eefb4"
    "cs"
  end
  language "de" do
    sha256 "6a4195a2e57406e44e418c77fa52fea4a18862445bd732e34c5f92486813e54d"
    "de"
  end
  language "en-CA" do
    sha256 "e241769c5e74bde49228884be373d4df77008cc28d378fceacf2917b84e6dd2e"
    "en-CA"
  end
  language "en-GB" do
    sha256 "bdc62ac92d3948162cb5fa2660614c861dcf96e8dace00ae16b0aa99be598102"
    "en-GB"
  end
  language "en", default: true do
    sha256 "ef708a75a5b8b38f5893a4a2960c89dfd40e7fb4fc22f63b5a621444efa524fd"
    "en-US"
  end
  language "es" do
    sha256 "77ec4dcb2589d843b9feafe309ecbcea1d99605773fff637a8276112d86ea793"
    "es-ES"
  end
  language "fr" do
    sha256 "df023c5d6d96e7d6210c25440f0151e3c967aedf6193dc67a9058d773edcedd1"
    "fr"
  end
  language "it" do
    sha256 "09b7cd5f80ecbf0ac12a5d44a67df935f327112d3128f7f61206b0cc8c00ad64"
    "it"
  end
  language "ja" do
    sha256 "f6edd03cf59af90dea87003583e1fb05061f4258c814bbc61620818371cabc6f"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "8b5b291768485ef2b0b4f70e960422426d1494328d5f43498844898fe34794c5"
    "ko"
  end
  language "nl" do
    sha256 "559b2fc7a20e737668d0005d9353118462f80e1874ce6b20d254b8c3ffc58874"
    "nl"
  end
  language "pt-BR" do
    sha256 "64af7e64b1e0fa6f268e187472286c5d7239146abeb78403f568280d99b1df95"
    "pt-BR"
  end
  language "ru" do
    sha256 "05b7cf7e3a84e7cc1d16c9b9ce9e814e70fd2014deb0a66d962ceecbf2a09ae8"
    "ru"
  end
  language "uk" do
    sha256 "2aecf761f7605df52693bf6cc66bd640e38b73329d2e53b22b65ab1dfa861d81"
    "uk"
  end
  language "zh-TW" do
    sha256 "bbb82e50b56f2f6b3d4ff8266b4daa2a81182438621ce9ff3bd22b0ef356eb7f"
    "zh-TW"
  end
  language "zh" do
    sha256 "f47ae492954b934db8bef01e6d113a2e85d79418f21653092f3f28906ebac791"
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
  depends_on :macos

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
