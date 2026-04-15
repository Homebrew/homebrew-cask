cask "thunderbird@beta" do
  version "150.0b5"

  language "cs" do
    sha256 "c585a01e265480b5850a9cb9278a6a5e644d382f80b2a6c7fff2e0944001fbc7"
    "cs"
  end
  language "de" do
    sha256 "d98dc0c25fcd30700f30ed5e658e29510e0fbd1cebb3b53932d68a94973af6a9"
    "de"
  end
  language "en-GB" do
    sha256 "6de367b1b7a5b248f86492c4a56db05f2fa084e19e86b2a159a733ed20a7a333"
    "en-GB"
  end
  language "en", default: true do
    sha256 "27af5ff93705e0ebfe19e888303f34615d3660398f02f60d90aa89395cc7caaf"
    "en-US"
  end
  language "fr" do
    sha256 "ede139ceaf9868db143d3f40340e2270be0c48418db2afff69ef23ec80807545"
    "fr"
  end
  language "gl" do
    sha256 "1d0dc246629c01296ac8f38da382e0d3fb74ab7b597f5b4712e9b252df2a36b8"
    "gl"
  end
  language "it" do
    sha256 "f059114d8e86b6908feb4aaba6740e4dc47293365ddf47c306778606b5eb17a9"
    "it"
  end
  language "ja" do
    sha256 "06c2bd5ba6a285e1d6e3e576674901cd7ea5d88fe3bb64db034492f77571ef76"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "6082dd0ab3137f036541eef4c2504009c228bfc643eab9a8a8d0e931e880bf21"
    "nl"
  end
  language "pl" do
    sha256 "ebe1ffd04223548d9b8a0d4948934c5cd7ad98088c6de493c48672aa76319f2a"
    "pl"
  end
  language "pt" do
    sha256 "59a510565e6a38531d4869a8409c4c873da796a3693178ec5401e6880567022d"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "28f90c7617e7ba6e2194ded971aa99865889814256b92c0d9c4c6ef2993ff29c"
    "pt-BR"
  end
  language "ru" do
    sha256 "3fbf1c7133c180161aab1095c095f2da696c8c144fccbeb9945c50a1584c6a2b"
    "ru"
  end
  language "uk" do
    sha256 "2be7a257da19483d8a5d084567547655fe00fd88ec0ce4b5bb808149613c1d26"
    "uk"
  end
  language "zh-TW" do
    sha256 "89394a143e354947cad63ce5303a434235a196d81b25076648c506f0a5d853ce"
    "zh-TW"
  end
  language "zh" do
    sha256 "d09dcb445b282c7d69c25a5d2145498fa5da74d46aac00244f9d0ca3f391133c"
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
