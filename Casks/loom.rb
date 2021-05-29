cask "loom" do
  version "0.84.0"
  sha256 "4ef3dc2f40038d4a5c02bf36f7b5c3e0e9a1b9e53f1d3530c67dbb6cb677dee4"

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
