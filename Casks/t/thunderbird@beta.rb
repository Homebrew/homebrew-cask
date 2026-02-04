cask "thunderbird@beta" do
  version "148.0b4"

  language "cs" do
    sha256 "1ad4ab4d47f0add58cd702d9484eb793292943d856ddf6e14d76210aec3ee2bb"
    "cs"
  end
  language "de" do
    sha256 "f8947643eb59481a59cffaf52c522bf3d5b49e143fdb4ba9a25e57c770cf25c9"
    "de"
  end
  language "en-GB" do
    sha256 "a6525c03da2df0119e2b05006de4682c2cc52031b1718ab3490983a8b60d8a40"
    "en-GB"
  end
  language "en", default: true do
    sha256 "ea6b96852ec8601af7d3dcdc329dd347510a1f68f643fccea1a4fedf4d8cc95a"
    "en-US"
  end
  language "fr" do
    sha256 "05dbea3f3be358e553a79275f236d580765bc269993b78f3e334ee659f916934"
    "fr"
  end
  language "gl" do
    sha256 "e131a7412a97759bb2ad6afcdda9793e51b8839a25a124bb72a6a8b1588a45a3"
    "gl"
  end
  language "it" do
    sha256 "e4cc79ec01c23a70dcc743206f0389f5b62729f197ffc00a02583f535c5c9426"
    "it"
  end
  language "ja" do
    sha256 "ca52ddde613ccc7c0486de2d32aed443704fdbcd0de0aae493fffcd91794bc13"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "2f52e479274c6888044e5cc55672e4e725f949177fbbbc5363b12b146e6ce198"
    "nl"
  end
  language "pl" do
    sha256 "a7abdd8eccf983bf6a57eebaaf73a148ec1e22b6d2f447840b4320b2446c2d87"
    "pl"
  end
  language "pt" do
    sha256 "a7832766b514580356ce8a161b14561699649424b1b4eebbf4e4a43652c4c084"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "55478082a97b52ec9edd0d77c34fced9df53330caeb83d439e312acdcf5d7927"
    "pt-BR"
  end
  language "ru" do
    sha256 "6b4a8aab844474f8f72424430f1bdf10fbdaa6e87e3081dd21b7defeb4bb852c"
    "ru"
  end
  language "uk" do
    sha256 "0300a712ddf7719083297b009a8f8693dad706e1d754705e970018da3b81a227"
    "uk"
  end
  language "zh-TW" do
    sha256 "24574c14cf29cda064ea6501fbffbf4afbc240919eb13d8a8c0ceba870a810b8"
    "zh-TW"
  end
  language "zh" do
    sha256 "7c3f82af7eabe6225f537c74f505be44d8c52b1adcc9756b0e6decb2f99e6ebe"
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
