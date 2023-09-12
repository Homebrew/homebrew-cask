cask "thunderbird" do
  version "115.2.2"

  language "cs" do
    sha256 "8db01b0b67c2909dc20ab18fcda499326e398654000942d61857e90299b2f68e"
    "cs"
  end
  language "de" do
    sha256 "50d17a5b81a6081ef5964a272776abcee81af2d4275b392af207ff310925fb41"
    "de"
  end
  language "en-GB" do
    sha256 "bc343898a64323a33c2ce47c2ed31061240871e6ef84231cbda5429c28cf25b4"
    "en-GB"
  end
  language "en", default: true do
    sha256 "3811c82037545c4a075a13e20e6f10010c40b4f524e310801ed37a71061fdc0f"
    "en-US"
  end
  language "fr" do
    sha256 "d3f38751e8c76d98f8fa294bd4b766903847d24ea2f22428001d6a48f0ed75d2"
    "fr"
  end
  language "gl" do
    sha256 "172dc7737d116094e6b3fb4d9d297653911b017e8375221a0d0c57d345834c7d"
    "gl"
  end
  language "it" do
    sha256 "60617373cd167cd9d1c9b0f15f5cfa8792e4c2797f47c944a05b7b003ee5bfaf"
    "it"
  end
  language "ja" do
    sha256 "230903f399f6bea38f1ef79c0da955b0b8ff8e317d98bb06b0d90189702e0ef4"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "12c0ab6cbc25c3b12c478d2a114af01860eea9859d658d625feb4f7609d3ec86"
    "nl"
  end
  language "pl" do
    sha256 "4ac8cdc1158cb3686a2dc654ba117839de7968a418492232c4292f842248d2f3"
    "pl"
  end
  language "pt" do
    sha256 "8941015ad9eb018af99c790fcd9a5898718351802c8f30410872d6b50e61b328"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "0ee849fadc6f6277bc0b817819c1ad8068c3c95d6f5798b06c322ca453c352d6"
    "pt-BR"
  end
  language "ru" do
    sha256 "c07596ed157ef76b44d304d716483e1a7c289a76cb32d199cbc91fba8fec6a78"
    "ru"
  end
  language "uk" do
    sha256 "904b9edf769f87de831c96be1bf9192e36d335cfd37742aeeb3447e24ffa76ec"
    "uk"
  end
  language "zh-TW" do
    sha256 "4fe6fe2f2f65a5b6dc3dabc0fcd7fc377936d8e35c52b8a7a6e58a9bb674f6e0"
    "zh-TW"
  end
  language "zh" do
    sha256 "b3ff752032076eec7ec81d963f337d96bc838e616231cea483aa2c6a2c136d4f"
    "zh-CN"
  end

  url "https://download-installer.cdn.mozilla.net/pub/thunderbird/releases/#{version}/mac/#{language}/Thunderbird%20#{version}.dmg",
      verified: "download-installer.cdn.mozilla.net/pub/thunderbird/"
  name "Mozilla Thunderbird"
  desc "Customizable email client"
  homepage "https://www.thunderbird.net/"

  livecheck do
    url :homepage
    regex(/href=.*?thunderbird[._-]v?(\d+(?:\.\d+)+)[._-]SSL/i)
  end

  auto_updates true
  conflicts_with cask: "homebrew/cask-versions/thunderbird-beta"
  depends_on macos: ">= :sierra"

  app "Thunderbird.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.thunderbird.sfl*",
    "~/Library/Caches/Thunderbird",
    "~/Library/Preferences/org.mozilla.thunderbird.plist",
    "~/Library/Saved Application State/org.mozilla.thunderbird.savedState",
    "~/Library/Thunderbird",
  ]
end
