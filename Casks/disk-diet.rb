cask "disk-diet" do
  version "5.5,1474"
  sha256 "a7f1a0c2c3b7186dc9844a60e5dded90aca4e758f7502c174452bf90cabaf67e"

  url "https://www.tunabellysoftware.com/resources/Disk%20Diet%20#{version.before_comma}.dmg"
  name "Disk Diet"
  desc "Free up disk space"
  homepage "https://www.tunabellysoftware.com/disk_diet/"

  livecheck do
    url "https://www.tunabellysoftware.com/resources/sparkle/diskdiet.xml"
    strategy :sparkle
  end

  app "Disk Diet.app"
end
