cask "mountmate" do
  version "5.17"
  sha256 "b358793e297d9ed478d3499938fa8a38482c38e04e0d8c981611e55e902a2f67"

  url "https://github.com/homielab/mountmate/releases/download/v#{version}/MountMate_#{version}.dmg",
      verified: "github.com/homielab/mountmate/"
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
