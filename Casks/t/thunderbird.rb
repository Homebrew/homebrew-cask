cask "thunderbird" do
  version "115.5.1"

  language "cs" do
    sha256 "b4e77d9353b9b875914b2afa416579ef88edf86708441e8616f21e4823caab97"
    "cs"
  end
  language "de" do
    sha256 "8ba10f1afcff6c8435525e3b82adca0636cf021107daa875fd17982e2900f42f"
    "de"
  end
  language "en-GB" do
    sha256 "c21ed64246a8219e126cc5f0453d33ca365bf278820669c59450008fa3f34a51"
    "en-GB"
  end
  language "en", default: true do
    sha256 "e0f00f161aa316f8a505c16875d0fe6f3979e99b36bf7d028531e0672dea3632"
    "en-US"
  end
  language "fr" do
    sha256 "7dbf22b8fe55d13319528e1b9941a7e9d1252f574478ad9c8e2b212ce60aab07"
    "fr"
  end
  language "gl" do
    sha256 "b55abcb16565a15b2762ce51e879800bb4970f7d78ec84dc9cad8b625f7088fd"
    "gl"
  end
  language "it" do
    sha256 "7f7d70dad446e2b42bf3ff68af3c820e6226ef4c90dfca99127034d86d07b8f7"
    "it"
  end
  language "ja" do
    sha256 "49665b1ba81962e911a21294dca48b1dcb810c057ee446eb11a7f6c56aaa0528"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "1dd1d9a9a1cb65b1ea1a66d3abea991861cc10ac430e6c696c06c72096dbbf8f"
    "nl"
  end
  language "pl" do
    sha256 "9d7983237c1df4308763a38a0dba303c8ead9e3ca2618329273f4f8917042ea5"
    "pl"
  end
  language "pt" do
    sha256 "7b1abed09f2ceb5aa529a26d1dbc4385b04a715218428ae68b6aa9100b6609a6"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "f7346d62c2677de1c6e948c074a5e1b5850a682151811064d34c31d1c31dd9ef"
    "pt-BR"
  end
  language "ru" do
    sha256 "5be6d127773adce54e5fdac883fe87786041a64e5e4b2a9058b851199e475cb1"
    "ru"
  end
  language "uk" do
    sha256 "6e8b7f737409126690ccf230a077f9031563f7ec78c6a66793779e1265ed462b"
    "uk"
  end
  language "zh-TW" do
    sha256 "f7490fe22b75c1788372e2b27448137f23b3e3707a8711b4dd38764c7630e6b5"
    "zh-TW"
  end
  language "zh" do
    sha256 "dc202ae342849f7a8e1aed43458595835006cbe1e8b2bf8866597246d7ea01f5"
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
