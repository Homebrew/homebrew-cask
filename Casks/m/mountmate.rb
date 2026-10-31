cask "mountmate" do
  version "6.4"
  sha256 "52e24db7595976f9968c464b36b0ace92601f7790ef0cdd22aad57d2b9ad2328"

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
