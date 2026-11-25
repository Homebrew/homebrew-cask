cask "mountmate" do
  version "6.6"
  sha256 "996cc28c1b587a22e8fc2ca3e65e5c4f9549e2d8386d149c2fd7e2c5b64ee0bd"

  url "https://github.com/homielab/mountmate/releases/download/v#{version}/MountMate_#{version}.dmg"
  name "MountMate"
  desc "Menubar app to easily manage external drives"
  homepage "https://homielab.com/en/page/mountmate"

  livecheck do
    url "https://mountmate.homielab.com/appcast.xml"
    strategy :sparkle, &:title
  end

  auto_updates true
  depends_on macos: :ventura

  app "MountMate.app"

  zap trash: [
    "~/Library/Caches/com.homielab.mountmate",
    "~/Library/HTTPStorages/com.homielab.mountmate",
    "~/Library/Preferences/com.homielab.mountmate.plist",
  ]
end
