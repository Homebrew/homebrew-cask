cask "enjoyable" do
  version "1.2"
  sha256 "f455b951ba8cf7c8426756ea6479e2232442508d8190d7ec2675266bf7ff14f6"

  url "https://yukkurigames.com/enjoyable/Enjoyable-#{version}.zip"
  appcast "https://yukkurigames.com/enjoyable/appcast.xml"
  name "Enjoyable"
  homepage "https://yukkurigames.com/enjoyable/"

  app "Enjoyable.app"

  zap trash: "~/Library/Preferences/com.yukkurigames.Enjoyable.plist"
end
