cask "loom" do
  version "0.88.0"
  sha256 "ef3d73ba744e05d6b1036d5075da673b08a9434b84567e5b81d13e208c5d3878"

  url "https://cdn.loom.com/desktop-packages/Loom-#{version}.dmg"
  name "Loom"
  desc "Screen and video recording software"
  homepage "https://www.loom.com/"

  livecheck do
    url "https://s3-us-west-2.amazonaws.com/loom.desktop.packages/loom-inc-production/desktop-packages/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true

  app "Loom.app"
end
