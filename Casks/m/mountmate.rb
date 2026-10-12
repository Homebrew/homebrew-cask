cask "mountmate" do
  version "6.0"
  sha256 "064d9e245c6f636e9e5263d7f5fc6a333230530a0681a6b0721e80c3c007f75f"

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

  zap trash: "~/Library/Preferences/com.homielab.mountmate.plist"
end
