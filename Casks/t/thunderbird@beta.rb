cask "thunderbird@beta" do
  version "159.0b1"

  language "cs" do
    sha256 "b7d1731bb35c48f72b87f0a09a40501fa55ed1825e18c750130cc40258541d6f"
    "cs"
  end
  language "de" do
    sha256 "8d24b02b24a27b2ba7e8eef85457a2749272eae877a164ec58784c9ebba623b3"
    "de"
  end
  language "en-GB" do
    sha256 "079776b17a89065deef00ba5ad9cb19f0880b9305a9c54b9c806050335eb6504"
    "en-GB"
  end
  language "en", default: true do
    sha256 "07df6ebe9f24d793b8aacaaef2b8748f8556c410364899367af662ebbe1ff9bb"
    "en-US"
  end
  language "fr" do
    sha256 "4e244ba53d6d578db03950c835240f1a098f31b7d73efe7841a4dd23634dfa4e"
    "fr"
  end
  language "gl" do
    sha256 "f3be969ed7358a0782e3f617b975961df269f6807c9cdf62531fadcdedce6126"
    "gl"
  end
  language "it" do
    sha256 "f9a39f2927fbdb303b7607380b6d57373231a49bac61793625fd5ce2d1066fd9"
    "it"
  end
  language "ja" do
    sha256 "ce12b4618f7acb4bf4e30835d7f0175227d3d3fab5b57bef7f774c396899ff90"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "128586a49fa68af8e49d744e5dfdfbd21214edfb3d87930656f7d44bbf1d0b82"
    "nl"
  end
  language "pl" do
    sha256 "bd5c70bb548fe0c452e32798d775f2702898c71a65d1fafe2812073e51f96321"
    "pl"
  end
  language "pt" do
    sha256 "435f17db215f1517ed3236a94cb2ca2754919fe07c2b3e88440885f497aa9e37"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "d3acaddfd24614e1132009039a7cb9236db27f6e746995d8a6fec246973f82af"
    "pt-BR"
  end
  language "ru" do
    sha256 "74ac3a67af20e52845b2f9d9bd2bf82da0958835e5550dff630fb0dbbfb8bf56"
    "ru"
  end
  language "uk" do
    sha256 "02aee583c653c11d68b1bfb0342ebf3ee04d54013d5513746f029bccd18210b0"
    "uk"
  end
  language "zh-TW" do
    sha256 "401b128eba8c50a5a066cf19ea94b826d7d8915d6fde93e84de99caaf79b0bfb"
    "zh-TW"
  end
  language "zh" do
    sha256 "15a636292f9130e93d0beeb92bbc24bf6850e921fce6f3274adfc60a789108e7"
    "zh-CN"
  end

  url "https://download-installer.cdn.mozilla.net/pub/thunderbird/releases/#{version}/mac/#{language}/Thunderbird%20#{version}.dmg"
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

  # Sometimes different languages can serve the latest beta version as Thunderbird Daily.app
  rename "Thunderbird*.app", "Thunderbird Beta.app"

  app "Thunderbird Beta.app"

  uninstall quit: "org.mozilla.thunderbirdbeta"

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
