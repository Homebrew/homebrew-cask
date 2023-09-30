cask "thunderbird" do
  version "115.3.1"

  language "cs" do
    sha256 "64cfefcad9c000c8a2a48146d54a34e027b28d7114f5d9af37ad7d2de6549cae"
    "cs"
  end
  language "de" do
    sha256 "83b1fc63b8cd16706132cd6b0692fe88a156796832c928bdfe4047d4b56ba676"
    "de"
  end
  language "en-GB" do
    sha256 "fa98f7721743476432e37e285a618100767e6b30c7b946a0571a5079f13b3ebd"
    "en-GB"
  end
  language "en", default: true do
    sha256 "f4ab7339dec6dfe103cd99bc7c43195b8bd5d9c86527f0fc0eea0e9d10654344"
    "en-US"
  end
  language "fr" do
    sha256 "5dad5e2f3d84b5a205e648a8ab171e87486c743208115f105ab34d28050e9864"
    "fr"
  end
  language "gl" do
    sha256 "ffe2afe1978b5bf7942e8d9bc130c913bcf1f1001b6ffb3d60b105fb8aa21d23"
    "gl"
  end
  language "it" do
    sha256 "bb4a9f4bf4bf7ce8915a58988131321e5acfd0dc54622e5902fc21f4bac97c1c"
    "it"
  end
  language "ja" do
    sha256 "7e5b3075f99a2f4baf912c4aa3834044de67448fc42254e512b226f0b05a55af"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "056e1bdc77f5d5b125fbe94a3a70fcc945323d90ae657832ddb2422c0e4b77f7"
    "nl"
  end
  language "pl" do
    sha256 "8962eb8b5cb36b64482f34cd8466ebaca00b4b95f5f0d345062f78abadce70d5"
    "pl"
  end
  language "pt" do
    sha256 "825a61efb1b242fc2e3f316c20440c5afd1d279f252232c68f65754770ab011e"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "ae1d513597c6bb1b9ed77e72dac873c7c34000698c3e193b38c75fa4f39a304f"
    "pt-BR"
  end
  language "ru" do
    sha256 "920a01b82de79d7f6c8644bec2a36fac8c75bc2bedc53fe81ca5ee928910d211"
    "ru"
  end
  language "uk" do
    sha256 "c699e511fb3b7958347df416b9d9d4314418d31efe4d02705472da1724bd51cb"
    "uk"
  end
  language "zh-TW" do
    sha256 "c0e154272217240039b8fecee28765ef06afd1a968804e56b6d04a95d7e7bcf8"
    "zh-TW"
  end
  language "zh" do
    sha256 "3bac6fb37c8fda9d8515f8939858725f29d5e05a71f5dfb3e75044e4f29ed3f6"
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
