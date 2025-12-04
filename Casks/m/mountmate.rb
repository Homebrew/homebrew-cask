cask "mountmate" do
  version "5.0"
  sha256 "217a0b1786265b42d0b1527227ffd0340a579156e6d0f7e403a1d43a2f6ffabc"

  url "https://github.com/homielab/mountmate/releases/download/v#{version}/MountMate_#{version}.dmg",
      verified: "github.com/homielab/mountmate/"
  name "MountMate"
  desc "Menubar app to easily manage external drives"
  homepage "https://homielab.com/page/mountmate"

  livecheck do
    url "https://homielab.github.io/mountmate/appcast.xml"
    strategy :sparkle, &:title
  end

  auto_updates true
  depends_on macos: ">= :ventura"

  app "MountMate.app"

  zap trash: "~/Library/Preferences/com.homielab.mountmate.plist"
end
