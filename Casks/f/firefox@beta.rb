cask "firefox@beta" do
  version "147.0b2"

  language "cs" do
    sha256 "f08b1b80c32ace8b46b147cc11d7f8393351fef7197a247570d1124ded2a66d8"
    "cs"
  end
  language "de" do
    sha256 "900e7a44b2874f43ca476ac8bc1f5a68b0fcf4a6277dd2ff05bd46f981b9f6b0"
    "de"
  end
  language "en-CA" do
    sha256 "4fd735f385fc2e5acb4ee0134a27475f9cf6f7936e182cf6ae5a585fccf9153d"
    "en-CA"
  end
  language "en-GB" do
    sha256 "a091eca6ba7a20c474ab4efda27aa7ff9aea4b696068c036d4bbe6cba2d67f67"
    "en-GB"
  end
  language "en", default: true do
    sha256 "11cdb1878d4228221b8038786c39fea5d8e3b14894ca537ddfd04bd7ba144556"
    "en-US"
  end
  language "es-AR" do
    sha256 "bbcdfca68b730f65c766098e4fc9f1e24d08f00a52112b5b9af0de9402d4c935"
    "es-AR"
  end
  language "es-CL" do
    sha256 "24cd247e88a6c9219ddbb3465ec17db4aba7bd3b1c42ab4286790a913c705216"
    "es-CL"
  end
  language "es-ES" do
    sha256 "10e3aa3de63efee437f17b1b7c9d9ce3de67a02179f8df800005b1f5d5423323"
    "es-ES"
  end
  language "fi" do
    sha256 "8b85d04bedcf1475539305705e52634ddd6c9cd9437d414ce8fdc06a47d6d1a1"
    "fi"
  end
  language "fr" do
    sha256 "44f67ab2d36dff403c20e04a8c4d367c0f119d2f3d1b1c250a6787ee040fe772"
    "fr"
  end
  language "gl" do
    sha256 "4a6edb5b3296600a6443a5f2f30bb22f84a78f46c1c724d7bc18668ec11e1e03"
    "gl"
  end
  language "in" do
    sha256 "1f733f388cd1e42b4bc3ad8fd1e574cc6b9ac137455d7886dd5646cf8a99c0a1"
    "hi-IN"
  end
  language "it" do
    sha256 "4a285cd22555d91b419b3605cdabce990d08b6c89fd9da2f8344aae51913f932"
    "it"
  end
  language "ja" do
    sha256 "571866023689f8de833663e7bf7cca06bfa6f6b1893a7ac9d8a65375ffe1d236"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "4d2c4cb9aa686d07a60d2b2cad4f86fe2011f94836071c3b7053c92fcfee5e9e"
    "nl"
  end
  language "pl" do
    sha256 "e2065d82f882f52643ce30acae01666e71d33e66de8588c6f5cc5e2aa42d7509"
    "pl"
  end
  language "pt-BR" do
    sha256 "0c7a6c21670a5550fd19ec7379f2cb5f95ac916f8537ccce5eff86f60de9d4c7"
    "pt-BR"
  end
  language "pt" do
    sha256 "c107a7038bffc8045a07d255cc619ebeaddfe3b8ca6a080ad36a2a96e7812c97"
    "pt-PT"
  end
  language "ru" do
    sha256 "f05532efd3d842598e48bb4e71bf9724748483333f44b5924086be52d01d5a40"
    "ru"
  end
  language "uk" do
    sha256 "06f1bdcf5a157e294da5689fa73f6197565b183167469eec414daa28a893cfa1"
    "uk"
  end
  language "zh-TW" do
    sha256 "30c4c0f8951442ad8a5fe9d39df1ec5bdf81466087437825eb972b1699ec677e"
    "zh-TW"
  end
  language "zh" do
    sha256 "f186cc494b13188eafd4b4422b54249a5ee049bfaf9b9318293e652e4df9474c"
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
