cask "thunderbird@beta" do
  version "148.0b2"

  language "cs" do
    sha256 "96b079f3765e687374205e5f66f971179e7e0cc1ae740fb26b9e89a3dd32d189"
    "cs"
  end
  language "de" do
    sha256 "830f93f23a5d7e0a1d4717b7875e30182f306ef2180a394d6858cb2c3a4fd893"
    "de"
  end
  language "en-GB" do
    sha256 "e73043cad994ec744138b8b35f49fd7f2d75c7a7b7dd49baa17337fe27e75119"
    "en-GB"
  end
  language "en", default: true do
    sha256 "9d34545f7aabfc3e7e112d1adefb57a987164c1ad286bd58d342a5cd6eaf3d6c"
    "en-US"
  end
  language "fr" do
    sha256 "80702455b2c1e27a0a84c8dfa8d370320f35bd8d03eb8f6d7f4972032df6d6ed"
    "fr"
  end
  language "gl" do
    sha256 "b984d4e9c0962de3146519ad7910baac207b48aaa2424d28f21dbe2f30c4908f"
    "gl"
  end
  language "it" do
    sha256 "fe81a16ebe2a3721a46e60501c6c0be24557c91b1584f9c8425e71e72470de5a"
    "it"
  end
  language "ja" do
    sha256 "0d834a356291d3e35826b117194bde10af8879fe172f61f3356d07eed833be03"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "ee201a4ccdca97c016053dbc379069a0509d615a84ec47334aa457e376f85e9b"
    "nl"
  end
  language "pl" do
    sha256 "2e5162ce5f43eac03e234b6e41dc6ccf0543d2c29b756b9ce2978d2186642c6b"
    "pl"
  end
  language "pt" do
    sha256 "2ca2b3d7629af4ae459cca3a80198928a20101098ec5a8fa4f8aa444c6d4c2b0"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "18f4016d135b67c5753372ce0812d3c6626c1585c6f3e55f36e4ad25cdd39895"
    "pt-BR"
  end
  language "ru" do
    sha256 "a78790d9199ab3615710f97d6c3c4b6e2aa463665f946a5d34130610edbf9589"
    "ru"
  end
  language "uk" do
    sha256 "871071f2483802a06366df628cf3859d7270cace5bcc59802eccda75eb142690"
    "uk"
  end
  language "zh-TW" do
    sha256 "91ec6a0dc8d5a2f755c7e62d388350944de0d289a5e4f186f60aa96787ceee9b"
    "zh-TW"
  end
  language "zh" do
    sha256 "7252a0fd16c973a6199c40cc81ffde522357ef37670287f1cc46fe0e63e0fd95"
    "zh-CN"
  end

  url "https://download-installer.cdn.mozilla.net/pub/thunderbird/releases/#{version}/mac/#{language}/Thunderbird%20#{version}.dmg",
      verified: "download-installer.cdn.mozilla.net/pub/thunderbird/"
  name "Mozilla Thunderbird Beta"
  desc "Customizable email client"
  homepage "https://www.thunderbird.net/#{language}/download/beta/"

  livecheck do
    url "https://product-details.mozilla.org/1.0/thunderbird_versions.json"
    strategy :json do |json|
      json["LATEST_THUNDERBIRD_DEVEL_VERSION"]
    end
  end

  auto_updates true

  app "Thunderbird Beta.app"

  zap trash: [
        "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.thunderbird*.sfl*",
        "~/Library/Caches/Mozilla/updates/Applications/Thunderbird*",
        "~/Library/Caches/Thunderbird",
        "~/Library/Preferences/org.mozilla.thunderbird*.plist",
        "~/Library/Saved Application State/org.mozilla.thunderbird*.savedState",
        "~/Library/Thunderbird",
      ],
      rmdir: "~/Library/Caches/Mozilla"
end
