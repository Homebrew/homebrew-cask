cask "firefox@beta" do
  version "150.0b2"

  language "cs" do
    sha256 "ff0d2372b71490a7042e9a2dbad04d10016e1c335a568f495c8a54f3143e7cd2"
    "cs"
  end
  language "de" do
    sha256 "98e9d0fde08c09b946115dfc3c49f8b80bed1f249ab22451711c7da09d6b7c95"
    "de"
  end
  language "en-CA" do
    sha256 "e88cf525e7cf0aea3570b722d46d4c3b05227d822956286568be990816e8c686"
    "en-CA"
  end
  language "en-GB" do
    sha256 "71cb82084c6760ac362b4ab839dd9fecc3d8244d0acf9bc864b5caac39b6b43e"
    "en-GB"
  end
  language "en", default: true do
    sha256 "530a7a745539cf4280c02763350771ba1668602d1c7ff882481ce4870a65f42e"
    "en-US"
  end
  language "es-AR" do
    sha256 "2e26f3945f1e1598aaa4cfa035b0146681f77f398c294216ec99ecf0e1582259"
    "es-AR"
  end
  language "es-CL" do
    sha256 "f502ad0cefaba8e1e7b6dd3553538f09f0b027e8ac34cb20dfce32e2e4acba5c"
    "es-CL"
  end
  language "es-ES" do
    sha256 "d6d2902bf935dc0a874b1c58b62eb923bff44a509d128eaefbd04c827bb50ea2"
    "es-ES"
  end
  language "fi" do
    sha256 "9ea058265510115348e3287aadf2dbf008f87264da0497d5acb10585b15bec78"
    "fi"
  end
  language "fr" do
    sha256 "8a16a904377cd168d3d7e34478f886b2d954c117a49970c68ab3be01fdd37e13"
    "fr"
  end
  language "gl" do
    sha256 "a2c38b7838b223297be05f7d8d45e143ffa48211d2028b1707bd4a17a432c175"
    "gl"
  end
  language "in" do
    sha256 "5e2d0f0d3f753b8ea8a534e9e755fec889e97e95769d45d2d0777e993a0ecac7"
    "hi-IN"
  end
  language "it" do
    sha256 "e1d8a74172fa244f0bfd256f23c2a65e7ca0656f835692c7e74ca6c836e7b51f"
    "it"
  end
  language "ja" do
    sha256 "aeda5ddfa8c1c6b1a672458e4c798ddee2cf8a3bba5efc7d9ebfd55f33d66978"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "c482509bff4b9b4a36cf53bda5ac7590928df9eb1db60a9db20cfb09e191d8a7"
    "nl"
  end
  language "pl" do
    sha256 "f769785bbeb9afe90fb284fdb6c70973e2a433b65216141edfa9a9dba2490286"
    "pl"
  end
  language "pt-BR" do
    sha256 "591020c7a210d539da8e36505c3d3dd56cab5f2e565f384eb9fb4eac6df1c523"
    "pt-BR"
  end
  language "pt" do
    sha256 "c8b853c43e05c254db69a9ebf87b025ef60715437d72b00138efb0e65a0882bd"
    "pt-PT"
  end
  language "ru" do
    sha256 "7659bc70ae80f9ce946070eaa7dd1eb870fcd7430cf308aa5c78bc66d2f0d3b1"
    "ru"
  end
  language "uk" do
    sha256 "890f298d7af4708544f650ac2def39324872682e9d518c60b57038fd443c587d"
    "uk"
  end
  language "zh-TW" do
    sha256 "7b10639e255eea354cfe0969319f01cfd421e5b4c2005003c3da502ffda1a1ce"
    "zh-TW"
  end
  language "zh" do
    sha256 "b15eb832e0689dedf3f5c82319f2b5f9433bfcb06d6ed3799a814f453e6c7a51"
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
