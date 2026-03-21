cask "mountmate" do
  version "5.3"
  sha256 "5c563a80d73b835c1745e5a92db8bb38b5581c48094b4889630747cf6d8d6ad0"

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
