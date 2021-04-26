cask "mudlet" do
  version "4.11.3"
  sha256 "01fa7bda395bbb2deb6d8bfee627740c21dd4e0e39993895cabb64935d2398f5"

  url "https://www.mudlet.org/wp-content/files/Mudlet-#{version}.dmg"
  name "Mudlet"
  desc "Multi-User Dungeon client"
  homepage "https://www.mudlet.org/"

  livecheck do
    url "https://github.com/Mudlet/Mudlet"
    strategy :git
  end

  depends_on macos: ">= :high_sierra"

  app "Mudlet.app"
end
