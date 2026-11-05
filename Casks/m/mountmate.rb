cask "mountmate" do
  version "6.5"
  sha256 "df780c285523466ba1d58c3e3e4b7d19fc59017f2a0e8d4354bb833eb5a13bb7"

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
