cask "thunderbird" do
  version "115.3.0"

  language "cs" do
    sha256 "016af7c3da56ea789a5baef0a7afc5c47674605507c7902a12b86d1cdf221176"
    "cs"
  end
  language "de" do
    sha256 "6457f9d51f242018f3c1aa85f3090da37f13eb7c541cb1c9edd5aa33be081d47"
    "de"
  end
  language "en-GB" do
    sha256 "45b1ec60490e123ceeabe3955b5e3ddbd5f63393758acd89bd7713f19748c7b1"
    "en-GB"
  end
  language "en", default: true do
    sha256 "9c8778cf66ed5981c4610993b9d011cc0107634354d202b254282e12acc52a0e"
    "en-US"
  end
  language "fr" do
    sha256 "6b000b8631667fec1d30031e5c9895b9afe222720a19b2d09e7e84187cd81dcb"
    "fr"
  end
  language "gl" do
    sha256 "a3a4242bfd36994989c481476af5a7ea0120f04e36631f091a55d3a23042ba41"
    "gl"
  end
  language "it" do
    sha256 "5e519b1683d49917d6bdb38e2568c5141caa7c3f6064b420dd3b6f174138b5e3"
    "it"
  end
  language "ja" do
    sha256 "7d472f311474037fe34d538a9252ecce68700c3882a30bb82c8af6274b3fef76"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "dce0072dfa7395a8ca34723555453ae7adddc4f72a4736e2b680f5090acc1a59"
    "nl"
  end
  language "pl" do
    sha256 "f96b8fcd7c6d54d19c610de9b6403ac349f7c095f4d0b6fe38be14987dc4e448"
    "pl"
  end
  language "pt" do
    sha256 "7ebb7af8dedc3e9b9ef44b7c6bdf91c0600bbdd159b11d13b0e60f106dba492a"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "a1bc91612bb3955a10dc7436894672b9a84c19e3dcbea997f70d527b8ee6694d"
    "pt-BR"
  end
  language "ru" do
    sha256 "0d2fc4b2b11ef392bdee1b951460d913d81266aff280c01e39dd574d8802de5a"
    "ru"
  end
  language "uk" do
    sha256 "40ded6143eec1fa3eeba2ee07514a733b0da3749a78a1fc1af74639274d9f336"
    "uk"
  end
  language "zh-TW" do
    sha256 "be818b3538f8c4e3b2bfad432885c2c4c2c8305c9d59de04ca8095f9991fe6d1"
    "zh-TW"
  end
  language "zh" do
    sha256 "38b5114f335595854cb979189fd194cf766cec8b5e81ee98353a80bb2a28cefd"
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
