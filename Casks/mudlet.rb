cask "mudlet" do
  version "4.13.0"
  sha256 "517fc5ff813fcb1845e8a53e300c49a715cd06522a85f7c19f89dba378633a35"

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
