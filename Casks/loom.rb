cask "loom" do
  version "0.62.0"
  sha256 "a74d9e0210b6aa0e80c1109f282e831865b1fbda9a2ee35dabd0c61c28a768dc"

  url "https://cdn.loom.com/desktop-packages/Loom-#{version}.dmg"
  appcast "https://s3-us-west-2.amazonaws.com/loom.desktop.packages/loom-inc-production/desktop-packages/latest-mac.yml"
  name "Loom"
  desc "Screen and video recording software"
  homepage "https://www.loom.com/"

  auto_updates true

  app "Loom.app"
end
