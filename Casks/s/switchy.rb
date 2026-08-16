cask "switchy" do
  version "1.1.5,81"
  sha256 "7d7c813a7a69e99d06f2f96dd6dcba215d110f10ade7aa95b811828d8644582b"

  url "https://github.com/benhursenabathi/mangobuns/releases/download/switchy-v#{version.csv.first}-build#{version.csv.second}/Switchy-#{version.csv.first}.dmg"
  name "Switchy"
  desc "Switch Magic Keyboard, Trackpad and Mouse between Macs"
  homepage "https://mangobuns.com/switchy/"

  livecheck do
    url "https://mangobuns.com/switchy/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Switchy.app"

  zap trash: [
    "~/Library/HTTPStorages/com.mangobuns.Switchy",
    "~/Library/Preferences/com.mangobuns.Switchy.plist",
  ]
end
