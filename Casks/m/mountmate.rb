cask "mountmate" do
  version "4.4"
  sha256 "a9b62afc15911bf3e72ac86a1df0ba8f6df5df835cf59a91d1b193476643dd06"

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
