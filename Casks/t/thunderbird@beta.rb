cask "thunderbird@beta" do
  version "154.0b4"

  language "cs" do
    sha256 "f467c91278f43f0311f4dab6deb76deaa40a5a6860eda3b76ee4b08c078d5c31"
    "cs"
  end
  language "de" do
    sha256 "0677760db445f15484604ec78e46f263590a6e216780abd82f90df0aff6695f6"
    "de"
  end
  language "en-GB" do
    sha256 "23cd9ffa445dd4e4b0d45a9677d4d856279c1c8ebc1647e6736708fdbb1f933f"
    "en-GB"
  end
  language "en", default: true do
    sha256 "7811d1969c5619e7f2d6f836beadc62dd0c6d3ab3e47b6f527650fd576cfc7e6"
    "en-US"
  end
  language "fr" do
    sha256 "53286ce35d846cff7aa864886fb621ff332f395c687ec08923e241ee6b193e20"
    "fr"
  end
  language "gl" do
    sha256 "f048c5906bed35ac139fd9a816aa6f664db05bb4259becc9e05480bf2155e68e"
    "gl"
  end
  language "it" do
    sha256 "4970e667241c6f96133a583b908af7d9023e9d2832bd2093530aa6194c7c6fa9"
    "it"
  end
  language "ja" do
    sha256 "ea8fc56f46ea42e1e261f0d69603e261299b15eadfc918576eef9273de4cc45c"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "18178439f20f60630d851b8a0ec31a60039a7c6cae1f7fce818f144483cd6d41"
    "nl"
  end
  language "pl" do
    sha256 "c21105be0b36b53ae205cf17e8212e20c0934f85142c0a5cd4a311e73887035c"
    "pl"
  end
  language "pt" do
    sha256 "1eb9821a9460ff6d1e5835cbf43c3db5f09331cf73602fa936b21c7e9dca01a8"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "b0506aaea3a916dd9182b8294e0f79faf007993f7fea76b589d94e61b7d8eb52"
    "pt-BR"
  end
  language "ru" do
    sha256 "e003ad59f031a4d337b19bc1da5a5ebb4c1321972ccc4e8c5e1896764d6d2d94"
    "ru"
  end
  language "uk" do
    sha256 "116451e3a618272f9250cb41896541b32e3bfd863263284ab69cb90c7565d64d"
    "uk"
  end
  language "zh-TW" do
    sha256 "73689bf6d36d28e01c5113c0ae5dd09609c2e5c2bbd309bbecb061cf13b8d635"
    "zh-TW"
  end
  language "zh" do
    sha256 "61d3b150cba97f920d11f855d52b9b5d6cb90650a0d6feec04ccc787ff7df45b"
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
  depends_on :macos

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
