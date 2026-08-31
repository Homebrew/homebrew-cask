cask "switchy" do
  version "1.1.6,82"
  sha256 "0732cbe26c7caf19facc163e342d8c61fee7e30cfd222bd9197ace6dfab6b2a0"

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
