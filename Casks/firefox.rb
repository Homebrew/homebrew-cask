cask "firefox" do
  version "79.0"

  language "cs" do
    sha256 "864a87a123fb4df65d3d66a853882264dda359e345954db7cdb899df73abdf55"
    "cs"
  end
  language "de" do
    sha256 "37197d67cd6a5fec75978a67faa36f0b2c3bb8eb1016a2b7a0f336365ba1c7c4"
    "de"
  end
  language "en-GB" do
    sha256 "2c30907955df849944559b0cd569bcacdaaaa27500ec5d63dcd691d6847b4430"
    "en-GB"
  end
  language "en", default: true do
    sha256 "9d76f62ff32851605cd83d6e91963fe246f674331c87d74dacb6a4d4d75adabe"
    "en-US"
  end
  language "eo" do
    sha256 "4ce6457cf7e5a17b3f01b2871ef59042235cd3f553bc3e262a4d9d523f839350"
    "eo"
  end
  language "es-AR" do
    sha256 "4950b8739bb3a01e46213157da18c37ce484e0ecf90e31f5e14ef2a414a78982"
    "es-AR"
  end
  language "es-CL" do
    sha256 "5c721f0a7a5cf02b2c3607dfc8accfab54ad1b37577fff94bca9e1d47f0741a1"
    "es-CL"
  end
  language "es-ES" do
    sha256 "784c189af3f7b75516d26580b43e7b887fd1f6d0e6086c6e6f0b24cbc34ffbda"
    "es-ES"
  end
  language "fi" do
    sha256 "251f4a8601b69af9ada5c3aa5e7dc61c13736a1c1b6f61e572cc0933d31eb6ab"
    "fi"
  end
  language "fr" do
    sha256 "79fd7829b763c32a33b7b9eba34356d0389aaa04a0fd9cea8eaa98aa310fdaa0"
    "fr"
  end
  language "gl" do
    sha256 "1d5ea77b1fd3c3c12950e220109fbb25c9f19fe29cbbdcb374e1f83111afc0ab"
    "gl"
  end
  language "in" do
    sha256 "b6a4d57a07a84fe96a78ca67bc65fec511671e79a43b0c21ffee67e0fa26b7ae"
    "hi-IN"
  end
  language "it" do
    sha256 "25fe18416be0fcf8dee4bd61071d5f60a8e8ab82a9659f56656efc57da9e1858"
    "it"
  end
  language "ja" do
    sha256 "57d15233121b91abc871e196c819853ebddc167f66412ee08b3f9c0d370b69d4"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "ff711ecc6a6c40f3bdda3c333342fd83348560a7486af7e1c64685565989efec"
    "ko"
  end
  language "nl" do
    sha256 "c71f8afd26182a082b481aea34531ad4367f6748ecb2c2db21344e305a1dd588"
    "nl"
  end
  language "pl" do
    sha256 "1d3372cad706af2ae9e5ac17e27f8b30261407523b09b971d1ab34a17c888239"
    "pl"
  end
  language "pt-BR" do
    sha256 "6d287674e63d65032aa56ce9673dd382bc42aae8a25ab25aefd1ee9f2226f38e"
    "pt-BR"
  end
  language "pt" do
    sha256 "f59fefc8083afa94899becf0286429844fd205111bb006d17a7884cb2cd635fb"
    "pt-PT"
  end
  language "ru" do
    sha256 "038af98ae5510537d78b3cd11e61f989697be7a0321888571cb67fdde67163e4"
    "ru"
  end
  language "tr" do
    sha256 "83d4b080ccf8e78b5b165bf42b999d104a17b04779acd97080d9723241bf6de6"
    "tr"
  end
  language "uk" do
    sha256 "ad79be79c68f6f982b4571dc3e42d069990b55a745224575a1ff681907b2c155"
    "uk"
  end
  language "zh-TW" do
    sha256 "dd4b3dc071d62f4350d922d0899418785fe5ab3fc266da92964e9f5f92216ec4"
    "zh-TW"
  end
  language "zh" do
    sha256 "582f070d2fb7afea223d094a7b245a5e730271ba7b47091ccefd7fdcfe1afe46"
    "zh-CN"
  end

  # download-installer.cdn.mozilla.net/pub/firefox/releases/ was verified as official when first introduced to the cask
  url "https://download-installer.cdn.mozilla.net/pub/firefox/releases/#{version}/mac/#{language}/Firefox%20#{version}.dmg"
  appcast "https://www.macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://download.mozilla.org/%3Fproduct=firefox-latest-ssl%26os=osx"
  name "Mozilla Firefox"
  homepage "https://www.mozilla.org/firefox/"

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
    "~/Library/Caches/Firefox",
    "~/Library/Caches/Mozilla/updates/Applications/Firefox",
    "~/Library/Preferences/org.mozilla.firefox.plist",
  ],
      rmdir: [
        "~/Library/Application Support/Mozilla", #  May also contain non-Firefox data
        "~/Library/Caches/Mozilla/updates/Applications",
        "~/Library/Caches/Mozilla/updates",
        "~/Library/Caches/Mozilla",
      ]
end
