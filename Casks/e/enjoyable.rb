cask "enjoyable" do
  version "1.2"
  sha256 "f455b951ba8cf7c8426756ea6479e2232442508d8190d7ec2675266bf7ff14f6"

  url "https://yukkurigames.com/enjoyable/Enjoyable-#{version}.zip"
  name "Enjoyable"
  desc "Use your gamepad or joystick like a mouse and keyboard"
  homepage "https://yukkurigames.com/enjoyable/"

  livecheck do
    url "https://yukkurigames.com/enjoyable/appcast.xml"
    strategy :sparkle, &:short_version
  end

  app "Enjoyable.app"

  zap trash: "~/Library/Preferences/com.yukkurigames.Enjoyable.plist"

  caveats do
    requires_rosetta
  end
end
